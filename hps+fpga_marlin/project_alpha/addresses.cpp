#include "addresses.h"
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include "sys/mman.h"
#include "hwlib.h"
#include "socal/socal.h"
#include "socal/hps.h"
#include "socal/alt_gpio.h"
#include "hps_0.h"

using namespace std;

addresses::addresses(){};

int addresses::init()
{

	if((fd = open( "/dev/mem", (O_RDWR | O_SYNC))) == -1){
		printf("ERROR: could not open \"/dev/mem\"...\n");
		return 1;
	}

	virtual_base = mmap(NULL, HW_REGS_SPAN, (PROT_READ | PROT_WRITE), MAP_SHARED, fd, HW_REGS_BASE);

	if(virtual_base == MAP_FAILED) {
		printf("ERROR: mmap() failed...\n");
		close(fd);
		return 2;
	}

	addr_leds 								= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + LED_PIO_BASE) 						& (unsigned long)(HW_REGS_MASK));
	addr_btns 								= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + BUTTON_PIO_BASE)					& (unsigned long)(HW_REGS_MASK));
	addr_fans 								= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + FANS_BASE) 								& (unsigned long)(HW_REGS_MASK));
	addr_flags_out 					= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + FLAGS_IN_BASE) 						& (unsigned long)(HW_REGS_MASK));
	addr_flags_in 						= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + FLAGS_OUT_BASE) 					& (unsigned long)(HW_REGS_MASK));
	addr_configuration_1 		= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + CONFIGURATION_1_BASE) 		& (unsigned long)(HW_REGS_MASK));
	addr_endstops 						= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + ENDSTOPS_BASE) 						& (unsigned long)(HW_REGS_MASK));
	addr_temp_bed 						= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + TEMP_BED_BASE) 						& (unsigned long)(HW_REGS_MASK));
	addr_temp0 							= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + TEMP0_BASE) 							& (unsigned long)(HW_REGS_MASK));
	addr_temp1 							= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + TEMP1_BASE) 							& (unsigned long)(HW_REGS_MASK));

	addr_temp_bed_bottom			= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + TEMP_BED_BOTTOM_BASE) 		& (unsigned long)(HW_REGS_MASK));
	addr_temp_bed_upper			= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + TEMP_BED_UPPER_BASE) 			& (unsigned long)(HW_REGS_MASK));
	addr_temp_e1_bottom			= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + TEMP_E1_BOTTOM_BASE) 			& (unsigned long)(HW_REGS_MASK));
	addr_temp_e1_upper				= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + TEMP_E1_UPPER_BASE) 			& (unsigned long)(HW_REGS_MASK));

	addr_stepper_1_speed 		= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_1_SPEED_BASE) 		& (unsigned long)(HW_REGS_MASK));
	addr_stepper_2_speed 		= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_2_SPEED_BASE) 		& (unsigned long)(HW_REGS_MASK));
	addr_stepper_3_speed 		= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_3_SPEED_BASE) 		& (unsigned long)(HW_REGS_MASK));
	addr_stepper_4_speed 		= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_4_SPEED_BASE) 		& (unsigned long)(HW_REGS_MASK));

	addr_stepper_1_steps_out = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_1_STEPS_IN_BASE) 	& (unsigned long)(HW_REGS_MASK));
	addr_stepper_2_steps_out = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_2_STEPS_IN_BASE) 	& (unsigned long)(HW_REGS_MASK));
	addr_stepper_3_steps_out = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_3_STEPS_IN_BASE)	& (unsigned long)(HW_REGS_MASK));
	addr_stepper_4_steps_out = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_4_STEPS_IN_BASE) 	& (unsigned long)(HW_REGS_MASK));

	addr_stepper_1_steps_in 	= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_1_STEPS_OUT_BASE) & (unsigned long)(HW_REGS_MASK));
	addr_stepper_2_steps_in 	= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_2_STEPS_OUT_BASE) & (unsigned long)(HW_REGS_MASK));
	addr_stepper_3_steps_in 	= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_3_STEPS_OUT_BASE) & (unsigned long)(HW_REGS_MASK));
	addr_stepper_4_steps_in 	= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_4_STEPS_OUT_BASE) & (unsigned long)(HW_REGS_MASK));


	if (set_configuration_1() != 0)
		return 3;
	
	return 0;
};


// Вспомогательные методы
uint32_t addresses::zeroing(uint32_t number, uint32_t count, uint32_t direction)
//если direction=1, то обнуление левых count битов числа number
//иначе обнуление правых count битов числа number
{
	if (direction==1)
		return (number << count) >> count;
	else
		return (number >> count) << count;
};

uint32_t addresses::create_number(bool state, uint32_t count)
{
	uint32_t a = 1;
	for (uint32_t i = 1; i<=count; i++)
		a *= 2;
			
	if (state)
		return a;
	else
		return (0xffffffff - a);
};

uint32_t addresses::pow(uint32_t a, uint32_t p)
{
	uint32_t k = 1;
	for (uint32_t i = 0; i < p; i++)
		k = k * a;
	return k;
};




//Запрос адреса
/*
void* addresses::get_addr_leds()
{
	return addr_leds;
}

void* addresses::get_addr_btns()
{
	return addr_btns;
}

void* addresses::get_addr_fans()
{
	return addr_fans;
}

void* addresses::get_addr_heaters()
{
	return addr_heaters;
}

void* addresses::get_addr_flags_in()
{
	return addr_flags_in;
}

void* addresses::get_addr_flags_out()
{
	return addr_flags_out;
}

void* addresses::get_addr_endstops()
{
	return addr_endstops;
}

void* addresses::get_addr_temp_bed()
{
	return addr_temp_bed;
}

void* addresses::get_addr_temp0()
{
	return addr_temp0;
}

void* addresses::get_addr_temp1()
{
	return addr_temp1;
}

void* addresses::get_addr_stepper_1_speed()
{
	return addr_stepper_1_speed;
}

void* addresses::get_addr_stepper_2_speed()
{
	return addr_stepper_2_speed;
}

void* addresses::get_addr_stepper_3_speed()
{
	return addr_stepper_3_speed;
}

void* addresses::get_addr_stepper_4_speed()
{
	return addr_stepper_4_speed;
}

void* addresses::get_addr_stepper_5_speed()
{
	return addr_stepper_5_speed;
}

void* addresses::get_addr_stepper_1_steps_in()
{
	return addr_stepper_1_steps_in;
}

void* addresses::get_addr_stepper_2_steps_in()
{
	return addr_stepper_2_steps_in;
}

void* addresses::get_addr_stepper_3_steps_in()
{
	return addr_stepper_3_steps_in;
}

void* addresses::get_addr_stepper_4_steps_in()
{
	return addr_stepper_4_steps_in;
}

void* addresses::get_addr_stepper_1_steps_out()
{
	return addr_stepper_1_steps_out;
}

void* addresses::get_addr_stepper_2_steps_out()
{
	return addr_stepper_2_steps_out;
}

void* addresses::get_addr_stepper_3_steps_out()
{
	return addr_stepper_3_steps_out;
}

void* addresses::get_addr_stepper_4_steps_out()
{
	return addr_stepper_4_steps_out;
}
*/


uint32_t addresses::get_leds()
{
	return zeroing(*(uint32_t *)addr_leds, bit_count_uint32 - LED_PIO_DATA_WIDTH, 1);
};

uint32_t addresses::get_btns()
{
	return zeroing(*(uint32_t *)addr_btns, bit_count_uint32 - BUTTON_PIO_DATA_WIDTH, 1);
};

uint32_t addresses::get_fans()
{
	return zeroing(*(uint32_t *)addr_fans, bit_count_uint32 - FANS_DATA_WIDTH, 1);
};

uint32_t addresses::get_flags_in()
{
	return (*(uint32_t *)addr_flags_in);
}; //для записи

uint32_t addresses::get_flags_out()
{
	return (*(uint32_t *)addr_flags_out);
}; //для чтения

uint32_t addresses::get_endstops()
{
	return zeroing(*(uint32_t *)addr_endstops, bit_count_uint32 - ENDSTOPS_DATA_WIDTH, 1);
};

uint32_t addresses::get_temp_bed()
{
	return zeroing(*(uint32_t *)addr_temp_bed, bit_count_uint32 - TEMP_BED_DATA_WIDTH, 1);
};

uint32_t addresses::get_temp0()
{
	return zeroing(*(uint32_t *)addr_temp0, bit_count_uint32 - TEMP0_DATA_WIDTH, 1);
};

uint32_t addresses::get_temp1()
{
	return zeroing(*(uint32_t *)addr_temp1, bit_count_uint32 - TEMP1_DATA_WIDTH, 1);
};

uint32_t addresses::get_temp_bed_bottom()
{
	return zeroing(*(uint32_t *)addr_temp_bed_bottom, bit_count_uint32 - TEMP_BED_BOTTOM_DATA_WIDTH, 1);
};

uint32_t addresses::get_temp_bed_upper()
{
	return zeroing(*(uint32_t *)addr_temp_bed_upper, bit_count_uint32 - TEMP_BED_UPPER_DATA_WIDTH, 1);
};

uint32_t addresses::get_temp_e1_bottom()
{
	return zeroing(*(uint32_t *)addr_temp_e1_bottom, bit_count_uint32 - TEMP_E1_BOTTOM_DATA_WIDTH, 1);
};

uint32_t addresses::get_temp_e1_upper()
{
	return zeroing(*(uint32_t *)addr_temp_e1_upper, bit_count_uint32 - TEMP_E1_UPPER_DATA_WIDTH, 1);
};

int addresses::set_temp_bed_bottom(uint32_t temp)
{
	uint32_t a = zeroing(temp, bit_count_uint32 - (TEMP_BED_BOTTOM_DATA_WIDTH - 1), 1);
	uint32_t b = zeroing(*(uint32_t *)addr_temp_bed_bottom, TEMP_BED_BOTTOM_DATA_WIDTH - 1, 0);
	*(uint32_t *)addr_temp_bed_bottom = (b | a);
	return 0;
};

int addresses::set_temp_bed_upper(uint32_t temp)
{
	uint32_t a = zeroing(temp, bit_count_uint32 - (TEMP_BED_UPPER_DATA_WIDTH - 1), 1);
	uint32_t b = zeroing(*(uint32_t *)addr_temp_bed_upper, TEMP_BED_UPPER_DATA_WIDTH - 1, 0);
	*(uint32_t *)addr_temp_bed_upper = (b | a);
	return 0;
};

int addresses::set_temp_e1_bottom(uint32_t temp)
{
	uint32_t a = zeroing(temp, bit_count_uint32 - (TEMP_E1_BOTTOM_DATA_WIDTH - 1), 1);
	uint32_t b = zeroing(*(uint32_t *)addr_temp_e1_bottom, TEMP_E1_BOTTOM_DATA_WIDTH - 1, 0);
	*(uint32_t *)addr_temp_e1_bottom = (b | a);
	return 0;
};

int addresses::set_temp_e1_upper(uint32_t temp)
{
	uint32_t a = zeroing(temp, bit_count_uint32 - (TEMP_E1_UPPER_DATA_WIDTH - 1), 1);
	uint32_t b = zeroing(*(uint32_t *)addr_temp_e1_upper, TEMP_E1_UPPER_DATA_WIDTH - 1, 0);
	*(uint32_t *)addr_temp_e1_upper = (b | a);
	return 0;
};


uint32_t addresses::get_stepper_1_speed()
{
	return (*(uint32_t *)addr_stepper_1_speed);
};

uint32_t addresses::get_stepper_2_speed()
{
	return (*(uint32_t *)addr_stepper_2_speed);
};

uint32_t addresses::get_stepper_3_speed()
{
	return (*(uint32_t *)addr_stepper_3_speed);
};

uint32_t addresses::get_stepper_4_speed()
{
	return (*(uint32_t *)addr_stepper_4_speed);
};

int32_t addresses::get_stepper_1_steps_in()
{
	return (*(int32_t *)addr_stepper_1_steps_in);
};

int32_t addresses::get_stepper_2_steps_in()
{
	return (*(int32_t *)addr_stepper_2_steps_in);
};

int32_t addresses::get_stepper_3_steps_in()
{
	return (*(int32_t *)addr_stepper_3_steps_in);
};

int32_t addresses::get_stepper_4_steps_in()
{
	return (*(int32_t *)addr_stepper_4_steps_in);
};

int32_t addresses::get_stepper_1_steps_out()
{
	return (*(int32_t *)addr_stepper_1_steps_out);
};

int32_t addresses::get_stepper_2_steps_out()
{
	return (*(int32_t *)addr_stepper_2_steps_out);
};

int32_t addresses::get_stepper_3_steps_out()
{
	return (*(int32_t *)addr_stepper_3_steps_out);
};

int32_t addresses::get_stepper_4_steps_out()
{
	return (*(int32_t *)addr_stepper_4_steps_out);
};


int addresses::set_leds(uint32_t ledss)
{
	uint32_t a = zeroing(ledss, bit_count_uint32 - (LED_PIO_DATA_WIDTH - 1), 1);
	uint32_t b = zeroing(*(uint32_t *)addr_leds, LED_PIO_DATA_WIDTH - 1, 0);
	*(uint32_t *)addr_leds = (b | a);
	return 0;
}; 

int addresses::set_fans(uint32_t fanss)
{
	uint32_t a = zeroing(fanss, bit_count_uint32 - FANS_DATA_WIDTH, 1);
	uint32_t b = zeroing(*(uint32_t *)addr_fans, FANS_DATA_WIDTH, 0);
	*(uint32_t *)addr_fans = (b | a);
	return 0;
};

int addresses::set_flags_in(uint32_t flags_ins)
{
	*(uint32_t *)addr_flags_in = flags_ins;
	return 0;
}; //для записи

int addresses::set_configuration_1()
{
	uint32_t a = 0;
	a += X_MIN_ENDSTOP_INVERTING * pow(2, configuration_1_inversion_xmin);
	a += X_MAX_ENDSTOP_INVERTING * pow(2, configuration_1_inversion_xmax);
	a += Y_MIN_ENDSTOP_INVERTING * pow(2, configuration_1_inversion_ymin);
	a += Y_MAX_ENDSTOP_INVERTING * pow(2, configuration_1_inversion_ymax);
	a += Z_MIN_ENDSTOP_INVERTING * pow(2, configuration_1_inversion_zmin);
	a += Z_MAX_ENDSTOP_INVERTING * pow(2, configuration_1_inversion_zmax);

	a += X_STEPPER_INVERTING 	* pow(2, configuration_1_inversion_stepper_1);
	a += Y_STEPPER_INVERTING 	* pow(2, configuration_1_inversion_stepper_2);
	a += Z_STEPPER_INVERTING 	* pow(2, configuration_1_inversion_stepper_3);
	a += E1_STEPPER_INVERTING * pow(2, configuration_1_inversion_stepper_4);

	*(uint32_t *)addr_configuration_1 = a;
	return 0;
};

int addresses::set_stepper_1_speed(uint32_t speeds)
{
	*(uint32_t *)addr_stepper_1_speed = speeds;
	return 0;
};

int addresses::set_stepper_2_speed(uint32_t speeds)
{
	*(uint32_t *)addr_stepper_2_speed = speeds;
	return 0;
};

int addresses::set_stepper_3_speed(uint32_t speeds)
{
	*(uint32_t *)addr_stepper_3_speed = speeds;
	return 0;
};

int addresses::set_stepper_4_speed(uint32_t speeds)
{
	*(uint32_t *)addr_stepper_4_speed = speeds;
	return 0;
};

int addresses::set_stepper_1_steps_in(int32_t steps_ins)
{
	*(int32_t *)addr_stepper_1_steps_in = steps_ins;
	return 0;
};

int addresses::set_stepper_2_steps_in(int32_t steps_ins)
{
	*(int32_t *)addr_stepper_2_steps_in = steps_ins;
	return 0;
};

int addresses::set_stepper_3_steps_in(int32_t steps_ins)
{
	*(int32_t *)addr_stepper_3_steps_in = steps_ins;
	return 0;
};

int addresses::set_stepper_4_steps_in(int32_t steps_ins)
{
	*(int32_t *)addr_stepper_4_steps_in = steps_ins;
	return 0;
};


bool addresses::get_flags_in_stepper_enabled()
{
	flags_in = get_flags_in();
	flags_in = flags_in << (bit_count_uint32 - flags_in_stepper_enabled - 1);
	flags_in = flags_in >> (bit_count_uint32 - 1);
	return (flags_in == 1);
};

bool addresses::get_flags_in_start_driving_state()
{
	flags_in = get_flags_in();
	flags_in = flags_in << (bit_count_uint32 - flags_in_start_driving_state - 1);
	flags_in = flags_in >> (bit_count_uint32 - 1);
	return (flags_in == 1);
};

bool addresses::get_flags_in_homex()
{
	flags_in = get_flags_in();
	flags_in = flags_in << (bit_count_uint32 - flags_in_home_x - 1);
	flags_in = flags_in >> (bit_count_uint32 - 1);
	return (flags_in == 1);
};

bool addresses::get_flags_in_homey()
{
	flags_in = get_flags_in();
	flags_in = flags_in << (bit_count_uint32 - flags_in_home_y - 1);
	flags_in = flags_in >> (bit_count_uint32 - 1);
	return (flags_in == 1);
};

bool addresses::get_flags_in_homez()
{
	flags_in = get_flags_in();
	flags_in = flags_in << (bit_count_uint32 - flags_in_home_z - 1);
	flags_in = flags_in >> (bit_count_uint32 - 1);
	return (flags_in == 1);
};


bool addresses::get_flags_in_start_homing_state()
{
	flags_in = get_flags_in();
	flags_in = flags_in << (bit_count_uint32 - flags_in_start_homing_state - 1);
	flags_in = flags_in >> (bit_count_uint32 - 1);
	return (flags_in == 1);
};

bool addresses::get_flags_in_heat_bed()
{
	flags_in = get_flags_in();
	flags_in = flags_in << (bit_count_uint32 - flags_in_heat_bed - 1);
	flags_in = flags_in >> (bit_count_uint32 - 1);
	return (flags_in == 1);
};

bool addresses::get_flags_in_heat_bed_hold()
{
	flags_in = get_flags_in();
	flags_in = flags_in << (bit_count_uint32 - flags_in_heat_bed_hold - 1);
	flags_in = flags_in >> (bit_count_uint32 - 1);
	return (flags_in == 1);
};

bool addresses::get_flags_in_heat_extruder()
{
	flags_in = get_flags_in();
	flags_in = flags_in << (bit_count_uint32 - flags_in_heat_extruder - 1);
	flags_in = flags_in >> (bit_count_uint32 - 1);
	return (flags_in == 1);
};

bool addresses::get_flags_in_heat_extruder_hold()
{
	flags_in = get_flags_in();
	flags_in = flags_in << (bit_count_uint32 - flags_in_heat_extruder_hold - 1);
	flags_in = flags_in >> (bit_count_uint32 - 1);
	return (flags_in == 1);
};



bool addresses::set_flags_in_stepper_enabled(bool state)
{
	flags_in = get_flags_in();
	uint32_t a = create_number(state, flags_in_stepper_enabled);
	if (state)
		return ((set_flags_in((a | flags_in))) == 0);
	else
		return ((set_flags_in((a & flags_in))) == 0); 
};

bool addresses::set_flags_in_start_driving_state(bool state)
{
	flags_in = get_flags_in();
	uint32_t a = create_number(state, flags_in_start_driving_state);
	if (state)
		return ((set_flags_in((a | flags_in))) == 0);
	else
		return ((set_flags_in((a & flags_in))) == 0); 
};

bool addresses::set_flags_in_homex(bool state)
{
	flags_in = get_flags_in();
	uint32_t a = create_number(state, flags_in_home_x);
	if (state)
		return ((set_flags_in((a | flags_in))) == 0);
	else
		return ((set_flags_in((a & flags_in))) == 0); 
};

bool addresses::set_flags_in_homey(bool state)
{
	flags_in = get_flags_in();
	uint32_t a = create_number(state, flags_in_home_y);
	if (state)
		return ((set_flags_in((a | flags_in))) == 0);
	else
		return ((set_flags_in((a & flags_in))) == 0); 
};

bool addresses::set_flags_in_homez(bool state)
{
	flags_in = get_flags_in();
	uint32_t a = create_number(state, flags_in_home_z);
	if (state)
		return ((set_flags_in((a | flags_in))) == 0);
	else
		return ((set_flags_in((a & flags_in))) == 0); 
};


bool addresses::set_flags_in_start_homing_state(bool state)
{
	flags_in = get_flags_in();
	uint32_t a = create_number(state, flags_in_start_homing_state);
	if (state)
		return ((set_flags_in((a | flags_in))) == 0);
	else
		return ((set_flags_in((a & flags_in))) == 0); 
};

bool addresses::set_flags_in_heat_bed(bool state)
{
	flags_in = get_flags_in();
	uint32_t a = create_number(state, flags_in_heat_bed);
	if (state)
		return ((set_flags_in((a | flags_in))) == 0);
	else
		return ((set_flags_in((a & flags_in))) == 0); 
};

bool addresses::set_flags_in_heat_bed_hold(bool state)
{
	flags_in = get_flags_in();
	uint32_t a = create_number(state, flags_in_heat_bed_hold);
	if (state)
		return ((set_flags_in((a | flags_in))) == 0);
	else
		return ((set_flags_in((a & flags_in))) == 0); 
};

bool addresses::set_flags_in_heat_extruder(bool state)
{
	flags_in = get_flags_in();
	uint32_t a = create_number(state, flags_in_heat_extruder);
	if (state)
		return ((set_flags_in((a | flags_in))) == 0);
	else
		return ((set_flags_in((a & flags_in))) == 0); 
};

bool addresses::set_flags_in_heat_extruder_hold(bool state)
{
	flags_in = get_flags_in();
	uint32_t a = create_number(state, flags_in_heat_extruder_hold);
	if (state)
		return ((set_flags_in((a | flags_in))) == 0);
	else
		return ((set_flags_in((a & flags_in))) == 0); 
};

bool addresses::get_flags_out_stepper_state()
{
	flags_out = get_flags_out();
	flags_out = flags_out << (bit_count_uint32 - flags_out_stepper_state - 1);
	flags_out = flags_out >> (bit_count_uint32 - 1);
	return (flags_out == 1);
};

bool addresses::get_flags_out_heating_bed()
{
	flags_out = get_flags_out();
	flags_out = flags_out << (bit_count_uint32 - flags_out_heating_bed - 1);
	flags_out = flags_out >> (bit_count_uint32 - 1);
	return (flags_out == 1);
};

bool addresses::get_flags_out_heating_extruder()
{
	flags_out = get_flags_out();
	flags_out = flags_out << (bit_count_uint32 - flags_out_heating_extruder - 1);
	flags_out = flags_out >> (bit_count_uint32 - 1);
	return (flags_out == 1);
};

bool addresses::get_fan(int number)
{
	if (number < FANS_DATA_WIDTH){
		fans = get_leds();
		fans = fans << (bit_count_uint32 - number - 1);
		fans = fans >> (bit_count_uint32 - 1);
		return (fans == 1);
	}
	return false;
};

int addresses::set_fan(int number, bool state)
{
	if (number < FANS_DATA_WIDTH){
		fans = get_fans();
		uint32_t a = create_number(state,  number);
		if (state)
			return ((set_fans((a | fans))) == 0);
		else
			return ((set_fans((a & fans))) == 0); 
	}
	return 1;
};


bool addresses::get_led(int number)
{
	if (number < LED_PIO_DATA_WIDTH){
		leds = get_leds();
		leds = leds << (bit_count_uint32 - number - 1);
		leds = leds >> (bit_count_uint32 - 1);
		return (leds == 1);
	}
	return false;
};


int addresses::set_led(int number, bool state)
{
	if (number < LED_PIO_DATA_WIDTH){
		leds = get_leds();
		uint32_t a = create_number(state,  number);
		if (state)
			return ((set_leds((a | leds))) == 0);
		else
			return ((set_leds((a & leds))) == 0); 
	}
	return 1;
};

bool addresses::get_btn(int number)
{
	btns = get_btns();
	btns = btns << (bit_count_uint32 - number - 1);
	btns = btns >> (bit_count_uint32 - 1);
	return (btns == 1);
};


bool addresses::get_endstop_xmin()
{
	endstops = get_endstops();
	endstops = endstops << (bit_count_uint32 - 0 - 1);
	endstops = endstops >> (bit_count_uint32 - 1);
	return (endstops == 1);
};

bool addresses::get_endstop_xmax()
{
	endstops = get_endstops();
	endstops = endstops << (bit_count_uint32 - 1 - 1);
	endstops = endstops >> (bit_count_uint32 - 1);
	return (endstops == 1);
};

bool addresses::get_endstop_ymin()
{
	endstops = get_endstops();
	endstops = endstops << (bit_count_uint32 - 2 - 1);
	endstops = endstops >> (bit_count_uint32 - 1);
	return (endstops == 1);
};

bool addresses::get_endstop_ymax()
{
	endstops = get_endstops();
	endstops = endstops << (bit_count_uint32 - 3 - 1);
	endstops = endstops >> (bit_count_uint32 - 1);
	return (endstops == 1);
};

bool addresses::get_endstop_zmin()
{
	endstops = get_endstops();
	endstops = endstops << (bit_count_uint32 - 4 - 1);
	endstops = endstops >> (bit_count_uint32 - 1);
	return (endstops == 1);
};

bool addresses::get_endstop_zmax()
{
	endstops = get_endstops();
	endstops = endstops << (bit_count_uint32 - 5 - 1);
	endstops = endstops >> (bit_count_uint32 - 1);
	return (endstops == 1);
};
