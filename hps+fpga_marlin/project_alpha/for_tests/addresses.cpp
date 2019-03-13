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

addresses::addresses()
{

}

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
		return 1;
	}

	leds 								= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + LED_PIO_BASE) 						& (unsigned long)(HW_REGS_MASK));
	btns 								= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + BUTTON_PIO_BASE)					& (unsigned long)(HW_REGS_MASK));
	fans 								= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + FANS_BASE) 								& (unsigned long)(HW_REGS_MASK));
	heaters 						= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + HEATERS_BASE)							& (unsigned long)(HW_REGS_MASK));
	flags_out 					= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + FLAGS_IN_BASE) 						& (unsigned long)(HW_REGS_MASK));
	flags_in 						= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + FLAGS_OUT_BASE) 					& (unsigned long)(HW_REGS_MASK));
	endstops 						= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + ENDSTOPS_BASE) 						& (unsigned long)(HW_REGS_MASK));
	temp_bed 						= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + TEMP_BED_BASE) 						& (unsigned long)(HW_REGS_MASK));
	temp0 							= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + TEMP0_BASE) 							& (unsigned long)(HW_REGS_MASK));
	temp1 							= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + TEMP1_BASE) 							& (unsigned long)(HW_REGS_MASK));

	stepper_1_speed 		= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_1_SPEED_BASE) 		& (unsigned long)(HW_REGS_MASK));
	stepper_2_speed 		= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_2_SPEED_BASE) 		& (unsigned long)(HW_REGS_MASK));
	stepper_3_speed 		= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_3_SPEED_BASE) 		& (unsigned long)(HW_REGS_MASK));
	stepper_4_speed 		= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_4_SPEED_BASE) 		& (unsigned long)(HW_REGS_MASK));
	stepper_5_speed 		= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_5_SPEED_BASE) 		& (unsigned long)(HW_REGS_MASK));

	stepper_1_steps_out = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_1_STEPS_IN_BASE) 	& (unsigned long)(HW_REGS_MASK));
	stepper_2_steps_out = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_2_STEPS_IN_BASE) 	& (unsigned long)(HW_REGS_MASK));
	stepper_3_steps_out = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_3_STEPS_IN_BASE)	& (unsigned long)(HW_REGS_MASK));
	stepper_4_steps_out = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_4_STEPS_IN_BASE) 	& (unsigned long)(HW_REGS_MASK));
	stepper_5_steps_out = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_5_STEPS_IN_BASE) 	& (unsigned long)(HW_REGS_MASK));

	stepper_1_steps_in 	= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_1_STEPS_OUT_BASE) & (unsigned long)(HW_REGS_MASK));
	stepper_2_steps_in 	= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_2_STEPS_OUT_BASE) & (unsigned long)(HW_REGS_MASK));
	stepper_3_steps_in 	= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_3_STEPS_OUT_BASE) & (unsigned long)(HW_REGS_MASK));
	stepper_4_steps_in 	= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_4_STEPS_OUT_BASE) & (unsigned long)(HW_REGS_MASK));
	stepper_5_steps_in 	= virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_5_STEPS_OUT_BASE) & (unsigned long)(HW_REGS_MASK));
	
	return 0;
}



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

void* addresses::get_addr_stepper_5_steps_in()
{
	return addr_stepper_5_steps_in;
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

void* addresses::get_addr_stepper_5_steps_out()
{
	return addr_stepper_5_steps_out;
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

uint32_t addresses::get_heaters()
{
	return zeroing(*(uint32_t *)addr_heaters, bit_count_uint32 - HEATERS_DATA_WIDTH, 1);
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

uint32_t addresses::get_stepper_5_speed()
{
	return (*(uint32_t *)addr_stepper_5_speed);
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

int32_t addresses::get_stepper_5_steps_in()
{
	return (*(int32_t *)addr_stepper_5_steps_in);
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

int32_t addresses::get_stepper_5_steps_out()
{
	return (*(int32_t *)addr_stepper_5_steps_out);
};


int addresses::set_leds(uint32_t ledss)
{
	uint32_t a = zeroing(ledss, bit_count_uint32 - (LED_PIO_DATA_WIDTH - 1), 1);
	uint32_t b = zeroing(*(uint32_t *)addr_leds, LED_PIO_DATA_WIDTH - 1, 0);
	*(int32_t *)addr_leds = (b | a);
	return 0;
}; 

int addresses::set_fans(uint32_t fanss)
{
	uint32_t a = zeroing(fanss, bit_count_uint32 - FANS_DATA_WIDTH, 1);
	uint32_t b = zeroing(*(uint32_t *)addr_fans, FANS_DATA_WIDTH, 0);
	*(int32_t *)addr_fans = (b | a);
	return 0;
};

int addresses::set_heaters(uint32_t heaterss)
{
	uint32_t a = zeroing(heaterss, bit_count_uint32 - HEATERS_DATA_WIDTH, 1);
	uint32_t b = zeroing(*(uint32_t *)addr_heaters, HEATERS_DATA_WIDTH, 0);
	*(int32_t *)addr_heaters = (b | a);
	return 0;
};

int addresses::set_flags_in(uint32_t flags_ins)
{
	*(int32_t *)addr_flags_in = flags_ins;
	return 0;
}; //для записи

int addresses::set_stepper_1_speed(uint32_t speeds)
{
	*(int32_t *)addr_stepper_1_speed = speeds;
	return 0;
};

int addresses::set_stepper_2_speed(uint32_t speeds)
{
	*(int32_t *)addr_stepper_2_speed = speeds;
	return 0;
};

int addresses::set_stepper_3_speed(uint32_t speeds)
{
	*(int32_t *)addr_stepper_3_speed = speeds;
	return 0;
};

int addresses::set_stepper_4_speed(uint32_t speeds)
{
	*(int32_t *)addr_stepper_4_speed = speeds;
	return 0;
};

int addresses::set_stepper_5_speed(uint32_t speeds)
{
	*(int32_t *)addr_stepper_5_speed = speeds;
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

int addresses::set_stepper_5_steps_in(int32_t steps_ins)
{
	*(int32_t *)addr_stepper_5_steps_in = steps_ins;
	return 0;
};

int addresses::set_stepper_1_steps_out(int32_t steps_outs)
{
	*(int32_t *)addr_stepper_1_steps_out = steps_outs;
	return 0;
};

int addresses::set_stepper_2_steps_out(int32_t steps_outs)
{
	*(int32_t *)addr_stepper_2_steps_out = steps_outs;
	return 0;
};

int addresses::set_stepper_3_steps_out(int32_t steps_outs)
{
	*(int32_t *)addr_stepper_3_steps_out = steps_outs;
	return 0;
};

int addresses::set_stepper_4_steps_out(int32_t steps_outs)
{
	*(int32_t *)addr_stepper_4_steps_out = steps_outs;
	return 0;
};

int addresses::set_stepper_5_steps_out(int32_t steps_outs)
{
	*(int32_t *)addr_stepper_5_steps_out = steps_outs;
	return 0;
};


bool addresses::get_flags_in_stepper_enabled(
{
	flags_in = get_flags_in();
	flags_in = flags_in << (bit_count_uint32 - flags_in_position_stepper_enabled - 1);
	flags_in = flags_in >> (bit_count_uint32 - 1);
	return (flags_in == 1)
};

bool addresses::get_flags_in_inversion_xmin()
{
	flags_in = get_flags_in();
	flags_in = flags_in << (bit_count_uint32 - flags_in_position_inversion_xmin - 1);
	flags_in = flags_in >> (bit_count_uint32 - 1);
	return (flags_in == 1)
};

bool addresses::get_flags_in_inversion_xmax()
{
	flags_in = get_flags_in();
	flags_in = flags_in << (bit_count_uint32 - flags_in_position_inversion_xmax - 1);
	flags_in = flags_in >> (bit_count_uint32 - 1);
	return (flags_in == 1)
};

bool addresses::get_flags_in_flags_in_inversion_ymin()
{
	flags_in = get_flags_in();
	flags_in = flags_in << (bit_count_uint32 - flags_in_position_inversion_ymin - 1);
	flags_in = flags_in >> (bit_count_uint32 - 1);
	return (flags_in == 1)
};

bool addresses::get_flags_in_inversion_ymax()
{
	flags_in = get_flags_in();
	flags_in = flags_in << (bit_count_uint32 - flags_in_position_inversion_ymax - 1);
	flags_in = flags_in >> (bit_count_uint32 - 1);
	return (flags_in == 1)
};

bool addresses::get_flags_in_inversion_zmin()
{
	flags_in = get_flags_in();
	flags_in = flags_in << (bit_count_uint32 - flags_in_position_inversion_zmin - 1);
	flags_in = flags_in >> (bit_count_uint32 - 1);
	return (flags_in == 1)
};

bool addresses::get_flags_in_inversion_zmax()
{
	flags_in = get_flags_in();
	flags_in = flags_in << (bit_count_uint32 - flags_in_position_inversion_zmax - 1);
	flags_in = flags_in >> (bit_count_uint32 - 1);
	return (flags_in == 1)
};

bool addresses::get_flags_in_start_driving_state()
{
	flags_in = get_flags_in();
	flags_in = flags_in << (bit_count_uint32 - flags_in_position_start_driving_state - 1);
	flags_in = flags_in >> (bit_count_uint32 - 1);
	return (flags_in == 1)
};


bool addresses::set_flags_in_stepper_enabled(bool state)
{
	flags_in = get_flags_in();
	uint32_t a = create_number(state, flags_in_position_stepper_enabled);
	if (state)
		return ((set_flags_in((a | flags_in))) == 0);
	else
		return ((set_flags_in((a & flags_in))) == 0); 
};

bool addresses::set_flags_in_inversion_xmin(bool invert)
{
	flags_in = get_flags_in();
	uint32_t a = create_number(state, flags_in_position_inversion_xmin);
	if (state)
		return ((set_flags_in((a | flags_in))) == 0);
	else
		return ((set_flags_in((a & flags_in))) == 0); 
};

bool addresses::set_flags_in_inversion_xmax(bool invert)
{
	flags_in = get_flags_in();
	uint32_t a = create_number(state, flags_in_position_inversion_xmax);
	if (state)
		return ((set_flags_in((a | flags_in))) == 0);
	else
		return ((set_flags_in((a & flags_in))) == 0); 
};

bool addresses::set_flags_in_inversion_ymin(bool invert)
{
	flags_in = get_flags_in();
	uint32_t a = create_number(state, flags_in_position_inversion_ymin);
	if (state)
		return ((set_flags_in((a | flags_in))) == 0);
	else
		return ((set_flags_in((a & flags_in))) == 0); 
};

bool addresses::set_flags_in_inversion_ymax(bool invert)
{
	flags_in = get_flags_in();
	uint32_t a = create_number(state, flags_in_position_inversion_ymax);
	if (state)
		return ((set_flags_in((a | flags_in))) == 0);
	else
		return ((set_flags_in((a & flags_in))) == 0); 
};

bool addresses::set_flags_in_inversion_zmin(bool invert)
{
	flags_in = get_flags_in();
	uint32_t a = create_number(state, flags_in_position_inversion_zmin);
	if (state)
		return ((set_flags_in((a | flags_in))) == 0);
	else
		return ((set_flags_in((a & flags_in))) == 0); 
};

bool addresses::set_flags_in_inversion_zmax(bool invert)
{
	flags_in = get_flags_in();
	uint32_t a = create_number(state, flags_in_position_inversion_zmax);
	if (state)
		return ((set_flags_in((a | flags_in))) == 0);
	else
		return ((set_flags_in((a & flags_in))) == 0); 
};

bool addresses::set_flags_in_start_driving_state(bool state)
{
	flags_in = get_flags_in();
	uint32_t a = create_number(state, flags_in_position_start_driving_state);
	if (state)
		return ((set_flags_in((a | flags_in))) == 0);
	else
		return ((set_flags_in((a & flags_in))) == 0); 
};


bool addresses::get_flags_out_stepper_state_xy()
{
	flags_out = get_flags_out();
	flags_out = flags_out << (bit_count_uint32 - flags_out_position_stepper_state_xy - 1);
	flags_out = flags_out >> (bit_count_uint32 - 1);
	return (flags_out == 1);
};

bool addresses::get_flags_out_stepper_state_z()
{
	flags_out = get_flags_out();
	flags_out = flags_out << (bit_count_uint32 - flags_out_position_stepper_state_z - 1);
	flags_out = flags_out >> (bit_count_uint32 - 1);
	return (flags_out == 1);
};

bool addresses::get_flags_out_stepper_state_e()
{
	flags_out = get_flags_out();
	flags_out = flags_out << (bit_count_uint32 - flags_out_position_stepper_state_e - 1);
	flags_out = flags_out >> (bit_count_uint32 - 1);
	return (flags_out == 1);
};

bool addresses::get_flags_out_correction_x()
{
	flags_out = get_flags_out();
	flags_out = flags_out << (bit_count_uint32 - flags_out_position_correction_x - 1);
	flags_out = flags_out >> (bit_count_uint32 - 1);
	return (flags_out == 1);
};

bool addresses::get_flags_out_correction_y()
{
	flags_out = get_flags_out();
	flags_out = flags_out << (bit_count_uint32 - flags_out_position_correction_y - 1);
	flags_out = flags_out >> (bit_count_uint32 - 1);
	return (flags_out == 1);
};


bool get_heater_bed()
{
	heaters = get_heaters();
	heaters = heaters << (bit_count_uint32 - 0 - 1);
	heaters = heaters >> (bit_count_uint32 - 1);
	return (heaters == 1);
};

bool get_heater_e0()
{
	heaters = get_heaters();
	heaters = heaters << (bit_count_uint32 - 1 - 1);
	heaters = heaters >> (bit_count_uint32 - 1);
	return (heaters == 1);
};

int set_heater_bed(bool state)
{
	heaters = get_heaters();
	uint32_t a = create_number(state,  0);
	if (state)
		return ((set_heaters((a | heaters))) == 0);
	else
		return ((set_heaters((a & heaters))) == 0); 
};

int set_heater_e0(bool state)
{
	heaters = get_heaters();
	uint32_t a = create_number(state,  1);
	if (state)
		return ((set_heaters((a | heaters))) == 0);
	else
		return ((set_heaters((a & heaters))) == 0); 
};


bool get_fan(int number)
{
	if (nunber < FANS_DATA_WIDTH){
		fans = get_leds();
		fans = fans << (bit_count_uint32 - number - 1);
		fans = fans >> (bit_count_uint32 - 1);
		return (fans == 1);
	}
	return false;
};

int set_fan(int number, bool state)
{
	if (nunber < FANS_DATA_WIDTH){
		fans = get_fans();
		uint32_t a = create_number(state,  number);
		if (state)
			return ((set_fans((a | fans))) == 0);
		else
			return ((set_fans((a & fans))) == 0); 
	}
	return 1;
};


bool get_led(int number)
{
	if (nunber < LED_PIO_DATA_WIDTH){
		leds = get_leds();
		leds = leds << (bit_count_uint32 - number - 1);
		leds = leds >> (bit_count_uint32 - 1);
		return (leds == 1);
	}
	return false;
};


int set_led(int number, bool state)
{
	if (nunber < LED_PIO_DATA_WIDTH){
		leds = get_leds();
		uint32_t a = create_number(state,  number);
		if (state)
			return ((set_leds((a | leds))) == 0);
		else
			return ((set_leds((a & leds))) == 0); 
	}
	return 1;
};

bool get_btn(int number)
{
	btns = get_btns();
	btns = btns << (bit_count_uint32 - number - 1);
	btns = btns >> (bit_count_uint32 - 1);
	return (btns == 1);
};


bool get_endstop_xmin()
{
	endstops = get_endstops();
	endstops = endstops << (bit_count_uint32 - 0 - 1);
	endstops = endstops >> (bit_count_uint32 - 1);
	return (endstops == 1);
};

bool get_endstop_xmax()
{
	endstops = get_endstops();
	endstops = endstops << (bit_count_uint32 - 1 - 1);
	endstops = endstops >> (bit_count_uint32 - 1);
	return (endstops == 1);
};

bool get_endstop_ymin()
{
	endstops = get_endstops();
	endstops = endstops << (bit_count_uint32 - 2 - 1);
	endstops = endstops >> (bit_count_uint32 - 1);
	return (endstops == 1);
};

bool get_endstop_ymax()
{
	endstops = get_endstops();
	endstops = endstops << (bit_count_uint32 - 3 - 1);
	endstops = endstops >> (bit_count_uint32 - 1);
	return (endstops == 1);
};

bool get_endstop_zmin()
{
	endstops = get_endstops();
	endstops = endstops << (bit_count_uint32 - 4 - 1);
	endstops = endstops >> (bit_count_uint32 - 1);
	return (endstops == 1);
};

bool get_endstop_zmax()
{
	endstops = get_endstops();
	endstops = endstops << (bit_count_uint32 - 5 - 1);
	endstops = endstops >> (bit_count_uint32 - 1);
	return (endstops == 1);
};
