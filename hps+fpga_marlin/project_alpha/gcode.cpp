#include <gcode.h>
#include <stdio.h>
#include <unistd.h>
#include "configuration.h"
#include "addresses.h"
#include <cmath>
#include <inttypes.h>
#include <iostream>
using namespace std;

int gcode::correction(int a_numofmicrosteps, int b_numofmicrosteps, int z_numofmicrosteps, int e_numofmicrosteps,
    float &dx, float &dy, float &dz, float &de)
//метод, который переносит кол-во микрошагов в мм'ы для движков с сохранением знака
{
    float da = dx + dy; //first stepper work in mm 
    float db = dx - dy; //second stepper work in mm
    float dl;

    da = a_numofmicrosteps*rotlength/stepsperrot/microsteps;
    db = b_numofmicrosteps*rotlength/stepsperrot/microsteps;
    dx = (da + db)/2;
    dy = (da - db)/2;
    de = e_numofmicrosteps*rotlength/stepsperrot/microsteps;
    dl = z_numofmicrosteps*rotlength/stepsperrot/microsteps;
    dz = dl*h/circlelength;

    if debug
    {
        printf("dx = %f\ndy = %f\ndz = %f\nde = %f\n", dx, dy, dz, de);
    }
return 0;
}

int gcode::calc_steps_speed(float dх, float dу, float dz, float de, 
    //передача скорректированной частоты (скорости):
    uint32_t* a_microsteppulse, uint32_t* b_microsteppulse, uint32_t* z_microsteppulse, uint32_t* e_microsteppulse, 
    //передача количества микрошагов с учетом знака
    int32_t* a_numofmicrosteps, int32_t* b_numofmicrosteps, int32_t* z_numofmicrosteps, int32_t* e_numofmicrosteps)
{/*
* Метод рассчитывает необходимые для движения двигателей количество микрошагов и время импульса на один микрошаг 
* и передает эти параметры в верилог
*/
    float diag; //гипотенуза, относительно которой высчитывается общее время для x и y
    float da = dx + dу; //first stepper work in mm 
    float db = dx - dу; //second stepper work in mm

    diag = sqrt(dx*dx + dy*dy);
    float dl = dz/h*circlelength; //расстояние, которое должен обработать двигатель на оси z
    //за пройденное расстояние принимается гипотенуза 

    if debug
    {
        printf("dx = %.4f\n",dx);
        printf("dy = %.4f\n",dy);
        printf("diag = %.4f\n",diag);
        printf("da = %.4f\n",da);
        printf("db = %.4f\n",db);
        printf("de = %.4f\n",de);
        printf("dz = %.4f\n",dz);
        printf("dl = %.4f\n\n",dl); 
    }
    

    //Необходимое для движения количество микрошагов = число оборотов * количество микрошагов за оборот
    *a_numofmicrosteps = trunc(da/rotlength*stepsperrot*microsteps);//на экран подавать нецелые координаты + координаты должны быть правильными
    *b_numofmicrosteps = trunc(db/rotlength*stepsperrot*microsteps);//+ выводить новые координаты с учетом округления
    *e_numofmicrosteps = trunc(de/rotlength*stepsperrot*microsteps);//+ выводить новые координаты с учетом округления
    *z_numofmicrosteps = trunc(dl/rotlength*stepsperrot*microsteps);//+ выводить новые координаты с учетом округления
    
    //подсчет макс расстояния в микрошагах для преодоления по всем двигателям
    //позволяет настроить скорость и время относительно макс дельты
    float max = abs(*z_numofmicrosteps);
    float t = abs(dl/maxspeed); //t - общее время при макс скорости в секундах
    if (abs(*a_numofmicrosteps) > max)
    {   max = abs(*a_numofmicrosteps);
        t = abs(da/maxspeed);}
    if (abs(*b_numofmicrosteps) > max)
    {   max = abs(*b_numofmicrosteps);
        t = abs(db/maxspeed);}
    if (abs(*e_numofmicrosteps) >= max)
    {   max = abs(*e_numofmicrosteps);      
        t = abs(de/maxspeed);}
    if debug printf("microsteps_max = %f, t = %f\n", max,t);
    //далее рассчитаем скорость и микрошаги относительно найденного времени

    //скорость в микрошагах/с (a_speed, b_speed)
    float a_speed = (*a_numofmicrosteps)/t; 
    float b_speed = (*b_numofmicrosteps)/t;

    //передача колИчества микрошагов в верилог с инверсией направления двигателя при необходимости
    if (X_STEPPER_INVERTING)
        (*a_numofmicrosteps) = - (*a_numofmicrosteps);

    if (Y_STEPPER_INVERTING)
        (*b_numofmicrosteps) = - (*b_numofmicrosteps);

    //подсчет параметров коррекции для двигателя a
    *a_microsteppulse = ceil(abs(frequency/a_speed));// коэффициент коррекции тактовой частоты по модулю, равный количеству необходимых для движения импульсов  
    float a_new_speed = 0, a_new_t = 0;
    if (da != 0) 
    {
        a_new_speed = frequency/(*a_microsteppulse); // частота после коррекции
        a_new_t = abs((*a_numofmicrosteps)/a_new_speed); // ранее за время принималась рассчитанная для диагонали величина
    }
    
    //подсчет параметров коррекции для двигателя b  
    *b_microsteppulse = ceil(abs(frequency/b_speed)); // коэффициент коррекции тактовой частоты по модулю, равный количеству необходимых для движения импульсов 
    float b_new_speed = 0, b_new_t = 0;
    if (db != 0) 
    {
        b_new_speed = frequency/(*b_microsteppulse); // частота после коррекции
        b_new_t = abs((*b_numofmicrosteps)/b_new_speed); // ранее за время принималась рассчитанная для диагонали величина
    }

    //на экран подавать нецелые координаты + координаты должны быть правильными
    //+ выводить новые координаты с учетом округления
    if debug
    {
        printf("initial t = %f\n", t);
        printf("a_new_speed = %f\n",a_new_speed);
        printf("a_new_t = %f\n",a_new_t);
        printf("b_new_speed = %f\n",b_new_speed);
        printf("b_new_t = %f\n",b_new_t);
    }

    //скорость в микрошагах/с (a_speed, b_speed)
    float e_speed = (*e_numofmicrosteps)/t;

    //передача количества микрошагов в верилог с инверсией направления двигателя при необходимости
    if (E_STEPPER_INVERTING)
        (*e_numofmicrosteps) = - (*e_numofmicrosteps);

    //подсчет параметров коррекции для двигателя e  
    *e_microsteppulse = ceil(abs(frequency/e_speed)); // коэффициент коррекции тактовой частоты по модулю, равный количеству необходимых для движения импульсов 
    float e_new_speed = 0, e_new_t = 0;
    if (de != 0) 
    {
        e_new_speed = frequency/(*e_microsteppulse); // частота после коррекции
        e_new_t = abs((*e_numofmicrosteps)/e_new_speed); // ранее за время принималась рассчитанная для диагонали величина
    }
    
    if debug
    {
        printf("e_numofmicrosteps = %ld\n", (long)(*e_numofmicrosteps));//выводится количество микрошагов, необходимых для движения
        printf("e_microsteppulse = %lu\n\n", (unsigned long)(*e_microsteppulse));//выводится количество 20нс импульсов, необходимых для движения
        printf("e_new_speed = %f\n",e_new_speed);
        printf("e_new_t = %f\n",e_new_t);
    }
        //ROTLENGTH ДЛЯ ДВИГАТЕЛЯ НА ЗЭД ВРОДЕ БОЛЬШЕ 40 ММ!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

    //скорость в микрошагах/с (a_speed, b_speed)
    float z_speed = (*z_numofmicrosteps)/t;

    //передача количества микрошагов в верилог с инверсией направления двигателя при необходимости
    if (Z_STEPPER_INVERTING)
        (*z_numofmicrosteps) = - (*z_numofmicrosteps);

    //подсчет параметров коррекции для двигателя z 
    *z_microsteppulse = ceil(abs(frequency/z_speed)); // коэффициент коррекции тактовой частоты по модулю, равный количеству необходимых для движения импульсов 
    float z_new_speed = 0, z_new_t = 0;
    if (dz != 0) 
    {
        z_new_speed = frequency/(*z_microsteppulse); // частота после коррекции
        z_new_t = abs((*z_numofmicrosteps)/z_new_speed); // ранее за время принималась рассчитанная для диагонали величина
    }
    if debug
    {
        printf("z_numofmicrosteps = %ld\n", (long)(*z_numofmicrosteps));//выводится количество микрошагов, необходимых для движения
        printf("z_microsteppulse = %lu\n\n", (unsigned long)(*z_microsteppulse));//выводится количество 20нс импульсов, необходимых для движения
        printf("z_new_speed = %f\n",z_new_speed);
        printf("z_new_t = %f\n",z_new_t);
    }
    
    return 0;
}

gcode::gcode(bool debug, addresses addr){
    this.debug = debug;
    this.addr = addr;
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
