#include "gcode.h"
#include <stdio.h>
#include <unistd.h>

int gcode::correction(int a_numofmicrosteps, int b_numofmicrosteps, int z_numofmicrosteps, int e_numofmicrosteps,
    float *dx, float *dy, float *dz, float *de)
//метод, который переносит кол-во микрошагов в мм'ы для движков с сохранением знака
{
    float da = *dx + *dy; //расстояние, которое должен обработать двигатель a системы core xy
    float db = *dx - *dy; //расстояние, которое должен обработать двигатель b системы core xy
    float dl; //расстояние, которое должен обработать двигатель на оси z

    da = a_numofmicrosteps*rotlength/stepsperrot/microsteps;
    db = b_numofmicrosteps*rotlength/stepsperrot/microsteps;
    *dx = (da + db)/2;
    *dy = (da - db)/2;
    *de = e_numofmicrosteps*rotlength/stepsperrot/microsteps; 
    dl = z_numofmicrosteps*rotlength/stepsperrot/microsteps;
    *dz = dl*h/circlelength;

    if (debug)
      printf("dx = %f\ndy = %f\ndz = %f\nde = %f\n", dx, dy, dz, de);

return 0;
}

int gcode::calc_steps_speed(float dx, float dy, float dz, float de,
                            //передача скорректированной частоты (скорости):
                            uint32_t* a_microsteppulse, uint32_t* b_microsteppulse,
                            uint32_t* z_microsteppulse, uint32_t* e_microsteppulse,
                            //передача количества микрошагов с учетом знака
                            int32_t* a_numofmicrosteps, int32_t* b_numofmicrosteps,
                            int32_t* z_numofmicrosteps, int32_t* e_numofmicrosteps)
{
    *a_microsteppulse = pos->get_pos_speed();
    *b_microsteppulse = pos->get_pos_speed(); 
    *e_microsteppulse = pos->get_pos_speed(); 
    *z_microsteppulse = pos->get_pos_speed(); 

    *a_numofmicrosteps = ceil(dx);
    *b_numofmicrosteps = ceil(dy);
    *e_numofmicrosteps = ceil(de);
    *z_numofmicrosteps = ceil(dz);

/*
* Метод рассчитывает необходимые для движения двигателей количество микрошагов и время импульса на один микрошаг 
* и передает эти параметры в верилог
*/
    /*float diag; //гипотенуза, относительно которой высчитывается общее время для x и y
    float da = dx + dy; //расстояние, которое должен обработать двигатель a системы core xy
    float db = dx - dy; //расстояние, которое должен обработать двигатель b системы core xy
    diag = sqrt(dx*dx + dy*dy);
    float dl = dz/h*circlelength; //расстояние, которое должен обработать двигатель на оси z

    if (debug)
    {   printf("dx = %.4f\n",dx);
        printf("dy = %.4f\n",dy);
        printf("diag = %.4f\n",diag);
        printf("da = %.4f\n",da);
        printf("db = %.4f\n",db);
        printf("de = %.4f\n",de);
        printf("dz = %.4f\n",dz);
        printf("dl = %.4f\n\n",dl);}
    
    //необходимое для движения количество микрошагов = число оборотов * количество микрошагов за оборот
    *a_numofmicrosteps = trunc(da/rotlength*stepsperrot*microsteps);
    *b_numofmicrosteps = trunc(db/rotlength*stepsperrot*microsteps);
    *e_numofmicrosteps = trunc(de/rotlength*stepsperrot*microsteps);
    *z_numofmicrosteps = trunc(dl/rotlength*stepsperrot*microsteps);
    
    //вывод количества микрошагов, необходимых для движения
    if (debug)
    {   printf("a_numofmicrosteps = %ld\n", (long)(*a_numofmicrosteps));
        printf("b_numofmicrosteps = %ld\n", (long)(*b_numofmicrosteps));
        printf("e_numofmicrosteps = %ld\n", (long)(*e_numofmicrosteps));
        printf("z_numofmicrosteps = %ld\n\n", (long)(*z_numofmicrosteps));}

    //подсчет макс расстояния в микрошагах для опреодоления общего времени 
    //позволяет настроить скорость и время для единовременного завершения работы двигателей
    float max = abs(*z_numofmicrosteps);
    float speed = min(maxspeed, pos->get_pos_speed());
    speed = floor(speed/60);
    float t = abs(dl/speed); //t - общее время при макс скорости в секундах
    if (abs(*a_numofmicrosteps) > max)
    {   max = abs(*a_numofmicrosteps);
        t = abs(da/speed);}
    if (abs(*b_numofmicrosteps) > max)
    {   max = abs(*b_numofmicrosteps);
        t = abs(db/speed);}
    if (abs(*e_numofmicrosteps) >= max)
    {   max = abs(*e_numofmicrosteps);      
        t = abs(de/speed);}
    if (debug) printf("microsteps_max = %f, t = %f\n", max,t);

    //скорость в микрошагах/с 
    float a_speed = (*a_numofmicrosteps)/t; 
    float b_speed = (*b_numofmicrosteps)/t;
    float e_speed = (*e_numofmicrosteps)/t;
    float z_speed = (*z_numofmicrosteps)/t;

    //проверка флага инверсии направления двигателей
    if (X_STEPPER_INVERTING) (*a_numofmicrosteps) = - (*a_numofmicrosteps);
    if (Y_STEPPER_INVERTING) (*b_numofmicrosteps) = - (*b_numofmicrosteps);
    if (E1_STEPPER_INVERTING) (*e_numofmicrosteps) = - (*e_numofmicrosteps);
    if (Z_STEPPER_INVERTING) (*z_numofmicrosteps) = - (*z_numofmicrosteps);
    
    //коэффициент коррекции тактовой частоты по модулю, равный количеству необходимых для движения импульсов 
    *a_microsteppulse = ceil(abs(frequency/a_speed));
    *b_microsteppulse = ceil(abs(frequency/b_speed)); 
    *e_microsteppulse = ceil(abs(frequency/e_speed)); 
    *z_microsteppulse = ceil(abs(frequency/z_speed)); 

    //вывод количества 20нс импульсов, необходимых для движения
    if (debug)
    {   printf("a_microsteppulse = %lu\n\n", (unsigned long)(*a_microsteppulse));
        printf("b_microsteppulse = %lu\n\n", (unsigned long)(*b_microsteppulse));
        printf("e_microsteppulse = %lu\n\n", (unsigned long)(*e_microsteppulse));
        printf("z_microsteppulse = %lu\n\n", (unsigned long)(*z_microsteppulse));}

    //подсчет параметров коррекции
    float a_new_speed = 0,  b_new_speed = 0, e_new_speed = 0, z_new_speed = 0;//частота после коррекции
    float  a_new_t = 0, b_new_t = 0, e_new_t = 0, z_new_t = 0;//время движения после коррекции
    if (da != 0) 
    {   a_new_speed = frequency/(*a_microsteppulse); 
        a_new_t = abs((*a_numofmicrosteps)/a_new_speed);}
    if (db != 0) 
    {   b_new_speed = frequency/(*b_microsteppulse);
        b_new_t = abs((*b_numofmicrosteps)/b_new_speed);} 
    if (de != 0) 
    {   e_new_speed = frequency/(*e_microsteppulse);
        e_new_t = abs((*e_numofmicrosteps)/e_new_speed);}     
    if (dz != 0) 
    {   z_new_speed = frequency/(*z_microsteppulse);
        z_new_t = abs((*z_numofmicrosteps)/z_new_speed);}
    
    if (debug)
    {   printf("initial t = %f\n", t);
        printf("a_new_speed = %f\n",a_new_speed);
        printf("b_new_speed = %f\n",b_new_speed);
        printf("e_new_speed = %f\n",e_new_speed);
        printf("z_new_speed = %f\n\n",z_new_speed);

        printf("a_new_t = %f\n",a_new_t);
        printf("b_new_t = %f\n",b_new_t);
        printf("e_new_t = %f\n",e_new_t);
        printf("z_new_t = %f\n\n",z_new_t);}*/

    
    return 0;
}


uint32_t gcode::voltage_adc(int32_t temp)
{
    if (temp >= 0 and temp <= 300)
    {
        int i = -1;
        while (temptable_11[++i][1] > temp); 
        if (temp != temptable_11[i][1])
            {
                float k = (float)(temp - temptable_11[i][1])/(temptable_11[i-1][1] - temptable_11[i][1]);
                return (round((int)temptable_11[i][0] + (int)(temptable_11[i-1][0] - temptable_11[i][0])*k));
            }
        else
            return temptable_11[i][0];
    }
    else 
        cout << "error: invalid temp" << endl;
    return 0;
}

int32_t gcode::temperature_adc(uint32_t volt)
{
    if (volt >= 110*oversampling_rate and volt <= 3255*oversampling_rate)
    {
        int i = -1;
        while (temptable_11[++i][0] < volt);
        if (volt != temptable_11[i][0])
            {
                float k = (float)((int)(volt - temptable_11[i][0]))/(int)((temptable_11[i-1][0] - temptable_11[i][0]));
                return (round(temptable_11[i][1] + (temptable_11[i-1][1] - temptable_11[i][1])*k));
            }
        else return temptable_11[i][1];
    }
    else 
        cout << "error: invalid volt" << endl;
    return 0;
}


gcode::gcode(bool debug_new, addresses* addr_new, position* pos_new){
    debug = debug_new;
    addr = addr_new;
    pos = pos_new;
}

int gcode::gcode_G0(variable_used<float> x, variable_used<float> y, variable_used<float> z, variable_used<float> e, variable_used<int> speed)
//Холостой ход, без работы инструмента
{
        #if debug
            printf("gcode G0 is running\n");
        #endif

        return gcode_G1(x, y, z, e, speed);
}

int gcode::gcode_G1(variable_used<float> x, variable_used<float> y, variable_used<float> z, variable_used<float> e, variable_used<int> speed)
//Координированное движение по осям X Y Z E
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
        int32_t steps_count1, steps_count2, steps_count3, steps_count4;
        
        if (speed.is_used)
          pos->set_pos_speed(speed.num);

        if (pos->get_pos_type_driving() == POSITION_TYPE_ABSOLUTE)
        {
          if (x.is_used)
        	  dx = x.num - x_old;
          else
            dx = 0;

          if (y.is_used)
        	  dy = y.num - y_old;
          else
            dy = 0;

          if (z.is_used)
        	  dz = z.num - z_old;
          else
            dz = 0;

          if (e.is_used)
        	  de = e.num - e_old;
          else
            de = 0;
        }
        else
        	if (pos->get_pos_type_driving() == POSITION_TYPE_RELATIVE)
        	{
        		if (x.is_used)
              dx = x.num;
            else
              dx = 0;

            if (y.is_used)
              dy = y.num;
            else
              dy = 0;

            if (z.is_used)
              dz = z.num;
            else
              dz = 0;

            if (e.is_used)
              de = e.num;
            else
              de = 0;
        	}
        	else
        		return 1;

        // каретка не может уйти в минус по координатам
        if (x_old + dx < 0)
        	dx = 0 - x_old;
        if (y_old + dy < 0)
        	dy = 0 - y_old;
        if (z_old + dz < 0)
        	dz = 0 - z_old;// До этого перенести в принтер

        //Вызываем функцию для перевода координат в микрошаги и скорость
      	//передаем (dx, dy, dz, de, 
      	//					&speed1, &speed2, &speed3, &speed4,
      	//					&steps_count1, &steps_count2, &steps_count3, &steps_count4)  

        pos->set_pos_x(x_old + dx);
        pos->set_pos_y(y_old + dy);
        pos->set_pos_z(z_old + dz);
        pos->set_pos_e(e_old + de);


        if (calc_steps_speed( dx, dy, dz, de, 
                              &speed1, &speed2, &speed3, &speed4, 
                              &steps_count1, &steps_count2, &steps_count3, &steps_count4) != 0)
          return 2;

        #if DEBUG
            printf("speed1 = %lu\nspeed2 = %lu\nspeed3 = %lu\nspeed4 = %lu\n", speed1, speed2, speed3, speed4);
        #endif
        addr->set_stepper_1_speed(speed1);
        addr->set_stepper_2_speed(speed2);
      	addr->set_stepper_3_speed(speed3);
      	addr->set_stepper_4_speed(speed4);
        #if DEBUG
            printf("steps_count1 = %d\nsteps_count2 = %d\nsteps_count3 = %d\nsteps_count4 = %d\n", steps_count1,steps_count2,steps_count3,steps_count4);
        #endif
      	addr->set_stepper_1_steps_in(steps_count1);
      	addr->set_stepper_2_steps_in(steps_count2);
      	addr->set_stepper_3_steps_in(steps_count3);
      	addr->set_stepper_4_steps_in(steps_count4);

      	bool f = addr->set_flags_in_start_driving_state(true);

      	if (!f)
      		return 1;
        
      	#if DEBUG
            printf("while step is to be succeded\n");
        #endif     
        usleep(3000000);
        
      	while (addr->get_flags_out_stepper_state());

        #if DEBUG
            printf("while step has been succeded\n");
        #endif

        f = addr->set_flags_in_start_driving_state(false);

        if (!f)
          return 2;

        #if DEBUG
            printf("if step has been succeded\n");
        #endif

        usleep(2);
      	//перевод остаток координат в мм
      	//корриктировка за счет остатка
      	correction(  addr->get_stepper_1_steps_out(), addr->get_stepper_2_steps_out(), 
                     addr->get_stepper_3_steps_out(), addr->get_stepper_4_steps_out(), 
                     &dx, &dy, &dz, &de);
      	
        pos->set_pos_x(pos->get_pos_x() - dx);
        pos->set_pos_y(pos->get_pos_y() - dy);
        pos->set_pos_z(pos->get_pos_z() - dz);
        pos->set_pos_e(pos->get_pos_e() - de);

      	addr->set_stepper_1_speed(0);
      	addr->set_stepper_2_speed(0);
      	addr->set_stepper_3_speed(0);
      	addr->set_stepper_4_speed(0);

      	addr->set_stepper_1_steps_in(0);
      	addr->set_stepper_2_steps_in(0);
      	addr->set_stepper_3_steps_in(0);
      	addr->set_stepper_4_steps_in(0);

        if (addr->get_endstop_xmin())
          pos->set_pos_x(0);
        if (addr->get_endstop_ymin())
          pos->set_pos_y(0);
        if (addr->get_endstop_zmin())
          pos->set_pos_z(0);

        return 0;
}

int gcode::gcode_G4(unsigned int s, char c)
//Пауза в секундах/микросекундах
{
        #if debug
            printf("gcode G4 is running\n");
        #endif
        if (c=='S' or c=='s')
            sleep(s);
        else if (c=='P' or c=='p')
            usleep(s);
        else
            return 1;
        return 0;
}

int gcode::gcode_G28(variable_used<float> x, variable_used<float> y, variable_used<float> z, variable_used<int> speed)
//Команда Home - паркуем головку
{//home для трех осей
        #if debug
            printf("gcode G28 is running\n");
        #endif

        if (speed.is_used)
          pos->set_pos_speed(speed.num);

        if (x.is_used)
          addr->set_flags_in_homex(true);
        else
          addr->set_flags_in_homex(false);

        if (y.is_used)
          addr->set_flags_in_homey(true);
        else
          addr->set_flags_in_homey(false);

        if (z.is_used)
          addr->set_flags_in_homez(true);
        else
          addr->set_flags_in_homez(false);

        addr->set_stepper_1_speed(((min(maxspeed, pos->get_pos_speed()))*stepsperrot*microsteps/rotlength)/60);
        addr->set_stepper_2_speed(((min(maxspeed, pos->get_pos_speed()))*stepsperrot*microsteps/rotlength)/60);
        addr->set_stepper_3_speed(((min(maxspeed, pos->get_pos_speed()))*stepsperrot*microsteps/rotlength)/60);

        bool f = addr->set_flags_in_start_homing_state(true);

        if (!f)
          return 1;

        usleep(2);
        
        while (addr->get_flags_out_stepper_state());

        f = addr->set_flags_in_start_homing_state(false);
        
        if (!f)
          return 2;

        if (x.is_used)
          pos->set_pos_x(0);

        if (y.is_used)
          pos->set_pos_y(0);

        if (z.is_used)
          pos->set_pos_z(0);

        addr->set_stepper_1_speed(0);
        addr->set_stepper_2_speed(0);
        addr->set_stepper_3_speed(0);

        return 0;
}

int gcode::gcode_G90()
//Использовать абсолютные координаты
{
        #if debug
            printf("gcode G90 is running\n");
        #endif

        pos->set_pos_type_driving(POSITION_TYPE_ABSOLUTE);

        return 0;
}

int gcode::gcode_G91()
//Использовать относительные координаты
{
        #if debug
            printf("gcode G91 is running\n");
        #endif

        pos->set_pos_type_driving(POSITION_TYPE_RELATIVE);

        return 0;
}

int gcode::gcode_G92(variable_used<float> x, variable_used<float> y, variable_used<float> z, variable_used<float> e)
//Установить текущую заданную позицию
{
        #if debug
            printf("gcode G92 is running\n");
        #endif


        if (x.is_used)
              pos->set_pos_x(x.num);
        if (y.is_used)
              pos->set_pos_y(y.num);
        if (z.is_used)
              pos->set_pos_z(z.num);
        if (e.is_used)
              pos->set_pos_e(e.num);

        return 0;
}

int gcode::gcode_M17()
//Подать ток на двигатели (двигатели руками не вращаются)
{
        #if debug
            printf("gcode M17 is running\n");
        #endif

        addr->set_flags_in_stepper_enabled(true);

        return 0;
}

int gcode::gcode_M18()
//Убрать ток с двигателей (двигатели можно вращать руками)
{
        #if debug
            printf("gcode M18 is running\n");
        #endif

        addr->set_flags_in_stepper_enabled(false);

        return 0;
}

int gcode::gcode_M82()
//Установить экструдер в абсолютную систему координат
{
        #if debug
            printf("gcode M82 is running\n");
        #endif

        pos->set_pos_type_extruders(POSITION_TYPE_ABSOLUTE);

        return 0;
}

int gcode::gcode_M83()
//Установить экструдер в относительную систему координат
{
        #if debug
            printf("gcode M83 is running\n");
        #endif

        pos->set_pos_type_extruders(POSITION_TYPE_RELATIVE);

        return 0;
}

int gcode::gcode_M104(int32_t temp)
//Ожидание нагрева экструдера до определенной температуры
{
        //Отключить удержание экструдера
        #if debug
            printf("gcode M104 is running\n");
        #endif

        addr->set_flags_in_heat_extruder_hold(false);
        addr->set_flags_in_heat_extruder(false);
        addr->set_temp_e1_upper(voltage_adc(temp));
        addr->set_flags_in_heat_extruder(true);
        return 0;
}

int gcode::gcode_M109(int32_t temp)
//Нагреть экструдер и удерживать температуру
{
        //Отключить нагрев экструдера
        #if debug
            printf("gcode M109 is running\n");
        #endif

        addr->set_flags_in_heat_extruder(false);
        addr->set_flags_in_heat_extruder_hold(false);
        addr->set_temp_e1_bottom(voltage_adc(temp - TEMP_DELTA));
        addr->set_temp_e1_upper(voltage_adc(temp + TEMP_DELTA));
        addr->set_flags_in_heat_extruder_hold(true);
        usleep(2);
        while (addr->get_flags_out_heating_extruder());
        return 0;
}

int32_t gcode::gcode_M105(int num_e)
//Получить текущую температуру экструдера
{
        //Отключить удержание стола
        #if debug
            printf("gcode M105 is running\n");
        #endif
        if (num_e == 0)
          return temperature_adc(addr->get_temp_bed());
        if (num_e == 1)
          return temperature_adc(addr->get_temp0());
        if (num_e == 2)
          return temperature_adc(addr->get_temp1());

        return 0;
}

int gcode::gcode_M140(int32_t temp)
//Ожидание нагрева стола до определенной температуры
{ 
        //Отключить нагрев стола
        #if debug
            printf("gcode M140 is running\n");
        #endif

        addr->set_flags_in_heat_bed_hold(false);
        addr->set_flags_in_heat_bed(false);
        addr->set_temp_bed_upper(voltage_adc(temp));
        addr->set_flags_in_heat_bed(true);
        return 0;
}

int gcode::gcode_M190(int32_t temp)
//Нагреть стол и удерживать температуру
{
        #if debug
            printf("gcode M190 is running\n");
        #endif

        addr->set_flags_in_heat_bed(false);
        addr->set_flags_in_heat_bed_hold(false);
        addr->set_temp_bed_bottom(voltage_adc(temp - TEMP_DELTA));
        addr->set_temp_bed_upper(voltage_adc(temp + TEMP_DELTA));
        addr->set_flags_in_heat_bed_hold(true);
        usleep(2);
        while (addr->get_flags_out_heating_bed());

        return 0;
}