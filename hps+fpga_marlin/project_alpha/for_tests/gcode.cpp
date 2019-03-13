#include "gcode.h"
#include <stdio.h>
#include <unistd.h>

gcode::gcode(bool debug_new, addresses* addr_new, position* pos_new){
    debug = debug_new;
    addr = addr_new;
    pos = pos_new;
    fl.init(pos);
}

//Парсер для запуска команды gcode по строке
int gcode::str_to_gcode(string s)
{
	string command;
	command = 
}

int gcode::gcode_G0(float x, float y, float z, float e, float speed)
{
        #if debug
            printf("gcode G0 is running\n");
        #endif

        return gcode_G1(x, y, z, e, speed);
}

int gcode::gcode_G1(float x, float y, float z, float e, float speed)
{
        #if debug
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

        //в минус не может уйти
        if (pos->get_pos_type_driving() == POSITION_TYPE_ABSOLUTE)
        {
        	dx = x - x_old;
        	dy = y - y_old;
        	dz = z - z_old;
        	de = e - e_old;
        }
        else
        	if (pos->get_pos_type_driving() == POSITION_TYPE_RELATIVE)
        	{
        		dx = x;
        		dy = y;
        		dz = z;
        		de = e;
        	}
        	else
        		return 1;

        // каретка не может уйти в минус по координатам
        if (x_old + dx < 0)
        	dx = 0 - x_old;
        if (y_old + dy < 0)
        	dy = 0 - y_old;
        if (z_old + dz < 0)
        	dz = 0 - z_old;

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

      	bool f = fl.set_flags_in_start_driving_state(true);

      	if (!f)
      		return 1;

      	while ((addr->get_stepper_1_steps_out() == 0) & 
      				 (addr->get_stepper_2_steps_out() == 0) & 
      				 (addr->get_stepper_3_steps_out() == 0) & 
      				 (addr->get_stepper_4_steps_out() == 0))

      	f = fl.set_flags_in_start_driving_state(false);
      	
      	if (!f)
      		return 2;

      	while ((fl.get_flags_out_stepper_state_xy()) | (fl.get_flags_out_stepper_state_z()) | (fl.get_flags_out_stepper_state_e()));

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
      	//Добавить учет концевиков

        return 0;
}

int gcode::gcode_G4(unsigned int s, char c)
{
        #if debug
            printf("gcode G4 is running\n");
        #endif
        if (c=='S' or c=='s')
            usleep(1000*s);
        else if (c=='P' or c=='p')
            usleep(s);
        else
            return 0;
        return 1;
}

int gcode::gcode_G5(float x, float y, float z, float e)
{
        #if debug
            printf("gcode G5 is running\n");
        #endif

        /*
            Код для выполнения
        */
        return 1;
}
