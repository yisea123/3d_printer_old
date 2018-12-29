#include <addresses.h>
#include <stepper.h>
#include <configuration.h>

stepper::init()
{
	//создание пустого двигателя
};

bool stepper::move(float target_x, float target_y, float target_z,
	float current_x, float current_y, float current_z,
	bool direction_x, bool direction_y,	bool direction_z,
	int microsteps, float stepper_speed)
{

	#if DEBUG
		printf("stepper::move is running, current pos: %f, %f, %f (x, y, z)\n", x, y, z);
    #endif
	//считывание текущих и целевых координат, направлений движения,
	//количества микрошагов и скорости двигателя
	//проверка статуса концевиков в verilog 
	//осуществление хода предположительно происходит в verilog, 
	//т.к. легче через always использовать преимущество распараллеливания
}