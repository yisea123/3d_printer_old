#include "hps_0_arm_a9_0.h"

#define keys (volatile char *) BTN_BASE
#define leds (char *) LED_BASE

int main()
{
	while(1)
		*leds = *keys;
}
