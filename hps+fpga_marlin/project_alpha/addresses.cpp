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

//volatile

addresses::addresses() {
}

int addresses::init()
{
	if( ( fd = open( "/dev/mem", ( O_RDWR | O_SYNC ) ) ) == -1 ) {
		printf("ERROR: could not open \"/dev/mem\"...\n");
		return 0;
	}

	virtual_base = mmap(NULL, HW_REGS_SPAN, (PROT_READ | PROT_WRITE), MAP_SHARED, fd, HW_REGS_BASE);

	if( virtual_base == MAP_FAILED ) {
		printf("ERROR: mmap() failed...\n");
		close(fd);
		return 0;
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
	
	return 1;
}


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

uint32_t get_leds()
{

	return ((*(uint32_t *)leds) & 0xff)
};

uint32_t get_btns()
{
	return ((*(uint32_t *)btns) & 0x03)
};

uint32_t get_fans()
{
	return ((*(uint32_t *)fans) & 0x03)
};

uint32_t get_heaters()
{
	return ((*(uint32_t *)heaters) & 0x03)
};

uint32_t get_flags_in()
{
	return (*(uint32_t *)flags_in)
}; //для записи

uint32_t get_flags_out()
{
	return (*(uint32_t *)flags_out)
}; //для чтения

uint32_t get_endstops()
{
	return ((*(uint32_t *)endstops) & 0x3f)
};

uint32_t get_temp_bed()
{
	return ((*(uint32_t *)temp_bed) & 0xfff)
};

uint32_t get_temp0()
{
	return ((*(uint32_t *)temp0) & 0xfff)
};

uint32_t get_temp1()
{
	return ((*(uint32_t *)temp1) & 0xfff)
};

uint32_t get_stepper_1_speed()
{
	return (*(uint32_t *)stepper_1_speed)
};

uint32_t get_stepper_2_speed()
{
	return (*(uint32_t *)stepper_2_speed)
};

uint32_t get_stepper_3_speed()
{
	return (*(uint32_t *)stepper_3_speed)
};

uint32_t get_stepper_4_speed()
{
	return (*(uint32_t *)stepper_4_speed)
};

uint32_t get_stepper_5_speed()
{
	return (*(uint32_t *)stepper_5_speed)
};

int32_t get_stepper_1_steps_in()
{
	return (*(int32_t *)stepper_1_steps_in)
};

int32_t get_stepper_2_steps_in()
{
	return (*(int32_t *)stepper_2_steps_in)
};

int32_t get_stepper_3_steps_in()
{
	return (*(int32_t *)stepper_3_steps_in)
};

int32_t get_stepper_4_steps_in()
{
	return (*(int32_t *)stepper_4_steps_in)
};

int32_t get_stepper_5_steps_in()
{
	return (*(int32_t *)stepper_5_steps_in)
};

int32_t get_stepper_1_steps_out()
{
	return (*(int32_t *)stepper_1_steps_out)
};

int32_t get_stepper_2_steps_out()
{
	return (*(int32_t *)stepper_2_steps_out)
};

int32_t get_stepper_3_steps_out()
{
	return (*(int32_t *)stepper_3_steps_out)
};

int32_t get_stepper_4_steps_out()
{
	return (*(int32_t *)stepper_4_steps_out)
};

int32_t get_stepper_5_steps_out()
{
	return (*(int32_t *)stepper_5_steps_out)
};



//Установить значение
int set_leds(uint32_t ledss)
{
	*(int32_t *)leds = ledss;
	return 0;
}; 

int set_fans(uint32_t fanss)
{
	*(int32_t *)fans = fanss;
	return 0;
};

int set_heaters(uint32_t heaterss)
{
	*(int32_t *)heaters = heaterss;
	return 0;
};

int set_flags_in(uint32_t flags_ins)
{
	*(int32_t *)flags_in = flags_ins;
	return 0;
}; //для записи

int set_flags_out(uint32_t flags_outs)
{
	*(int32_t *)flags_out= flags_outs;
	return 0;
}; //для чтения

int set_stepper_1_speed(uint32_t speeds)
{
	*(int32_t *)stepper_1_speed = speeds;
	return 0;
};

int set_stepper_2_speed(uint32_t speeds)
{
	*(int32_t *)stepper_2_speed = speeds;
	return 0;
};

int set_stepper_3_speed(uint32_t speeds)
{
	*(int32_t *)stepper_3_speed = speeds;
	return 0;
};

int set_stepper_4_speed(uint32_t speeds)
{
	*(int32_t *)stepper_4_speed = speeds;
	return 0;
};

int set_stepper_5_speed(uint32_t speeds)
{
	*(int32_t *)stepper_5_speed = speeds;
	return 0;
};

int set_stepper_1_steps_in(int32_t steps_ins)
{
	*(int32_t *)stepper_1_steps_in = steps_ins;
	return 0;
};

int set_stepper_2_steps_in(int32_t steps_ins)
{
	*(int32_t *)stepper_2_steps_in = steps_ins;
	return 0;
};

int set_stepper_3_steps_in(int32_t steps_ins)
{
	*(int32_t *)stepper_3_steps_in = steps_ins;
	return 0;
};

int set_stepper_4_steps_in(int32_t steps_ins)
{
	*(int32_t *)stepper_4_steps_in = steps_ins;
	return 0;
};

int set_stepper_5_steps_in(int32_t steps_ins)
{
	*(int32_t *)stepper_5_steps_in = steps_ins;
	return 0;
};

int set_stepper_1_steps_out(int32_t steps_outs)
{
	*(int32_t *)stepper_1_steps_out = steps_ins;
	return 0;
};

int set_stepper_2_steps_out(int32_t steps_outs)
{
	*(int32_t *)stepper_2_steps_out = steps_ins;
	return 0;
};

int set_stepper_3_steps_out(int32_t steps_outs)
{
	*(int32_t *)stepper_3_steps_out = steps_ins;
	return 0;
};

int set_stepper_4_steps_out(int32_t steps_outs)
{
	*(int32_t *)stepper_4_steps_out = steps_ins;
	return 0;
};

int set_stepper_5_steps_out(int32_t steps_outs)
{
	*(int32_t *)stepper_5_steps_out = steps_ins;
	return 0;
};
