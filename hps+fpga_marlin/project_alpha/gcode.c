#include <gcode.h>
#include <stdio.h>
#include <unistd.h>
#include "configuration.h"

gcode::gcode(){
}

bool gcode::gcode_G0(float x, float y, float z, float e)
{
        #if DEBUG
            printf("gcode G0 is running\n");
        #endif

        return gcode_G1(x, y, z, e);
}

bool gcode::gcode_G1(float x, float y, float z, float e)
{
        #if DEBUG
            printf("gcode G1 is running\n");
        #endif
            
        /*
            Код для выполнения
        */
        return true;
}

bool gcode::gcode_G4(unsigned int s, char c)
{
        #if DEBUG
            printf("gcode G4 is running\n");
        #endif
        if (c=='S' or c=='s')
            usleep(1000*s);
        else if (c=='P' or c=='p')
            usleep(s);
        else
            return false;
        return true;
}

bool gcode::gcode_G5(float x, float y, float z, float e)
{
        #if DEBUG
            printf("gcode G5 is running\n");
        #endif

        /*
            Код для выполнения
        */
        return true;
}
