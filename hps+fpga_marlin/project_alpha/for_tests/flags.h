#ifndef FLAGS_H
#define FLAGS_H

#include "addresses.h"

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

class flags
{
	private:
		uint32_t flags_in;
		uint32_t flags_out;

		addresses* addr;

		uint32_t create_number(bool state, uint32_t count);

	protected:

	public:
		flags();
		void init(addresses* addr_new);


		//flags_in
		bool get_stepper_enabled();
		bool get_inversion_xmin();
		bool get_inversion_xmax();
		bool get_inversion_ymin();
		bool get_inversion_ymax();
		bool get_inversion_zmin();
		bool get_inversion_zmax();
		bool get_start_driving_state();

		bool set_stepper_enabled(bool state);
		bool set_inversion_xmin(bool invert);
		bool set_inversion_xmax(bool invert);
		bool set_inversion_ymin(bool invert);
		bool set_inversion_ymax(bool invert);
		bool set_inversion_zmin(bool invert);
		bool set_inversion_zmax(bool invert);
		bool set_start_driving_state(bool state);


		//flagsa_out
		bool get_stepper_state_xy();
		bool get_stepper_state_z();
		bool get_stepper_state_e();
		bool get_correction_x();
		bool get_correction_y();


}

#endif