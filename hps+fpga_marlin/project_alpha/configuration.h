#define DEBUG true;

/*
* Дефолтные параметры шаговых двигателей
*/
#define rotlength 40; // количество мм на оборот шкива
#define stepsperrot 200; // количество шагов на оборот двигателя
#define microsteps 16; // количество микрошагов на шаг 
#define maxspeed 133; // максимальная скорость mm/s ~ XY_PROBE_SPEED = 8000 mm/min
#define frequency 50000000; //тактовая частота двигателя 

#define circlelength 8;//длина одного оборота винта оси Z
#define h 2;//расстояние между соседними витками винта оси Z


#define X_MIN_ENDSTOP_INVERTING true // set to true to invert the logic of the endstop.
#define Y_MIN_ENDSTOP_INVERTING true // set to true to invert the logic of the endstop.
#define Z_MIN_ENDSTOP_INVERTING true // set to true to invert the logic of the endstop.
#define X_MAX_ENDSTOP_INVERTING true // set to true to invert the logic of the endstop.
#define Y_MAX_ENDSTOP_INVERTING true // set to true to invert the logic of the endstop.
#define Z_MAX_ENDSTOP_INVERTING true // set to true to invert the logic of the endstop.

#define X_STEPPER_INVERTING true // set to true to invert the logic of the stepper.
#define Y_STEPPER_INVERTING true // set to true to invert the logic of the stepper.
#define Z_STEPPER_INVERTING true // set to true to invert the logic of the stepper.
#define E_STEPPER_INVERTING true // set to true to invert the logic of the stepper.
/*
* Default Axis Steps Per Unit (steps/mm) 
* Override with M92 
* X, Y, Z, E0 [, E1[, E2[, E3[, E4]]]] 
*/ 
#define DEFAULT_AXIS_STEPS_PER_UNIT {(200*16)/(2.0*20), (200*16)/(2.0*20), 200*8/2.0, 15} 

// X and Y axis travel speed (mm/m) between probes 
#define XY_PROBE_SPEED 8000
 
// Homing speeds (mm/m) 
#define HOMING_FEEDRATE_XY (50*60) 
#define HOMING_FEEDRATE_Z (4*60)

