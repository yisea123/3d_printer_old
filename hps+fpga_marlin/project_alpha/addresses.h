class addresses{

public:
	addresses();
	bool init();
	void* get_leds();
	void* get_btns();
	void* get_fans();
	void* get_heaters();
	void* get_flags();
	void* get_endstops();

	void* get_temp_bed();
	void* get_temp0();
	void* get_temp1();

	void* get_stepper_1_speed();
	void* get_stepper_2_speed();
	void* get_stepper_3_speed();
	void* get_stepper_4_speed();
	void* get_stepper_5_speed();

	void* get_stepper_1_steps();
	void* get_stepper_2_steps();
	void* get_stepper_3_steps();
	void* get_stepper_4_steps();
	void* get_stepper_5_steps();

protected:

private:

	int fd;

	void* virtual_base;
	void* leds;
	void* btns;
	void* fans;	
	void* flags;
	void* endstops;

	void* heaters;

	void* temp_bed;
	void* temp0;
	void* temp1;

	void* stepper_1_speed;
	void* stepper_2_speed;
	void* stepper_3_speed;
	void* stepper_4_speed;
	void* stepper_5_speed;

	void* stepper_1_steps;
	void* stepper_2_steps;
	void* stepper_3_steps;
	void* stepper_4_steps;
	void* stepper_5_steps;

};
