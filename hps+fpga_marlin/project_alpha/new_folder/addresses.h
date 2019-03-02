#define HW_REGS_BASE (ALT_STM_OFST)
#define HW_REGS_SPAN (0x04000000)
#define HW_REGS_MASK (HW_REGS_SPAN - 1)


class addresses{

	public:
		addresses();
		int init();
		void* get_leds();
		void* get_btns();
		void* get_fans();
		void* get_heaters();
		void* get_flags_in();
		void* get_flags_out();
		void* get_endstops();

		void* get_temp_bed();
		void* get_temp0();
		void* get_temp1();

		void* get_stepper_1_speed();
		void* get_stepper_2_speed();
		void* get_stepper_3_speed();
		void* get_stepper_4_speed();
		void* get_stepper_5_speed();

		void* get_stepper_1_steps_in();
		void* get_stepper_2_steps_in();
		void* get_stepper_3_steps_in();
		void* get_stepper_4_steps_in();
		void* get_stepper_5_steps_in();

		void* get_stepper_1_steps_out();
		void* get_stepper_2_steps_out();
		void* get_stepper_3_steps_out();
		void* get_stepper_4_steps_out();
		void* get_stepper_5_steps_out();

	protected:

	private:
		int fd;
		void *virtual_base;
		void *leds;
		void *btns;
		void *fans;
		void *heaters;
		void *flags_in;
		void *flags_out;
		void *endstops;
		void *temp_bed;
		void *temp0;
		void *temp1;

		void *stepper_1_speed;
		void *stepper_2_speed;
		void *stepper_3_speed;
		void *stepper_4_speed;
		void *stepper_5_speed;

		void *stepper_1_steps_in;
		void *stepper_2_steps_in;
		void *stepper_3_steps_in;
		void *stepper_4_steps_in;
		void *stepper_5_steps_in;

		void *stepper_1_steps_out;
		void *stepper_2_steps_out;
		void *stepper_3_steps_out;
		void *stepper_4_steps_out;
		void *stepper_5_steps_out;
};
