#include flags.h

uint32_t flags::create_number(bool state, uint32_t count)
{
	uint32_t a = 1;
	for (uint32_t i = 1; i<=count; i++)
		a *= 2;
			
	if (state)
		return a;
	else
		return (0xffffffff - a);
};



flags()
{

};

void flags::init(addresses* addr_new)
{
	addr = addr_new;
};

//flags_in
bool flags::get_stepper_enabled(
{
	flags_in = addr->get_flags_in();
	flags_in = flags_in << (bit_count_uint32 - flags_in_position_stepper_enabled - 1);
	flags_in = flags_in >> (bit_count_uint32 - 1);
	return (flags_in == 1)
};

bool flags::get_inversion_xmin()
{
	flags_in = addr->get_flags_in();
	flags_in = flags_in << (bit_count_uint32 - flags_in_position_inversion_xmin - 1);
	flags_in = flags_in >> (bit_count_uint32 - 1);
	return (flags_in == 1)
};

bool flags::get_inversion_xmax()
{
	flags_in = addr->get_flags_in();
	flags_in = flags_in << (bit_count_uint32 - flags_in_position_inversion_xmax - 1);
	flags_in = flags_in >> (bit_count_uint32 - 1);
	return (flags_in == 1)
};

bool flags::get_inversion_ymin()
{
	flags_in = addr->get_flags_in();
	flags_in = flags_in << (bit_count_uint32 - flags_in_position_inversion_ymin - 1);
	flags_in = flags_in >> (bit_count_uint32 - 1);
	return (flags_in == 1)
};

bool flags::get_inversion_ymax()
{
	flags_in = addr->get_flags_in();
	flags_in = flags_in << (bit_count_uint32 - flags_in_position_inversion_ymax - 1);
	flags_in = flags_in >> (bit_count_uint32 - 1);
	return (flags_in == 1)
};

bool flags::get_inversion_zmin()
{
	flags_in = addr->get_flags_in();
	flags_in = flags_in << (bit_count_uint32 - flags_in_position_inversion_zmin - 1);
	flags_in = flags_in >> (bit_count_uint32 - 1);
	return (flags_in == 1)
};

bool flags::get_inversion_zmax()
{
	flags_in = addr->get_flags_in();
	flags_in = flags_in << (bit_count_uint32 - flags_in_position_inversion_zmax - 1);
	flags_in = flags_in >> (bit_count_uint32 - 1);
	return (flags_in == 1)
};

bool flags::get_start_driving_state()
{
	flags_in = addr->get_flags_in();
	flags_in = flags_in << (bit_count_uint32 - flags_in_position_start_driving_state - 1);
	flags_in = flags_in >> (bit_count_uint32 - 1);
	return (flags_in == 1)
};


bool flags::set_stepper_enabled(bool state)
{
	flags_in = addr->get_flags_in();
	uint32_t a = create_number(state, flags_in_position_stepper_enabled);
	if (state)
		return ((addr->set_flags_in((a | flags_in))) == 0);
	else
		return ((addr->set_flags_in((a & flags_in))) == 0); 
};

bool flags::set_inversion_xmin(bool invert)
{
	flags_in = addr->get_flags_in();
	uint32_t a = create_number(state, flags_in_position_inversion_xmin);
	if (state)
		return ((addr->set_flags_in((a | flags_in))) == 0);
	else
		return ((addr->set_flags_in((a & flags_in))) == 0); 
};

bool flags::set_inversion_xmax(bool invert)
{
	flags_in = addr->get_flags_in();
	uint32_t a = create_number(state, flags_in_position_inversion_xmax);
	if (state)
		return ((addr->set_flags_in((a | flags_in))) == 0);
	else
		return ((addr->set_flags_in((a & flags_in))) == 0); 
};

bool flags::set_inversion_ymin(bool invert)
{
	flags_in = addr->get_flags_in();
	uint32_t a = create_number(state, flags_in_position_inversion_ymin);
	if (state)
		return ((addr->set_flags_in((a | flags_in))) == 0);
	else
		return ((addr->set_flags_in((a & flags_in))) == 0); 
};

bool flags::set_inversion_ymax(bool invert)
{
	flags_in = addr->get_flags_in();
	uint32_t a = create_number(state, flags_in_position_inversion_ymax);
	if (state)
		return ((addr->set_flags_in((a | flags_in))) == 0);
	else
		return ((addr->set_flags_in((a & flags_in))) == 0); 
};

bool flags::set_inversion_zmin(bool invert)
{
	flags_in = addr->get_flags_in();
	uint32_t a = create_number(state, flags_in_position_inversion_zmin);
	if (state)
		return ((addr->set_flags_in((a | flags_in))) == 0);
	else
		return ((addr->set_flags_in((a & flags_in))) == 0); 
};

bool flags::set_inversion_zmax(bool invert)
{
	flags_in = addr->get_flags_in();
	uint32_t a = create_number(state, flags_in_position_inversion_zmax);
	if (state)
		return ((addr->set_flags_in((a | flags_in))) == 0);
	else
		return ((addr->set_flags_in((a & flags_in))) == 0); 
};

bool flags::set_start_driving_state(bool state)
{
	flags_in = addr->get_flags_in();
	uint32_t a = create_number(state, flags_in_position_start_driving_state);
	if (state)
		return ((addr->set_flags_in((a | flags_in))) == 0);
	else
		return ((addr->set_flags_in((a & flags_in))) == 0); 
};



//flagsa_out
bool flags::get_stepper_state_xy()
{
	flags_out = addr->get_flags_out();
	flags_out = flags_out << (bit_count_uint32 - flags_out_position_stepper_state_xy - 1);
	flags_out = flags_out >> (bit_count_uint32 - 1);
	return (flags_out == 1)
};

bool flags::get_stepper_state_z()
{
	flags_out = addr->get_flags_out();
	flags_out = flags_out << (bit_count_uint32 - flags_out_position_stepper_state_z - 1);
	flags_out = flags_out >> (bit_count_uint32 - 1);
	return (flags_out == 1)
};

bool flags::get_stepper_state_e()
{
	flags_out = addr->get_flags_out();
	flags_out = flags_out << (bit_count_uint32 - flags_out_position_stepper_state_e - 1);
	flags_out = flags_out >> (bit_count_uint32 - 1);
	return (flags_out == 1)
};

bool flags::get_correction_x()
{
	flags_out = addr->get_flags_out();
	flags_out = flags_out << (bit_count_uint32 - flags_out_position_correction_x - 1);
	flags_out = flags_out >> (bit_count_uint32 - 1);
	return (flags_out == 1)
};

bool flags::get_correction_y()
{
	flags_out = addr->get_flags_out();
	flags_out = flags_out << (bit_count_uint32 - flags_out_position_correction_y - 1);
	flags_out = flags_out >> (bit_count_uint32 - 1);
	return (flags_out == 1)
};
