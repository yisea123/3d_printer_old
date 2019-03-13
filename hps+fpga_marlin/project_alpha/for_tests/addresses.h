#ifndef ADDRESSES_H
#define ADDRESSES_H

#define HW_REGS_BASE (ALT_STM_OFST)
#define HW_REGS_SPAN (0x04000000)
#define HW_REGS_MASK (HW_REGS_SPAN - 1)

#define bit_count_uint32 32

#include "inttypes.h"

//flags_in
#define flags_in_position_stepper_enabled 0
#define flags_in_position_inversion_xmin 1
#define flags_in_position_inversion_xmax 2
#define flags_in_position_inversion_ymin 3
#define flags_in_position_inversion_ymax 4
#define flags_in_position_inversion_zmin 5
#define flags_in_position_inversion_zmax 6
#define flags_in_position_start_driving_state 7

//flags_out
#define flags_out_position_stepper_state_xy 1
#define flags_out_position_stepper_state_z 2
#define flags_out_position_stepper_state_e 3

#define flags_out_position_correction_x 5
#define flags_out_position_correction_y 6


//	flags_in[0]:  вкл/выкл stepper (0 - двигатель выключен, 1 - двигатель включен)

//
//	flags_in[1]:  инверсия концевика xmin (0 - нет инверсии, 1 - есть инверсия)
//	flags_in[2]:  инверсия концевика xmax (0 - нет инверсии, 1 - есть инверсия)
//	flags_in[3]:  инверсия концевика ymin (0 - нет инверсии, 1 - есть инверсия)
//	flags_in[4]:  инверсия концевика ymax (0 - нет инверсии, 1 - есть инверсия)
//	flags_in[5]:  инверсия концевика zmin (0 - нет инверсии, 1 - есть инверсия)
//	flags_in[6]:  инверсия концевика zmax (0 - нет инверсии, 1 - есть инверсия)
//	
//	flags_in[7]:  выполнить движение corexy, оси z и экструдера (0 - игнорировать количество шагов, 1 - выполнить движение по количеству шагов)
//
//	flags_out[1]:   работа stepper1,2 (0 - двигатель стоит, 1 - выполняется повор)
//	flags_out[2]:   работа stepper3 (0 - двигатель стоит, 1 - выполняется повор)
//	flags_out[3]:   работа stepper4 (0 - двигатель стоит, 1 - выполняется повор)
//	flags_out[4]:   работа stepper5 (0 - двигатель стоит, 1 - выполняется повор)
//
//  flags_out[5]:   коррекция по оси x (0 - нет коррекции, 1 - есть коррекция)
//  flags_out[6]:   коррекция по оси y (0 - нет коррекции, 1 - есть коррекция)

using namespace std;

class addresses{

	private:
		int fd;
		void* addr_virtual_base;
		void* addr_leds;
		void* addr_btns;
		void* addr_fans;
		void* addr_heaters;
		void* addr_flags_in;
		void* addr_flags_out;
		void* addr_endstops;
		void* addr_temp_bed;
		void* addr_temp0;
		void* addr_temp1;

		void* addr_stepper_1_speed;
		void* addr_stepper_2_speed;
		void* addr_stepper_3_speed;
		void* addr_stepper_4_speed;
		void* addr_stepper_5_speed;

		void* addr_stepper_1_steps_in;
		void* addr_stepper_2_steps_in;
		void* addr_stepper_3_steps_in;
		void* addr_stepper_4_steps_in;
		void* addr_stepper_5_steps_in;

		void* addr_stepper_1_steps_out;
		void* addr_stepper_2_steps_out;
		void* addr_stepper_3_steps_out;
		void* addr_stepper_4_steps_out;
		void* addr_stepper_5_steps_out;

		uint32_t flags_in;
		uint32_t flags_out;
		uint32_t endstops;
		uint32_t fans;
		uint32_t leds;
		uint32_t btns;
		uint32_t heaters;

		uint32_t zeroing(uint32_t number, uint32_t count, uint32_t direction);
		uint32_t create_number(bool state, uint32_t count);

		uint32_t get_leds();
		uint32_t get_btns();
		uint32_t get_flags_in(); //для записи
		uint32_t get_flags_out(); //для чтения
		uint32_t get_heaters();
		uint32_t get_endstops();
		uint32_t get_fans();

		int set_leds(uint32_t ledss); 
		int set_fans(uint32_t fanss);
		int set_flags_in(uint32_t flags_ins); //для записи
		int set_heaters(uint32_t heaterss);



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

		uint32_t get_stepper_1_speed();
		uint32_t get_stepper_2_speed();
		uint32_t get_stepper_3_speed();
		uint32_t get_stepper_4_speed();
		uint32_t get_stepper_5_speed();

		int32_t get_stepper_1_steps_in();
		int32_t get_stepper_2_steps_in();
		int32_t get_stepper_3_steps_in();
		int32_t get_stepper_4_steps_in();
		int32_t get_stepper_5_steps_in();

		int32_t get_stepper_1_steps_out();
		int32_t get_stepper_2_steps_out();
		int32_t get_stepper_3_steps_out();
		int32_t get_stepper_4_steps_out();
		int32_t get_stepper_5_steps_out();




		int set_stepper_1_speed(uint32_t speeds);
		int set_stepper_2_speed(uint32_t speeds);
		int set_stepper_3_speed(uint32_t speeds);
		int set_stepper_4_speed(uint32_t speeds);
		int set_stepper_5_speed(uint32_t speeds);

		int set_stepper_1_steps_in(int32_t steps_ins);
		int set_stepper_2_steps_in(int32_t steps_ins);
		int set_stepper_3_steps_in(int32_t steps_ins);
		int set_stepper_4_steps_in(int32_t steps_ins);
		int set_stepper_5_steps_in(int32_t steps_ins);

		//убрать (не работает)
		int set_stepper_1_steps_out(int32_t steps_outs);
		int set_stepper_2_steps_out(int32_t steps_outs);
		int set_stepper_3_steps_out(int32_t steps_outs);
		int set_stepper_4_steps_out(int32_t steps_outs);
		int set_stepper_5_steps_out(int32_t steps_outs);




		//flags_in
		bool get_flags_in_stepper_enabled();
		bool get_flags_in_inversion_xmin();
		bool get_flags_in_inversion_xmax();
		bool get_flags_in_inversion_ymin();
		bool get_flags_in_inversion_ymax();
		bool get_flags_in_inversion_zmin();
		bool get_flags_in_inversion_zmax();
		bool get_flags_in_start_driving_state();

		bool set_flags_in_stepper_enabled(bool state);
		bool set_flags_in_inversion_xmin(bool invert);
		bool set_flags_in_inversion_xmax(bool invert);
		bool set_flags_in_inversion_ymin(bool invert);
		bool set_flags_in_inversion_ymax(bool invert);
		bool set_flags_in_inversion_zmin(bool invert);
		bool set_flags_in_inversion_zmax(bool invert);
		bool set_flags_in_start_driving_state(bool state);

		//flags_out
		bool get_flags_out_stepper_state_xy();
		bool get_flags_out_stepper_state_z();
		bool get_flags_out_stepper_state_e();
		bool get_flags_out_correction_x();
		bool get_flags_out_correction_y();


		//heaters
		bool get_heater_bed();
		bool get_heater_e0();
		int set_heater_bed(bool state);
		int set_heater_e0(bool state);

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