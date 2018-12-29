#include <adresses.h>

class stepper{

public:
	stepper(); //конструктор двигателя 
	init(); //создание пустого двигателя
	bool move(float target_x, float target_y, float target_z,
	bool direction_x, bool direction_y,	bool direction_z,
	int microsteps, float stepper_speed);

protected:
	float target_x; //задается целевая координата
	float target_y;
	float target_z;
	float current_x; //задается текущее положение
	float current_y;
	float current_z;
	bool direction_x; //задается направление движения: 1 - инверсия, 0 - по умолчанию
	bool direction_y;
	bool direction_z;
	int microsteps; //количество микрошагов
	float stepper_speed; //скорость вращения двигателя

	
private:
	//float correction;

}

/*
	если для двигателей будут создаваться объекты, то
	как лучше реализовать функцию передвижения? 
	управление нагревом происходит в verilog. он будет распаралелен.
	из hps только задается команда для начала нагрева или же его остановки.
	аналогично для двигателей.

	в hps температура переводится из вольтажа в градусы.

*/