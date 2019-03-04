#ifndef ADDRESSES_H
#define ADDRESSES_H

#define HW_REGS_BASE (ALT_STM_OFST)
#define HW_REGS_SPAN (0x04000000)
#define HW_REGS_MASK (HW_REGS_SPAN - 1)

#define bit_count_uint32 32

#include "inttypes.h"

using namespace std;

class addresses{

	private:
		int fd;
		void* virtual_base;
		void* leds;
		void* btns;
		void* fans;
		void* heaters;
		void* flags_in;
		void* flags_out;
		void* endstops;
		void* temp_bed;
		void* temp0;
		void* temp1;

		void* stepper_1_speed;
		void* stepper_2_speed;
		void* stepper_3_speed;
		void* stepper_4_speed;
		void* stepper_5_speed;

		void* stepper_1_steps_in;
		void* stepper_2_steps_in;
		void* stepper_3_steps_in;
		void* stepper_4_steps_in;
		void* stepper_5_steps_in;

		void* stepper_1_steps_out;
		void* stepper_2_steps_out;
		void* stepper_3_steps_out;
		void* stepper_4_steps_out;
		void* stepper_5_steps_out;


		uint32_t zeroing(uint32_t number, uint32_t count, uint32_t direction);

	protected:

	public:
		addresses();
		int init();
		

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
		void* get_addr_stepper_5_steps_out();



		uint32_t get_leds();
		uint32_t get_btns();
		uint32_t get_fans();
		uint32_t get_heaters();
		uint32_t get_flags_in(); //для записи
		uint32_t get_flags_out(); //для чтения
		uint32_t get_endstops();

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



		int set_leds(uint32_t ledss); 
		int set_fans(uint32_t fanss);
		int set_heaters(uint32_t heaterss);
		int set_flags_in(uint32_t flags_ins); //для записи

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

		int set_stepper_1_steps_out(int32_t steps_outs);
		int set_stepper_2_steps_out(int32_t steps_outs);
		int set_stepper_3_steps_out(int32_t steps_outs);
		int set_stepper_4_steps_out(int32_t steps_outs);
		int set_stepper_5_steps_out(int32_t steps_outs);
};

#endif //ADDRESSES_H