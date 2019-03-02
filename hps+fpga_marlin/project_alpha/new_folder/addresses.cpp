#include "addresses.h"
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include "sys/mman.h"
#include "include/hwlib.h"
#include "include/socal/socal.h"
#include "include/socal/hps.h"
#include "include/socal/alt_gpio.h"
#include "include/hps_0.h"

//volatile

addresses::addresses() {
}

int addresses::init()
{/*
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
	*/
	return 1;
}

void* addresses::get_leds()
{
	return leds;
}

void* addresses::get_btns()
{
	return btns;
}

void* addresses::get_fans()
{
	return fans;
}

void* addresses::get_heaters()
{
	return heaters;
}

void* addresses::get_flags_in()
{
	return flags_in;
}

void* addresses::get_flags_out()
{
	return flags_out;
}

void* addresses::get_endstops()
{
	return endstops;
}

void* addresses::get_temp_bed()
{
	return temp_bed;
}

void* addresses::get_temp0()
{
	return temp0;
}

void* addresses::get_temp1()
{
	return temp1;
}

void* addresses::get_stepper_1_speed()
{
	return stepper_1_speed;
}

void* addresses::get_stepper_2_speed()
{
	return stepper_2_speed;
}

void* addresses::get_stepper_3_speed()
{
	return stepper_3_speed;
}

void* addresses::get_stepper_4_speed()
{
	return stepper_4_speed;
}

void* addresses::get_stepper_5_speed()
{
	return stepper_5_speed;
}

void* addresses::get_stepper_1_steps_in()
{
	return stepper_1_steps_in;
}

void* addresses::get_stepper_2_steps_in()
{
	return stepper_2_steps_in;
}

void* addresses::get_stepper_3_steps_in()
{
	return stepper_3_steps_in;
}

void* addresses::get_stepper_4_steps_in()
{
	return stepper_4_steps_in;
}

void* addresses::get_stepper_5_steps_in()
{
	return stepper_5_steps_in;
}

void* addresses::get_stepper_1_steps_out()
{
	return stepper_1_steps_out;
}

void* addresses::get_stepper_2_steps_out()
{
	return stepper_2_steps_out;
}

void* addresses::get_stepper_3_steps_out()
{
	return stepper_3_steps_out;
}

void* addresses::get_stepper_4_steps_out()
{
	return stepper_4_steps_out;
}

void* addresses::get_stepper_5_steps_out()
{
	return stepper_5_steps_out;
}
