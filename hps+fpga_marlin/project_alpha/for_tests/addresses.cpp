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

	leds = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + LED_PIO_BASE) & (unsigned long)(HW_REGS_MASK));
	btns = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + BUTTON_PIO_BASE) & (unsigned long)(HW_REGS_MASK));
	fans = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + FANS_BASE) & (unsigned long)(HW_REGS_MASK));
	heaters = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + HEATERS_BASE) & (unsigned long)(HW_REGS_MASK));
	flags_out = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + FLAGS_IN_BASE) & (unsigned long)(HW_REGS_MASK));
	flags_in = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + FLAGS_OUT_BASE) & (unsigned long)(HW_REGS_MASK));
	endstops = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + ENDSTOPS_BASE) & (unsigned long)(HW_REGS_MASK));
	temp_bed = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + TEMP_BED_BASE) & (unsigned long)(HW_REGS_MASK));
	temp0 = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + TEMP0_BASE) & (unsigned long)(HW_REGS_MASK));
	temp1 = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + TEMP1_BASE) & (unsigned long)(HW_REGS_MASK));

	stepper_1_speed = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_1_SPEED_BASE) & (unsigned long)(HW_REGS_MASK));
	stepper_2_speed = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_2_SPEED_BASE) & (unsigned long)(HW_REGS_MASK));
	stepper_3_speed = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_3_SPEED_BASE) & (unsigned long)(HW_REGS_MASK));
	stepper_4_speed = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_4_SPEED_BASE) & (unsigned long)(HW_REGS_MASK));
	stepper_5_speed = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_5_SPEED_BASE) & (unsigned long)(HW_REGS_MASK));

	stepper_1_steps_out = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_1_STEPS_IN_BASE) & (unsigned long)(HW_REGS_MASK));
	stepper_2_steps_out = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_2_STEPS_IN_BASE) & (unsigned long)(HW_REGS_MASK));
	stepper_3_steps_out = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_3_STEPS_IN_BASE) & (unsigned long)(HW_REGS_MASK));
	stepper_4_steps_out = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_4_STEPS_IN_BASE) & (unsigned long)(HW_REGS_MASK));
	stepper_5_steps_out = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_5_STEPS_IN_BASE) & (unsigned long)(HW_REGS_MASK));

	stepper_1_steps_in = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_1_STEPS_OUT_BASE) & (unsigned long)(HW_REGS_MASK));
	stepper_2_steps_in = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_2_STEPS_OUT_BASE) & (unsigned long)(HW_REGS_MASK));
	stepper_3_steps_in = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_3_STEPS_OUT_BASE) & (unsigned long)(HW_REGS_MASK));
	stepper_4_steps_in = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_4_STEPS_OUT_BASE) & (unsigned long)(HW_REGS_MASK));
	stepper_5_steps_in = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_5_STEPS_OUT_BASE) & (unsigned long)(HW_REGS_MASK));
	
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



//Запрос адреса

void* addresses::get_addr_leds()
{
	return leds;
}

void* addresses::get_addr_btns()
{
	return btns;
}

void* addresses::get_addr_fans()
{
	return fans;
}

void* addresses::get_addr_heaters()
{
	return heaters;
}

void* addresses::get_addr_flags_in()
{
	return flags_in;
}

void* addresses::get_addr_flags_out()
{
	return flags_out;
}

void* addresses::get_addr_endstops()
{
	return endstops;
}

void* addresses::get_addr_temp_bed()
{
	return temp_bed;
}

void* addresses::get_addr_temp0()
{
	return temp0;
}

void* addresses::get_addr_temp1()
{
	return temp1;
}

void* addresses::get_addr_stepper_1_speed()
{
	return stepper_1_speed;
}

void* addresses::get_addr_stepper_2_speed()
{
	return stepper_2_speed;
}

void* addresses::get_addr_stepper_3_speed()
{
	return stepper_3_speed;
}

void* addresses::get_addr_stepper_4_speed()
{
	return stepper_4_speed;
}

void* addresses::get_addr_stepper_5_speed()
{
	return stepper_5_speed;
}

void* addresses::get_addr_stepper_1_steps_in()
{
	return stepper_1_steps_in;
}

void* addresses::get_addr_stepper_2_steps_in()
{
	return stepper_2_steps_in;
}

void* addresses::get_addr_stepper_3_steps_in()
{
	return stepper_3_steps_in;
}

void* addresses::get_addr_stepper_4_steps_in()
{
	return stepper_4_steps_in;
}

void* addresses::get_addr_stepper_5_steps_in()
{
	return stepper_5_steps_in;
}

void* addresses::get_addr_stepper_1_steps_out()
{
	return stepper_1_steps_out;
}

void* addresses::get_addr_stepper_2_steps_out()
{
	return stepper_2_steps_out;
}

void* addresses::get_addr_stepper_3_steps_out()
{
	return stepper_3_steps_out;
}

void* addresses::get_addr_stepper_4_steps_out()
{
	return stepper_4_steps_out;
}

void* addresses::get_addr_stepper_5_steps_out()
{
	return stepper_5_steps_out;
}



//Запрос значения

uint32_t addresses::get_leds()
{
	return zeroing(*(uint32_t *)leds, bit_count_uint32 - LED_PIO_DATA_WIDTH, 1);
};

uint32_t addresses::get_btns()
{
	return zeroing(*(uint32_t *)btns, bit_count_uint32 - BUTTON_PIO_DATA_WIDTH, 1);
};

uint32_t addresses::get_fans()
{
	return zeroing(*(uint32_t *)fans, bit_count_uint32 - FANS_DATA_WIDTH, 1);
};

uint32_t addresses::get_heaters()
{
	return zeroing(*(uint32_t *)heaters, bit_count_uint32 - HEATERS_DATA_WIDTH, 1);
};

uint32_t addresses::get_flags_in()
{
	return (*(uint32_t *)flags_in);
}; //для записи

uint32_t addresses::get_flags_out()
{
	return (*(uint32_t *)flags_out);
}; //для чтения

uint32_t addresses::get_endstops()
{
	return zeroing(*(uint32_t *)endstops, bit_count_uint32 - ENDSTOPS_DATA_WIDTH, 1);
};

uint32_t addresses::get_temp_bed()
{
	return zeroing(*(uint32_t *)temp_bed, bit_count_uint32 - TEMP_BED_DATA_WIDTH, 1);
};

uint32_t addresses::get_temp0()
{
	return zeroing(*(uint32_t *)temp0, bit_count_uint32 - TEMP0_DATA_WIDTH, 1);
};

uint32_t addresses::get_temp1()
{
	return zeroing(*(uint32_t *)temp1, bit_count_uint32 - TEMP1_DATA_WIDTH, 1);
};

uint32_t addresses::get_stepper_1_speed()
{
	return (*(uint32_t *)stepper_1_speed);
};

uint32_t addresses::get_stepper_2_speed()
{
	return (*(uint32_t *)stepper_2_speed);
};

uint32_t addresses::get_stepper_3_speed()
{
	return (*(uint32_t *)stepper_3_speed);
};

uint32_t addresses::get_stepper_4_speed()
{
	return (*(uint32_t *)stepper_4_speed);
};

uint32_t addresses::get_stepper_5_speed()
{
	return (*(uint32_t *)stepper_5_speed);
};

int32_t addresses::get_stepper_1_steps_in()
{
	return (*(int32_t *)stepper_1_steps_in);
};

int32_t addresses::get_stepper_2_steps_in()
{
	return (*(int32_t *)stepper_2_steps_in);
};

int32_t addresses::get_stepper_3_steps_in()
{
	return (*(int32_t *)stepper_3_steps_in);
};

int32_t addresses::get_stepper_4_steps_in()
{
	return (*(int32_t *)stepper_4_steps_in);
};

int32_t addresses::get_stepper_5_steps_in()
{
	return (*(int32_t *)stepper_5_steps_in);
};

int32_t addresses::get_stepper_1_steps_out()
{
	return (*(int32_t *)stepper_1_steps_out);
};

int32_t addresses::get_stepper_2_steps_out()
{
	return (*(int32_t *)stepper_2_steps_out);
};

int32_t addresses::get_stepper_3_steps_out()
{
	return (*(int32_t *)stepper_3_steps_out);
};

int32_t addresses::get_stepper_4_steps_out()
{
	return (*(int32_t *)stepper_4_steps_out);
};

int32_t addresses::get_stepper_5_steps_out()
{
	return (*(int32_t *)stepper_5_steps_out);
};



//Установить значение
int addresses::set_leds(uint32_t ledss)
{
	uint32_t a = zeroing(ledss, bit_count_uint32 - (LED_PIO_DATA_WIDTH - 1), 1);
	uint32_t b = zeroing(*(uint32_t *)leds, LED_PIO_DATA_WIDTH - 1, 0);
	*(int32_t *)leds = (b | a);
	return 0;
}; 

int addresses::set_fans(uint32_t fanss)
{
	uint32_t a = zeroing(fanss, bit_count_uint32 - FANS_DATA_WIDTH, 1);
	uint32_t b = zeroing(*(uint32_t *)fans, FANS_DATA_WIDTH, 0);
	*(int32_t *)fans = (b | a);
	return 0;
};

int addresses::set_heaters(uint32_t heaterss)
{
	uint32_t a = zeroing(heaterss, bit_count_uint32 - HEATERS_DATA_WIDTH, 1);
	uint32_t b = zeroing(*(uint32_t *)heaters, HEATERS_DATA_WIDTH, 0);

	*(int32_t *)heaters = (b | a);
	return 0;
};

int addresses::set_flags_in(uint32_t flags_ins)
{
	*(int32_t *)flags_in = flags_ins;
	return 0;
}; //для записи

int addresses::set_stepper_1_speed(uint32_t speeds)
{
	*(int32_t *)stepper_1_speed = speeds;
	return 0;
};

int addresses::set_stepper_2_speed(uint32_t speeds)
{
	*(int32_t *)stepper_2_speed = speeds;
	return 0;
};

int addresses::set_stepper_3_speed(uint32_t speeds)
{
	*(int32_t *)stepper_3_speed = speeds;
	return 0;
};

int addresses::set_stepper_4_speed(uint32_t speeds)
{
	*(int32_t *)stepper_4_speed = speeds;
	return 0;
};

int addresses::set_stepper_5_speed(uint32_t speeds)
{
	*(int32_t *)stepper_5_speed = speeds;
	return 0;
};

int addresses::set_stepper_1_steps_in(int32_t steps_ins)
{
	*(int32_t *)stepper_1_steps_in = steps_ins;
	return 0;
};

int addresses::set_stepper_2_steps_in(int32_t steps_ins)
{
	*(int32_t *)stepper_2_steps_in = steps_ins;
	return 0;
};

int addresses::set_stepper_3_steps_in(int32_t steps_ins)
{
	*(int32_t *)stepper_3_steps_in = steps_ins;
	return 0;
};

int addresses::set_stepper_4_steps_in(int32_t steps_ins)
{
	*(int32_t *)stepper_4_steps_in = steps_ins;
	return 0;
};

int addresses::set_stepper_5_steps_in(int32_t steps_ins)
{
	*(int32_t *)stepper_5_steps_in = steps_ins;
	return 0;
};

int addresses::set_stepper_1_steps_out(int32_t steps_outs)
{
	*(int32_t *)stepper_1_steps_out = steps_outs;
	return 0;
};

int addresses::set_stepper_2_steps_out(int32_t steps_outs)
{
	*(int32_t *)stepper_2_steps_out = steps_outs;
	return 0;
};

int addresses::set_stepper_3_steps_out(int32_t steps_outs)
{
	*(int32_t *)stepper_3_steps_out = steps_outs;
	return 0;
};

int addresses::set_stepper_4_steps_out(int32_t steps_outs)
{
	*(int32_t *)stepper_4_steps_out = steps_outs;
	return 0;
};

int addresses::set_stepper_5_steps_out(int32_t steps_outs)
{
	*(int32_t *)stepper_5_steps_out = steps_outs;
	return 0;
};
