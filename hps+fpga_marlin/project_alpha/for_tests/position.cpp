position()
{

};


int position::init()
{
	x = 0;
	y = 0;
	z = 0;
	e = 0;
	pos_type_driving = POSITION_TYPE_ABSOLUTE;
	pos_type_extruder = POSITION_TYPE_ABSOLUTE;
};




int position::get_pos_type_driving()
{
	return pos_type_driving;
};

int position::get_pos_type_extruders()
{
	return pos_type_extruders;
};

float* position::get_positions(float* a)
{
	a[0] = x;
	a[1] = y;
	a[2] = z;
	a[3] = e;
	return a;
};

float position::get_pos_x()
{
	return x;
};

float position::get_pos_y()
{
	return y;
};

float position::get_pos_z()
{
	return z;
};

float position::get_pos_e()
{
	return e;
};

float position::get_pos_speed()
{
	return speed;
};





int position::set_pos_type_driving(int pos_type)
{
	if ((pos_type == POSITION_TYPE_ABSOLUTE) | (pos_type == POSITION_TYPE_RELATIVE))
	{
		pos_type_driving = pos_type;
		return 0;
	}

	return 1;	
};

int position::set_pos_type_extruders(int pos_type)
{
	if ((pos_type == POSITION_TYPE_ABSOLUTE) | (pos_type == POSITION_TYPE_RELATIVE))
	{
		pos_type_extruders = pos_type;
		return 0;
	}

	return 1;	
};

int position::set_positions(float x_new, float y_new, float z_new, float e_new)
{
	x = x_new;
	y = y_new;
	z = z_new;
	e = e_new;
	return 0;
};

int position::set_pos_x(float x_new)
{
	x = x_new;
	return 0;
};

int position::set_pos_y(float y_new)
{
	y = y_new;
	return 0;
};

int position::set_pos_z(float z_new)
{
	z = z_new;
	return 0;
};

int position::set_pos_e(float e_new)
{
	e = e_new;
	return 0;
};

int position::set_pos_speed(float speed_new)
{
	speed = speed_new;
	return 0;
};
