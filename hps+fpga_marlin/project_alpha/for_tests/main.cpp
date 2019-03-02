#include <stdio.h>
#include "addresses.h"
#include "inttypes.h"

using namespace std;

int main()
{
	printf("main\n");
	addresses addr;
	int f = addr.init();
	if (f == 1)
		return 1;


	uint32_t heaters;
	uint32_t flags_in;
	uint32_t stepper_1_speed;
	int32_t stepper_1_steps_in;
	int32_t stepper_1_steps_out;

	uint32_t v;
	int32_t v1;



	printf("Тестирование для heaters\n");
	heaters = addr.get_heaters();
	printf("Начальное значение: ");
	printf("%" SCNx32 "\n", heaters);
	v = 3;
	addr.set_heaters(v);
	heaters = addr.get_heaters();
	printf("Присвоим значение: ");
	printf("%" SCNx32 "\n", v);
	printf("Значение после изменения: ");
	printf("%" SCNx32 "\n", heaters);
	v = 69215234;
	addr.set_heaters(v);
	heaters = addr.get_heaters();
	printf("Присвоим значение: ");
	printf("%" SCNx32 "\n", v);
	printf("Значение после изменения: ");
	printf("%" SCNx32 "\n", heaters);



	printf("Тестирование для flags_in\n");
	flags_in = addr.get_flags_in();
	printf("Начальное значение: ");
	printf("%" SCNx32 "\n", flags_in);
	v = 3827311714;
	addr.set_flags_in(v);
	flags_in = addr.get_flags_in();
	printf("Присвоим значение: ");
	printf("%" SCNx32 "\n", v);
	printf("Значение после изменения: ");
	printf("%" SCNx32 "\n", flags_in);



	printf("Тестирование для stepper_1_speed\n");
	stepper_1_speed = addr.get_stepper_1_speed();
	printf("Начальное значение: ");
	printf("%" SCNx32 "\n", stepper_1_speed);
	v = 652451684;
	addr.set_stepper_1_speed(v);
	stepper_1_speed = addr.get_stepper_1_speed();
	printf("Присвоим значение: ");
	printf("%" SCNx32 "\n", v);
	printf("Значение после изменения: ");
	printf("%" SCNx32 "\n", stepper_1_speed);
	v = 69215234;
	addr.set_stepper_1_speed(v);
	stepper_1_speed = addr.get_stepper_1_speed();
	printf("Присвоим значение: ");
	printf("%" SCNx32 "\n", v);
	printf("Значение после изменения: ");
	printf("%" SCNx32 "\n", stepper_1_speed);



	printf("Тестирование для stepper_1_steps_in\n");
	stepper_1_steps_in = addr.get_stepper_1_steps_in();
	printf("Начальное значение: ");
	printf("%" SCNd32 "\n", stepper_1_steps_in);
	v1 = 65413689;
	addr.set_stepper_1_steps_in(v);
	stepper_1_steps_in = addr.get_stepper_1_steps_in();
	printf("Присвоим значение: ");
	printf("%" SCNd32 "\n", v1);
	printf("Значение после изменения: ");
	printf("%" SCNd32 "\n", stepper_1_steps_in);
	v1 = -68496132;
	addr.set_stepper_1_steps_in(v);
	stepper_1_steps_in = addr.get_stepper_1_steps_in();
	printf("Присвоим значение: ");
	printf("%" SCNd32 "\n", v1);
	printf("Значение после изменения: ");
	printf("%" SCNd32 "\n", stepper_1_steps_in);



	printf("Тестирование для stepper_1_steps_out\n");
	stepper_1_steps_out = addr.get_stepper_1_steps_out();
	printf("Начальное значение: ");
	printf("%" SCNd32 "\n", stepper_1_steps_out);
	v1 = -651620;
	addr.set_stepper_1_steps_out(v);
	stepper_1_steps_out = addr.get_stepper_1_steps_out();
	printf("Присвоим значение: ");
	printf("%" SCNd32 "\n", v1);
	printf("Значение после изменения: ");
	printf("%" SCNd32 "\n", stepper_1_steps_out);
	v1 = 6896895;
	addr.set_stepper_1_steps_out(v);
	stepper_1_steps_out = addr.get_stepper_1_steps_out();
	printf("Присвоим значение: ");
	printf("%" SCNd32 "\n", v1);
	printf("Значение после изменения: ");
	printf("%" SCNd32 "\n", stepper_1_steps_out);


	//scanf("%" SCNx32, &speednum); //uint32_t
	//scanf("%" SCNd32, &stepsnum); //int32_t
	
	printf("main end\n");

	return 0;
}
