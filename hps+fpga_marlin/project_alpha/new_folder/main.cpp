#include <stdio.h>
#include "addresses.h"
#include "stdint.h"
#include "inttypes.h"

int main()
{
	printf("main\n");
	addresses addr;
	int k = addr.init();

	if (k == 0)
		return 0;
	uint32_t speednum;
	int32_t stepsnum;

	bool running = true;
	uint16_t temp_bed = *(uint16_t *)addr.get_temp_bed() & 0x0fff;
	uint16_t temp0 = *(uint16_t *)addr.get_temp0() & 0x0fff;
	uint16_t temp1 = *(uint16_t *)addr.get_temp1() & 0x0fff;
	while (running)
	{
		printf("Температура стола: %d\n", temp_bed);
		printf("Температура датчика №1: %SCNx16\n", temp0);
		printf("Температура датчика №2: %SCNx16\n", temp1);

		printf("Количество шагов: %SCNd32\n", *(int32_t *)addr.get_stepper_1_steps_in());
		printf("Скорость: %SCNx32\n", *(uint32_t *)addr.get_stepper_1_speed());

		printf("введите скорость и кол шагов:\n");
		scanf("%" SCNx32, &speednum);
		scanf("%" SCNd32, &stepsnum);
		*(uint32_t *)addr.get_stepper_1_speed() = speednum;
		*(int32_t *)addr.get_stepper_1_steps_in() = stepsnum;
	}

	return 1;
}
