#include "gcode.h"
#include <stdio.h>
#include <unistd.h>


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

gcode::gcode(bool debug_new, addresses* addr_new, position* pos_new){
    debug = debug_new;
    addr = addr_new;
    pos = pos_new;
    fl.init(pos);
}

int gcode::gcode_G0(float x, float y, float z, float e, float speed)
{
        #if DEBUG
            printf("gcode G0 is running\n");
        #endif

        return gcode_G1(x, y, z, e, speed);
}

int gcode::gcode_G1(float x, float y, float z, float e, float speed)
{
        #if DEBUG
            printf("gcode G1 is running\n");
        #endif
        
        float x_old = pos->get_pos_x();
        float y_old = pos->get_pos_y(); 
        float z_old = pos->get_pos_z(); 
        float e_old = pos->get_pos_e();  
        float dx;
        float dy; 
        float dz; 
        float de;  
        uint32_t speed1, speed2, speed3, speed4;
        uint32_t steps_count1, steps_count2, steps_count3, steps_count4;

        if (pos->get_pos_type_driving == POSITION_TYPE_ABSOLUTE)
        {
        	dx = x - x_old;
        	dy = y - y_old;
        	dz = z - z_old;
        	de = e - e_old;
        }
        else
        	if (pos->get_pos_type_driving == POSITION_TYPE_RELATIVE)
        	{
        		dx = x;
        		dy = y;
        		dz = z;
        		de = e;
        	}
        	else
        		return 1;

        //Вызываем функцию для перевода координат в микрошаги и скорость
      	//передаем (dx, dy, dz, de, 
      	//					&speed1, &speed2, &speed3, &speed4,
      	//					&steps_count1, &steps_count2, &steps_count3, &steps_count4)  

        addr->set_stepper_1_speed(speed1);
        addr->set_stepper_2_speed(speed2);
      	addr->set_stepper_3_speed(speed3);
      	addr->set_stepper_4_speed(speed4);

      	addr->set_stepper_1_steps_in(steps_count1);
      	addr->set_stepper_2_steps_in(steps_count2);
      	addr->set_stepper_3_steps_in(steps_count3);
      	addr->set_stepper_4_steps_in(steps_count4);

      	bool f = fl.set_start_driving_state(true);

      	if (!f)
      		return 1;

      	while ((addr->get_stepper_1_steps_out() == 0) & (addr->get_stepper_2_steps_out() == 0) & (addr->get_stepper_3_steps_out() == 0) & (addr->get_stepper_4_steps_out() == 0))

      	f = fl.set_start_driving_state(false);
      	
      	if (!f)
      		return 2;

      	while ((fl.get_stepper_state_xy()) | (fl.get_stepper_state_z()) | (fl.get_stepper_state_e()));

      	//перевод остаток координат в мм
      	//корриктировка за счет остатка
      	//корректировка за счет correction_x и correction_y
      	
      	

      	addr->set_stepper_1_speed(0);
      	addr->set_stepper_2_speed(0);
      	addr->set_stepper_3_speed(0);
      	addr->set_stepper_4_speed(0);

      	addr->set_stepper_1_steps_in(0);
      	addr->set_stepper_2_steps_in(0);
      	addr->set_stepper_3_steps_in(0);
      	addr->set_stepper_4_steps_in(0);

        return 0;
}

int gcode::gcode_G4(unsigned int s, char c)
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

int gcode::gcode_G5(float x, float y, float z, float e)
{
        #if DEBUG
            printf("gcode G5 is running\n");
        #endif

        /*
            Код для выполнения
        */
        return true;
}
