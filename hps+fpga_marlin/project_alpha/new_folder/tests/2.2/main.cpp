#include <stdio.h>
#include "addresses.h"
#include "inttypes.h"

int main()
{
	printf("main\n");
	addresses addr;
	int k = addr.init();

	if (k == 0)
		return 1;

	uint32_t speednum;
	int32_t stepsnum;

	bool running = true;
	uint16_t temp_bed = *(uint16_t *)addr.get_temp_bed() & 0x0fff;
	while (running)
	{
		printf("Температура стола: %" SCNx16 "\n", temp_bed);

		printf("Steps in: %" SCNd32 "\n", *(int32_t *)addr.get_stepper_1_steps_in());
		printf("Speed: %" SCNx32" \n", *(uint32_t *)addr.get_stepper_1_speed());

		printf("Введите скорость и количество шагов:\n");
		scanf("%" SCNx32, &speednum);
		scanf("%" SCNd32, &stepsnum);
		*(uint32_t *)addr.get_stepper_1_speed() = speednum;
		*(int32_t *)addr.get_stepper_1_steps_in() = stepsnum;
	}

	return 0;
}
