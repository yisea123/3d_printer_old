#include "inttypes.h"
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include "sys/mman.h"
#include "hwlib.h"
#include "socal/socal.h"
#include "socal/hps.h"
#include "socal/alt_gpio.h"
#include "hps_0.h"

#define HW_REGS_BASE (ALT_STM_OFST)
#define HW_REGS_SPAN (0x04000000)
#define HW_REGS_MASK (HW_REGS_SPAN - 1)

int main()
{
	printf("main\n");

	int fd;
	void *virtual_base;
	
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

	void *temp_bed;

	temp_bed = virtual_base + ((unsigned long)(ALT_LWFPGASLVS_OFST + TEMP_BED_BASE) & (unsigned long)(HW_REGS_MASK));
	
	int i = 0;
	while (i<2)
	{	
		i++;
		printf("Температура стола: %" SCNx16 "\n", *(uint16_t *)temp_bed);
		*(uint32_t *)temp_bed = i;
	}

	return 1;
}
