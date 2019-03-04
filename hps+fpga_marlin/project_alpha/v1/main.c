/*
This program demonstrate how to use hps communicate with FPGA through light AXI Bridge.
uses should program the FPGA by GHRD project before executing the program
refer to user manual chapter 7 for details about the demo
*/

#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/mman.h>
#include "hwlib.h"
#include "socal/socal.h"
#include "socal/hps.h"
#include "socal/alt_gpio.h"
#include "hps_0.h"
#include "inttypes.h"

#define HW_REGS_BASE ( ALT_STM_OFST )
#define HW_REGS_SPAN ( 0x04000000 )
#define HW_REGS_MASK ( HW_REGS_SPAN - 1 )

int main() {

	void *virtual_base;
	int fd;
	void *speed, *step, *flags_write;
	volatile void *step_out, *flags_read;

	// map the address space for the LED registers into user space so we can interact with them.
	// we'll actually map in the entire CSR span of the HPS since we want to access various registers within that span

	if( ( fd = open( "/dev/mem", ( O_RDWR | O_SYNC ) ) ) == -1 ) {
		printf( "ERROR: could not open \"/dev/mem\"...\n" );
		return( 1 );
	}

	virtual_base = mmap( NULL, HW_REGS_SPAN, ( PROT_READ | PROT_WRITE ), MAP_SHARED, fd, HW_REGS_BASE );

	if( virtual_base == MAP_FAILED ) {
		printf( "ERROR: mmap() failed...\n" );
		close( fd );
		return( 1 );
	}
	
	speed 	  = virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + STEPPER_1_SPEED_BASE ) & ( unsigned long)( HW_REGS_MASK ) );
	step  	  = virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + STEPPER_1_STEPS_OUT_BASE ) & ( unsigned long)( HW_REGS_MASK ) );
	step_out  = virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + STEPPER_1_STEPS_IN_BASE ) & ( unsigned long)( HW_REGS_MASK ) );
	flags_write	  = virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + FLAGS_OUT_BASE ) & ( unsigned long)( HW_REGS_MASK ) );
	flags_read	  = virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + FLAGS_IN_BASE ) & ( unsigned long)( HW_REGS_MASK ) );
	

	// toggle the LEDs a bit
	
	int32_t stepsnum, stepsnum0, stepsnum1, flags_r, flags_w;
	uint32_t speednum;
	*(int32_t *)flags_write = 1;
	
	
	while( true ) {		

		printf("введите скорость и кол шагов:\n");
		scanf("%" SCNx32, &speednum);
		scanf("%" SCNd32, &stepsnum);
		stepsnum0 = *(int32_t *)step_out;
		*(uint32_t *)speed = speednum;
		*(int32_t *)step = stepsnum;
		
		printf("Начата стадия 1.\n");
		stepsnum1 = *(int32_t *)step_out;
		printf("step_out_befor:  %" SCNd32 "\n", stepsnum0);
		printf("step_out_after: %" SCNd32 "\n", stepsnum1);
		while (stepsnum0 == stepsnum1)
			stepsnum1 = *(int32_t *)step_out;

		printf("Стадия 1 закончена. Начата стадия 2.\n");
		
		flags_w = *(int32_t *)flags_write;
		flags_r = *(int32_t *)flags_read;
		printf("flags_r:  %" SCNd32 "\n", flags_r);
		printf("flags_w:  %" SCNd32 "\n", flags_w);

		*(int32_t *)step = 0;

		printf("stepsnum1:  %" SCNd32 "\n", stepsnum1);
		printf("step_after: %" SCNd32 "\n", *(int32_t *)step);

		while (stepsnum1 == stepsnum)
			stepsnum1 = *(int32_t *)step_out;
		printf("Оставшееся число шагов: %" SCNd32 "\n", stepsnum1);

		flags_w = *(int32_t *)flags_write;
		flags_r = *(int32_t *)flags_read;
		printf("flags_r:  %" SCNd32 "\n", flags_r);
		printf("flags_w:  %" SCNd32 "\n", flags_w);

	} // while
	

	// clean up our memory mapping and exit
	
	if( munmap( virtual_base, HW_REGS_SPAN ) != 0 ) {
		printf( "ERROR: munmap() failed...\n" );
		close( fd );
		return( 1 );
	}

	close( fd );

	return( 0 );
}
