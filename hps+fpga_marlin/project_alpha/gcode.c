#include <gcode.h>
#include <stdio.h>
#include <unistd.h>
#include "configuration.h"

gcode::stepcounter(float х, float у, float х1, float х2)
{
/*И записывается направление движения и время одного микрошага для обоих движков (4 переменные). 
Направление учесть (то есть знак да и дб) - если в дифайне тру на инвертинге, то инвертировать результат
*/
    float k, a, b;
    int rotlength = 40, stepsperrot = 200, microsteps= 16; //количество мм на оборот шкива; количество шагов на оборот двигателя;количество микрошагов на шаг 
    float numofrotations, numofsteps;
    //Int numofmicrosteps; //необходимое для передвижения количество оборотов, шагов, микрошагов 
    int maxspeed = 133; // mm/s ~ 8000 mm/min
    int frequency = 50000000; //тактовая частота двигателя ?????
    float diag; //гипотенуза, относительно которой и высчитывается скорость
    float tdiag, ta, tb; 
    float dx = х1-х;
    float dy = у1-у;
    float da = dx + dу; //first stepper work in mm 
    float db = dx - dу; //second stepper work in mm

    diag = sqrt(dx*dx + dy*dy);
    t = trunc(diag/maxspeed/20^(-12))*20^(-12); //считаем время движения при максимальной скорости для гипотенузы в с, применив принудительное округление до кратности 20пикасекундам
    
    //Зная время, da и db считаем скорость для da, а потом для db. 
    //число оборотов умножаем на количество микрошагов на оборот - получаем количество микрошагов для движения 
    int a_numofmicrosteps = da/rotlength*stepsperrot*microsteps;
    int b_numofmicrosteps = db/rotlength*stepsperrot*microsteps;
    //скорость в микрошагах/с (a_speed, b_speed)
    int a_speed = a_numofmicrosteps/t;
    int b_speed = b_numofmicrosteps/t;

    //как понять какой двигатель а а какой б? Просто определить их дефолтный порядок следования или добавить сменщик двигателей через дифайн. 

    //передача кол-ва микрошагов в верилог с инверсией направления двигателя (знака перед количеством шагов) при необходимости

    *a_numofmicrosteps = da;
    if X_STEPPER_INVERTING
        *a_numofmicrosteps = - *a_numofmicrosteps;

    *b_numofmicrosteps = db;
    if X_STEPPER_INVERTING
        *b_numofmicrosteps = - *b_numofmicrosteps;

    //определяем длительность импульса для одного микрошага, поделив частоту 50 МГц (ЛУЧШЕ ЗАДАТЬ ЕЕ ДИФАЙНОМ) на количество микрошагов
    *a_microsteppulse = frequency/a_numofmicrosteps;
    *b_microsteppulse = frequency/b_numofmicrosteps;

}

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
