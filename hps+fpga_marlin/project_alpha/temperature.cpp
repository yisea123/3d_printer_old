#include <temperature.h>

temperature::temperature(void *addr)
{
	this.addr = addr;
	//Считывание значения по адресу
	//Перевод данного значения в температуру new_temp
	//запись температуры this.current_temperaturen = new_temp * correction
};

bool temperature::update()
{
	//Считывание значения по адресу
	//Перевод данного значения в температуру new_temp
	//запись температуры this.current_temperaturen = new_temp * correction
};

bool temperature::print_to_screen()
{

};