#include <addresses.h>
#include <stepper.h>
#include <configuration.h>

stepper::init()
{
	//создание пустого двигателя
};

bool stepper::move(bool direction,
	int microsteps, float stepper_speed)
{
	//при каждом маленьком шаге проверять концевик
	//мб сделать его инт чтобы возвращать коды ошибок
	//не писать отдельно инит а сделать несколько конструкторов
	#if DEBUG
		printf("stepper::move is running, current pos: %f, %f, %f (x, y, z)\n", x, y, z);
    #endif
	//считывание текущих и целевых координат, направлений движения,
	//количества микрошагов и скорости двигателя
	//проверка статуса концевиков в verilog 
	//осуществление хода предположительно происходит в verilog, 
	//т.к. легче через always использовать преимущество распараллеливания
}