#define DEBUG true;


#define X_MIN_ENDSTOP_INVERTING true // set to true to invert the logic of the endstop.
#define Y_MIN_ENDSTOP_INVERTING true // set to true to invert the logic of the endstop.
#define Z_MIN_ENDSTOP_INVERTING true // set to true to invert the logic of the endstop.
#define X_MAX_ENDSTOP_INVERTING true // set to true to invert the logic of the endstop.
#define Y_MAX_ENDSTOP_INVERTING true // set to true to invert the logic of the endstop.
#define Z_MAX_ENDSTOP_INVERTING true // set to true to invert the logic of the endstop.

#define X_STEPPER_INVERTING true // set to true to invert the logic of the stepper.
#define Y_STEPPER_INVERTING true // set to true to invert the logic of the stepper.
#define Z_STEPPER_INVERTING true // set to true to invert the logic of the stepper.

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

