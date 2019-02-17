#include <gcode.h>
#include <stdio.h>
#include <unistd.h>
#include "configuration.h"
#include "addresses.h"

int gcode::stepcounter(float х, float у, float х1, float х2, float speed)
{
/*
* Метод рассчитывает необходимые для движения двигателей количество микрошагов и время импульса на один микрошаг 
* и передает эти параметры в верилог
*/
    float a, b;
    float diag; //гипотенуза, относительно которой высчитывается общее время
    float dx = х1-х;
    float dy = у1-у;
    float da = dx + dу; //first stepper work in mm 
    float db = dx - dу; //second stepper work in mm

    diag = sqrt(dx*dx + dy*dy);
    //рассчет общего времени движения в секундах
    //за пройденное расстояние принимается гипотенуза 
    float t = diag/speed;

    //Необходимое для движения количество микрошагов = число оборотов * количество микрошагов за оборот
    *a_numofmicrosteps = da/rotlength*stepsperrot*microsteps;
    *b_numofmicrosteps = db/rotlength*stepsperrot*microsteps;

    //скорость в микрошагах/с (a_speed, b_speed)
    float a_speed = *a_numofmicrosteps/t; 
    float b_speed = *b_numofmicrosteps/t;

    //передача колИчества микрошагов в верилог с инверсией направления двигателя при необходимости
    *a_numofmicrosteps = da;
    if X_STEPPER_INVERTING
        *a_numofmicrosteps = - *a_numofmicrosteps;

    *b_numofmicrosteps = db;
    if X_STEPPER_INVERTING
        *b_numofmicrosteps = - *b_numofmicrosteps;

    //подсчет параметров коррекции для двигателя a
    *a_microsteppulse = roundup(frequency/a_speed);// коэффициент коррекции тактовой частоты, равный количеству необходимых для движения импульсов  
    float a_new_speed = frequency/(*a_microsteppulse); // частота после коррекции
    float a_new_t = abs(*a_numofmicrosteps/a_new_speed); // ранее за время принималась рассчитанная для диагонали величина

    //подсчет параметров коррекции для двигателя b  
    *b_microsteppulse = roundup(frequency/b_speed); // коэффициент коррекции тактовой частоты, равный количеству необходимых для движения импульсов 
    float b_new_speed = frequency/(*b_microsteppulse); // частота после коррекции
    float b_new_t = abs(*b_numofmicrosteps/b_new_speed); // ранее за время принималась рассчитанная для диагонали величина

    //проверка величины корреляции a_new_t и b_new_t для опеределения ошибочных случаев
    //проверка величины корреляции a_new_t с t и b_new_t с t для опеределения ошибочных случаев
    //тк при несовпадении времени один из двигателей производит движение по диагонали 
    //при необходимости произвести коррекцию *a_microsteppulse и *b_microsteppulse

    // приведение типов в воид*
    addr.get_stepper_1_speed() = static_cast<void*>(*a_microsteppulse); //передается количество 20нс импульсов, необходимых для движения
    addr.get_stepper_2_speed() = static_cast<void*>(*b_microsteppulse); //передается количество 20нс импульсов, необходимых для движения
    addr.get_stepper_1_steps() = static_cast<void*>(*a_numofmicrosteps); //передается количество микрошагов, необходимых для движения
    addr.get_stepper_2_steps() = static_cast<void*>(*b_numofmicrosteps); //передается количество микрошагов, необходимых для движения


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
