#include <stdio.h>
#include "addresses.h"
#include "position.h"
#include "gcode.h"
#include "inttypes.h"

using namespace std;

int main()
{
	
	printf("start\n\n");
	addresses addr;
	printf("object addr created\n");
	int f = addr.init();
	printf("object addr init\n\n");
	if (f == 1)
		return 1;

	position pos;
	printf("object pos created\n");
	f = pos.init();
	printf("object pos init\n\n");
	if (f == 1)
		return 1;

	gcode gc(true, &addr, &pos);
	printf("object pos created\n");

	while (true)
	{
		
	}


	//scanf("%" SCNx32, &speednum); //uint32_t
	//scanf("%" SCNd32, &stepsnum); //int32_t
	
	printf("\nfinish\n");


	//написать код для тестов gcode
	return 0;
}
