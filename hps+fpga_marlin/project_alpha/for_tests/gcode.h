#ifndef gcode_H
#define gcode_H

#include "addresses.h"
#include "position.h"
#include "configuration.h"
#include <string>
#include <math.h>

class gcode
{
	private:
    int is_debug;
    int32_t *a_numofmicrosteps;
    int32_t *b_numofmicrosteps;
    uint32_t *a_microsteppulse;
    uint32_t *b_microsteppulse;
    addresses* addr;
    position* pos;
    bool debug = false;

	public:
    int correction( int a_numofmicrosteps, int b_numofmicrosteps, 
    								int z_numofmicrosteps, int e_numofmicrosteps,
    								float *dx, float *dy, float *dz, float *de);

    int calc_steps_speed( float dx, float dy, float dz, float dy, 
    											uint32_t* a_microsteppulse, uint32_t* b_microsteppulse, 
    											uint32_t* z_microsteppulse, uint32_t* e_microsteppulse, 
    											int32_t* a_numofmicrosteps, int32_t* b_numofmicrosteps, 
    											int32_t* z_numofmicrosteps, int32_t* e_numofmicrosteps);

    uint32_t voltage_adc(int32_t temp);
		int32_t temperature_adc(uint32_t volt);

    gcode(bool debug_new, addresses* addr_new, position* pos_new);
    
    int gcode_G0(variable_used<float> x, variable_used<float> y, variable_used<float> z, variable_used<float> e, variable_used<int> speed);
    int gcode_G1(variable_used<float> x, variable_used<float> y, variable_used<float> z, variable_used<float> e, variable_used<int> speed);
    int gcode_G4(unsigned int s, char c);
//  int gcode_G5();
//  int gcode_G6();
//  int gcode_G10();
//  int gcode_G11();
//  int gcode_G12();
//  int gcode_G17();
//  int gcode_G18();
//  int gcode_G19();
//  int gcode_G20();
//  int gcode_G21();
//  int gcode_G26();
//  int gcode_G27();
	  int gcode_G28(variable_used<float> x, variable_used<float> y, variable_used<float> z, variable_used<int> speed);
//  int gcode_G29();
//  int gcode_G30();
//  int gcode_G31();
//  int gcode_G32();
//  int gcode_G33();
//  int gcode_G38();
//  int gcode_G42();
	  int gcode_G90();
	  int gcode_G91();
	  int gcode_G92(variable_used<float> x, variable_used<float> y, variable_used<float> z, variable_used<float> e);
//  int gcode_G95();
//  int gcode_G96();

//  int gcode_M0();
//  int gcode_M1();
//  int gcode_M3();
//  int gcode_M4();
//  int gcode_M5();
	  int gcode_M17();
	  int gcode_M18();
//  int gcode_M20();
//  int gcode_M21();
//  int gcode_M22();
//  int gcode_M23();
//  int gcode_M24();
//  int gcode_M25();
//  int gcode_M26();
//  int gcode_M27();
//  int gcode_M28();
//  int gcode_M29();
//  int gcode_M30();
//  int gcode_M31();
//  int gcode_M32();
//  int gcode_M33();
//  int gcode_M34();
//  int gcode_M42();
//  int gcode_M43();
//  int gcode_M48();
//  int gcode_M75();
//  int gcode_M76();
//  int gcode_M77();
//  int gcode_M78();
//  int gcode_M80();
//  int gcode_M81();
	  int gcode_M82();
	  int gcode_M83();
//  int gcode_M84();
//  int gcode_M85();
//  int gcode_M92();
//  int gcode_M100();
	  int gcode_M104(int32_t temp);
	  int32_t gcode_M105(int num_e);
//  int gcode_M106();
//  int gcode_M107();
//  int gcode_M108();
	  int gcode_M109(int32_t temp);
//  int gcode_M110();
//  int gcode_M111();
//  int gcode_M112();
//  int gcode_M113();
//  int gcode_M114();
//  int gcode_M115();
//  int gcode_M117();
//  int gcode_M118();
//	int gcode_M119();
//  int gcode_M120();
//  int gcode_M121();
//  int gcode_M122();
//  int gcode_M125();
//  int gcode_M126();
//  int gcode_M127();
//  int gcode_M128();
//  int gcode_M129();
	  int gcode_M140(int32_t temp);
//  int gcode_M145();
//  int gcode_M149();
//  int gcode_M150();
//  int gcode_M155();
//  int gcode_M163();
//  int gcode_M164();
//  int gcode_M165();
	  int gcode_M190(int32_t temp);
//  int gcode_M200();
//  int gcode_M201();
//  int gcode_M202();
//  int gcode_M203();
//  int gcode_M204();
//  int gcode_M205();
//  int gcode_M206();
//  int gcode_M207();
//  int gcode_M208();
//  int gcode_M209();
//  int gcode_M211();
//  int gcode_M218();
//  int gcode_M220();
//  int gcode_M221();
//  int gcode_M226();
//  int gcode_M240();
//  int gcode_M250();
//  int gcode_M260();
//  int gcode_M261();
//  int gcode_M280();
//  int gcode_M290();
//  int gcode_M300();
//  int gcode_M301();
//  int gcode_M302();
//  int gcode_M303();
//  int gcode_M304();
//  int gcode_M350();
//  int gcode_M351();
//  int gcode_M355();
//  int gcode_M380();
//  int gcode_M381();
//  int gcode_M400();
//  int gcode_M401();
//  int gcode_M402();
//  int gcode_M404();
//  int gcode_M405();
//  int gcode_M406();
//  int gcode_M407();
//  int gcode_M410();
//  int gcode_M420();
//  int gcode_M421();
//  int gcode_M428();
//  int gcode_M500();
//  int gcode_M501();
//  int gcode_M502();
//  int gcode_M503();
//  int gcode_M540();
//  int gcode_M600();
//  int gcode_M603();
//  int gcode_M605();
//  int gcode_M665();
//  int gcode_M666();
//  int gcode_M701();
//  int gcode_M702();
//  int gcode_M851();
//  int gcode_M852();
//  int gcode_M860();
//  int gcode_M861();
//  int gcode_M862();
//  int gcode_M863();
//  int gcode_M864();
//  int gcode_M865();
//  int gcode_M866();
//  int gcode_M867();
//  int gcode_M868();
//  int gcode_M869();
//  int gcode_M900();
//  int gcode_M906();
//  int gcode_M907();
//  int gcode_M908();
//  int gcode_M909();
//  int gcode_M910();
//  int gcode_M911();
//  int gcode_M912();
//  int gcode_M913();
//  int gcode_M914();

//  int gcode_M360();
//  int gcode_M361();
//  int gcode_M362();
//  int gcode_M363();
//  int gcode_M364();

//  int gcode_M928();
//  int gcode_M999();

};

#endif //gcode_H
