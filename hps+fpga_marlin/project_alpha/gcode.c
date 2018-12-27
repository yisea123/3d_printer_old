#include <gcode.h>
#include <stdio.h>

gcode::gcode(bool debug){
    is_debug = debug;
}

bool gcode::gcode_G0(float x, float y, float z, float e){
        #if is_debug
            printf("gcode G0 is running\n");
        #endif
        return gcode_G1(x, y, z, e);
}

bool gcode::gcode_G1(float x, float y, float z, float e){
        #if is_debug
            printf("gcode G1 is running\n");
        #endif
        /*
            Код для выполнения
        */
        return true;
}

bool gcode::gcode_G4(int s, char c){
        #if is_debug
            printf("gcode G4 is running\n");
        #endif
        if (c=='S' or c=='s')
            sleep(s*1000)
        else if (c=='P' or c=='p')\
            sleep(s);
        else
            return false;
        return true;
}

bool gcode::gcode_G5(float x, float y, float z, float e){
        #if is_debug
            printf("gcode G5 is running\n");
        #endif
        /*
            Код для выполнения
        */
        return true;
}
