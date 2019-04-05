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

	x.num = 10;
	y.num = 10;
	z.num = 10;
	e.num = 10;
	speed.num = 500000;
	//gc.gcode_G1(x, y, z, e, speed);/*
	//x, y, z, e, speed
	cout << pos.get_pos_type_driving() << endl;
	gc.gcode_G90();
	cout << "abs " << pos.get_pos_type_driving() << endl;
	gc.gcode_G91();
	cout << "rel " << pos.get_pos_type_driving() << endl;
	//scanf("%" SCNx32, &speednum); //uint32_t
	//scanf("%" SCNd32, &stepsnum); //int32_t*/

	/*cout << pos.get_pos_x() << endl << pos.get_pos_y() << endl << pos.get_pos_z() << endl << pos.get_pos_e() << endl;
	x.num = 12;
	y.num = 14;
	z.num = 15;
	e.num = 16;
	gc.gcode_G92(x,y,z,e);
	cout << pos.get_pos_x() << endl << pos.get_pos_y() << endl << pos.get_pos_z() << endl << pos.get_pos_e() << endl;*/

	cout << "extr pos: " << pos.get_pos_type_extruders() << endl;
	gc.gcode_M82();
	cout << "abs " << pos.get_pos_type_extruders() << endl;
	gc.gcode_M83();
	cout << "rel " << pos.get_pos_type_extruders() << endl;

	addr.set_flags_in_start_driving_state(false);
	
	printf("\nfinish\n");


	//написать код для тестов gcode
	return 0;
}
