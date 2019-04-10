#ifndef ADDRESSES_H
#define ADDRESSES_H

#define HW_REGS_BASE (ALT_STM_OFST)
#define HW_REGS_SPAN (0x04000000)
#define HW_REGS_MASK (HW_REGS_SPAN - 1)

#define bit_count_uint32 32

#include "inttypes.h"
#include "configuration.h"
#include "temp_11.h"
#include <iostream>
#include <cmath>


//Flags
//=======================================================
// Описание битов флагов
// flags_in[0]:  вкл/выкл stepper (0 - двигатель выключен, 1 - двигатель включен)
// flags_in[1]:  выполнить движение corexy, оси z и экструдера (0 - игнорировать количество шагов, 1 - выполнить движение по количеству шагов)
// flags_in[2]:  команда HOME по оси x
// flags_in[3]:  команда HOME по оси y
// flags_in[4]:  команда HOME по оси z
// flags_in[5]:  выполнить команду HOME (0 - игнорировать количество шагов, 1 - выполнить команду HOME)

// flags_in[6]:	нагреть стол до указанной температуры
// flags_in[7]:	нагреть стол до указанной температуры и ее удержание
//
// flags_in[8]:	нагреть экструдер до указанной температуры
// flags_in[9]:	нагреть экструдер до указанной температуры и ее удержание
// -------------
// flags_out[0]:  выполняется движение по осям или экструдеру (0 - двигатель стоит, 1 - выполняется повор)
// flags_out[1]:	происходит нагрев стола
// flags_out[2]:	происходит нагрев экструдера
//=======================================================

//flags_in
#define flags_in_stepper_enabled 0
#define flags_in_start_driving_state 1
#define flags_in_home_x 2
#define flags_in_home_y 3
#define flags_in_home_z 4
#define flags_in_start_homing_state 5
#define flags_in_heat_bed 6
#define flags_in_heat_bed_hold 7
#define flags_in_heat_extruder 8
#define flags_in_heat_extruder_hold 9

//flags_out
#define flags_out_stepper_state 0
#define flags_out_heating_bed 1
#define flags_out_heating_extruder 2

//configuration_1
//=======================================================
//	[0]:  инверсия концевика xmin (0 - нет инверсии, 1 - есть инверсия)
//	[1]:  инверсия концевика xmax (0 - нет инверсии, 1 - есть инверсия)
//	[2]:  инверсия концевика ymin (0 - нет инверсии, 1 - есть инверсия)
//	[3]:  инверсия концевика ymax (0 - нет инверсии, 1 - есть инверсия)
//	[4]:  инверсия концевика zmin (0 - нет инверсии, 1 - есть инверсия)
//	[5]:  инверсия концевика zmax (0 - нет инверсии, 1 - есть инверсия)
//
//	[6]:	инверсия двигателя 1 (corexy)
//	[7]:	инверсия двигателя 2 (corexy)
//	[8]:	инверсия двигателя оси z
//	[9]:	инверсия двигателя экструдера
//=======================================================
#define configuration_1_inversion_xmin 0
#define configuration_1_inversion_xmax 1
#define configuration_1_inversion_ymin 2
#define configuration_1_inversion_ymax 3
#define configuration_1_inversion_zmin 4
#define configuration_1_inversion_zmax 5
#define configuration_1_inversion_stepper_1 6
#define configuration_1_inversion_stepper_2 7
#define configuration_1_inversion_stepper_3 8
#define configuration_1_inversion_stepper_4 9

using namespace std;

class addresses{

	private:
		int fd;
		void* virtual_base;
		void* addr_leds;
		void* addr_btns;
		void* addr_fans;
		void* addr_flags_in;
		void* addr_flags_out;
		void* addr_endstops;
		void* addr_configuration_1;

		void* addr_temp_bed;
		void* addr_temp0;
		void* addr_temp1;

		void* addr_temp_bed_bottom;
		void* addr_temp_bed_upper;
		void* addr_temp_e1_bottom;
		void* addr_temp_e1_upper;

		void* addr_stepper_1_speed;
		void* addr_stepper_2_speed;
		void* addr_stepper_3_speed;
		void* addr_stepper_4_speed;

		void* addr_stepper_1_steps_in;
		void* addr_stepper_2_steps_in;
		void* addr_stepper_3_steps_in;
		void* addr_stepper_4_steps_in;

		void* addr_stepper_1_steps_out;
		void* addr_stepper_2_steps_out;
		void* addr_stepper_3_steps_out;
		void* addr_stepper_4_steps_out;

		uint32_t flags_in;
		uint32_t flags_out;
		uint32_t endstops;
		uint32_t fans;
		uint32_t leds;
		uint32_t btns;

		uint32_t zeroing(uint32_t number, uint32_t count, uint32_t direction);
		uint32_t create_number(bool state, uint32_t count);
		uint32_t pow(uint32_t a, uint32_t p);

		uint32_t get_leds();
		uint32_t get_btns();
		uint32_t get_flags_in(); //для записи
		uint32_t get_flags_out(); //для чтения
		uint32_t get_endstops();
		uint32_t get_fans();

		int set_leds(uint32_t ledss); 
		int set_fans(uint32_t fanss);
		int set_flags_in(uint32_t flags_ins); //для записи



	protected:

	public:
		addresses();
		int init();
		
/*
		void* get_addr_leds();
		void* get_addr_btns();
		void* get_addr_fans();
		void* get_addr_heaters();
		void* get_addr_flags_in(); //для записи
		void* get_addr_flags_out(); //для чтения
		void* get_addr_endstops();

		void* get_addr_temp_bed();
		void* get_addr_temp0();
		void* get_addr_temp1();

		void* get_addr_stepper_1_speed();
		void* get_addr_stepper_2_speed();
		void* get_addr_stepper_3_speed();
		void* get_addr_stepper_4_speed();
		void* get_addr_stepper_5_speed();

		void* get_addr_stepper_1_steps_in();
		void* get_addr_stepper_2_steps_in();
		void* get_addr_stepper_3_steps_in();
		void* get_addr_stepper_4_steps_in();
		void* get_addr_stepper_5_steps_in();

		void* get_addr_stepper_1_steps_out();
		void* get_addr_stepper_2_steps_out();
		void* get_addr_stepper_3_steps_out();
		void* get_addr_stepper_4_steps_out();
		void* get_addr_stepper_5_steps_out();*/



		
		uint32_t get_temp_bed();
		uint32_t get_temp0();
		uint32_t get_temp1();

		uint32_t get_temp_bed_bottom();
		uint32_t get_temp_bed_upper();
		uint32_t get_temp_e1_bottom();
		uint32_t get_temp_e1_upper();

		int set_temp_bed_bottom(uint32_t temp);
		int set_temp_bed_upper(uint32_t temp);
		int set_temp_e1_bottom(uint32_t temp);
		int set_temp_e1_upper(uint32_t temp);

		uint32_t get_stepper_1_speed();
		uint32_t get_stepper_2_speed();
		uint32_t get_stepper_3_speed();
		uint32_t get_stepper_4_speed();

		int32_t get_stepper_1_steps_in();
		int32_t get_stepper_2_steps_in();
		int32_t get_stepper_3_steps_in();
		int32_t get_stepper_4_steps_in();

		int32_t get_stepper_1_steps_out();
		int32_t get_stepper_2_steps_out();
		int32_t get_stepper_3_steps_out();
		int32_t get_stepper_4_steps_out();




		int set_stepper_1_speed(uint32_t speeds);
		int set_stepper_2_speed(uint32_t speeds);
		int set_stepper_3_speed(uint32_t speeds);
		int set_stepper_4_speed(uint32_t speeds);

		int set_stepper_1_steps_in(int32_t steps_ins);
		int set_stepper_2_steps_in(int32_t steps_ins);
		int set_stepper_3_steps_in(int32_t steps_ins);
		int set_stepper_4_steps_in(int32_t steps_ins);



		//flags_in
		bool get_flags_in_stepper_enabled();
		bool get_flags_in_start_driving_state();
		bool get_flags_in_homex();
		bool get_flags_in_homey();
		bool get_flags_in_homez();
		bool get_flags_in_start_homing_state();
		bool get_flags_in_heat_bed();
		bool get_flags_in_heat_bed_hold();
		bool get_flags_in_heat_extruder();
		bool get_flags_in_heat_extruder_hold();

		bool set_flags_in_stepper_enabled(bool state);
		bool set_flags_in_start_driving_state(bool state);
		bool set_flags_in_homex(bool state);
		bool set_flags_in_homey(bool state);
		bool set_flags_in_homez(bool state);
		bool set_flags_in_start_homing_state(bool state);
		bool set_flags_in_heat_bed(bool state);
		bool set_flags_in_heat_bed_hold(bool state);
		bool set_flags_in_heat_extruder(bool state);
		bool set_flags_in_heat_extruder_hold(bool state);

		//flags_out
		bool get_flags_out_stepper_state();
		bool get_flags_out_heating_bed();
		bool get_flags_out_heating_extruder();
		
		int set_configuration_1();

		//fans
		bool get_fan(int number);
		int set_fan(int number, bool state);

		//leds
		bool get_led(int number);
		int set_led(int number, bool state);

		//btns
		bool get_btn(int number);

		//endstops
		bool get_endstop_xmin();
		bool get_endstop_xmax();
		bool get_endstop_ymin();
		bool get_endstop_ymax();
		bool get_endstop_zmin();
		bool get_endstop_zmax();
};

#endif //ADDRESSES_H