#include <stdio.h>
#include "addresses.h"
#include "position.h"
#include "gcode.h"
#include "inttypes.h"
#include "configuration.h"

#include <iostream>

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

	/*while (true)
	{
		
	}
*/	variable_used<float> x, y, z, e;
	variable_used<int> speed;
	x.is_used = true;
	y.is_used = true;
	z.is_used = true;
	e.is_used = true;
	speed.is_used = true;

	x.num = 1000;
	y.num = 1000;
	z.num = 1000;
	e.num = 1000;
	speed.num = 5000;
        gc.gcode_M140(100);
	printf("\nfinish\n");


	//написать код для тестов gcode
	return 0;
}
