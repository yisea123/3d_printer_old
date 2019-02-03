#include "addresses.h"
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/mman.h>
#include "include/hwlib.h"
#include "include/socal/socal.h"
#include "include/socal/hps.h"
#include "include/socal/alt_gpio.h"
#include "include/hps_0.h"

#define HW_REGS_BASE (ALT_STM_OFST)
#define HW_REGS_SPAN (0x04000000)
#define HW_REGS_MASK (HW_REGS_SPAN - 1)

addresses::addreses()
{

}

bool init()
{
	int fd;
	void *virtual_base;
	void *leds;
	void *btns;
	void *fans;
	void *heaters;
	void *flags;
	void *endstops;
	void *temp_bed;
	void *temp0;
	void *temp1;

	void *stepper_1_speed;
	void *stepper_2_speed;
	void *stepper_3_speed;
	void *stepper_4_speed;
	void *stepper_5_speed;

	void *stepper_1_steps;
	void *stepper_2_steps;
	void *stepper_3_steps;
	void *stepper_4_steps;
	void *stepper_5_steps;

	if( ( fd = open( "/dev/mem", ( O_RDWR | O_SYNC ) ) ) == -1 ) {
		printf("ERROR: could not open \"/dev/mem\"...\n");
		return false;
	}

	virtual_base = mmap(NULL, HW_REGS_SPAN, (PROT_READ | PROT_WRITE), MAP_SHARED, fd, HW_REGS_BASE);

	if( virtual_base == MAP_FAILED ) {
		printf("ERROR: mmap() failed...\n");
		close(fd);
		return false;
	}
	
	leds = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + LED_PIO_BASE) & (unsigned long)(HW_REGS_MASK));
	btns = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + BUTTON_PIO_BASE) & (unsigned long)(HW_REGS_MASK));
	fans = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + FANS_BASE) & (unsigned long)(HW_REGS_MASK));
	heaters = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + HEATERS_BASE) & (unsigned long)(HW_REGS_MASK));
	flags = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + FLAGS_BASE) & (unsigned long)(HW_REGS_MASK));
	endstops = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + ENDSTOPS_BASE) & (unsigned long)(HW_REGS_MASK));
	temp_bed = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + TEMP_BED_BASE) & (unsigned long)(HW_REGS_MASK));
	temp0 = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + TEMP0_BASE) & (unsigned long)(HW_REGS_MASK));
	temp1 = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + TEMP1_BASE) & (unsigned long)(HW_REGS_MASK));
	
	stepper_1_speed = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_1_SPEED_BASE) & (unsigned long)(HW_REGS_MASK));
	stepper_2_speed = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_2_SPEED_BASE) & (unsigned long)(HW_REGS_MASK));
	stepper_3_speed = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_3_SPEED_BASE) & (unsigned long)(HW_REGS_MASK));
	stepper_4_speed = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_4_SPEED_BASE) & (unsigned long)(HW_REGS_MASK));
	stepper_5_speed = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_5_SPEED_BASE) & (unsigned long)(HW_REGS_MASK));

	stepper_1_steps = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_1_STEPS_BASE) & (unsigned long)(HW_REGS_MASK));
	stepper_2_steps = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_2_STEPS_BASE) & (unsigned long)(HW_REGS_MASK));
	stepper_3_steps = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_3_STEPS_BASE) & (unsigned long)(HW_REGS_MASK));
	stepper_4_steps = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_4_STEPS_BASE) & (unsigned long)(HW_REGS_MASK));
	stepper_5_steps = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + STEPPER_5_STEPS_BASE) & (unsigned long)(HW_REGS_MASK));

	return true;
}

void* addreses::get_leds()
{
	return leds;
}

void* addreses::get_btns()
{
	return btns;
}

void* adresses::get_fans()
{
	return fans;
}

void* adresses::get_heaters()
{
	return heaters;
}

void* adresses::get_flags()
{
	return flags;
}

void* adresses::get_endstops()
{
	return endstops;
}

void* adresses::get_temp_bed()
{
	return temp_bed;
}

void* adresses::get_temp0()
{
	return temp0;
}

void* adresses::get_temp1()
{
	return temp1;
}

void* adresses::get_stepper_1_speed()
{
	return stepper_1_speed;
}

void* adresses::get_stepper_2_speed()
{
	return stepper_2_speed;
}

void* adresses::get_stepper_3_speed()
{
	return stepper_3_speed;
}

void* adresses::get_stepper_4_speed()
{
	return stepper_4_speed;
}

void* adresses::get_stepper_5_speed()
{
	return stepper_5_speed;
}

void* adresses::get_stepper_1_steps()
{
	return stepper_1_steps;
}

void* adresses::get_stepper_2_steps()
{
	return stepper_2_steps;
}

void* adresses::get_stepper_3_steps()
{
	return stepper_3_steps;
}

void* adresses::get_stepper_4_steps()
{
	return stepper_4_steps;
}

void* adresses::get_stepper_5_steps()
{
	return stepper_5_steps;
}
