#ifndef position_H
#define position_H

#define POSITION_TYPE_ABSOLUTE 1
#define POSITION_TYPE_RELATIVE 0

class position 
{
	private:
		float x, y, z, e;
		int pos_type_driving;
		int pos_type_extruder;

	protected:


	public:
		position();
		int init();

		int get_pos_type_driving();
		int get_pos_type_extruders();
		float* get_positions(float* a);
		float get_pos_x();
		float get_pos_y();
		float get_pos_z();
		float get_pos_e();

		int set_pos_type_driving(int pos_type);
		int set_pos_type_extruders(int pos_type);
		int set_positions(float x_new, float y_new, float z_new, float e_new);
		int set_pos_x(float x_new);
		int set_pos_y(float y_new);
		int set_pos_z(float z_new);
		int set_pos_e(float e_new);

}



#endif