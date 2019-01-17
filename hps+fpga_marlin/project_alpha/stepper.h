#include <adresses.h>

class stepper{

public:
	stepper(); //конструктор двигателя 
	init(); //создание пустого двигателя
	bool move(bool direction, int microsteps, float stepper_speed);
	stepcounter();//в зависимости от координат считает сколько шагов должен сделать двигатель, 
	//кидаем двигатель, а метод по названию оси понимает относительно каких координат считать либо сделать в мейне и передавать 
	//все двигатели, чтобы сразу посчитать перемещение по всем координатам

protected:
	int32 direction; //задается направление движения: 1 - инверсия, 0 - по умолчанию
	unsigned int32 impulselength; //время импульса
//кидаю время импульса и считаю количество микрошагов

/*
Шаги:
- посмотреть как меняется направление движения двигателя:
// For Inverting Stepper Enable Pins (Active Low) use 0, Non Inverting (Active High) use 1:{ 0:'Low', 1:'High' }
#define X_ENABLE_ON 0
#define Y_ENABLE_ON 0
#define Z_ENABLE_ON 0
#define E_ENABLE_ON 0 // For all extruders 
// Invert the stepper direction. Change (or reverse the motor connector) if an axis goes the wrong way.
#define INVERT_X_DIR false
#define INVERT_Y_DIR false
#define INVERT_Z_DIR false //добавить их в наш конфиг
// Direction of endstops when homing; 1=MAX, -1=MIN:[-1,1]
#define X_HOME_DIR -1
#define Y_HOME_DIR -1
#define Z_HOME_DIR -1

куда добавить эти???
// The size of the print bed
#define X_BED_SIZE 270
#define Y_BED_SIZE 300
// Travel limits (mm) after homing, corresponding to endstop positions.
#define X_MIN_POS 0
#define Y_MIN_POS 0
#define Z_MIN_POS 0
#define X_MAX_POS X_BED_SIZE
#define Y_MAX_POS Y_BED_SIZE
#define Z_MAX_POS 270
// Homing speeds (mm/m)
#define HOMING_FEEDRATE_XY (50*60)
#define HOMING_FEEDRATE_Z  (4*60)


- добавить метод home
- посмотреть как по времени импульса посчитать количество микрошагов 
- чекнуть дифайны
- реализовать метод степпер
- реализовать метод степкаунтер
*/
private:
	void* stepper_address;

}

/*
	если для двигателей будут создаваться объекты, то
	как лучше реализовать функцию передвижения? 

*/