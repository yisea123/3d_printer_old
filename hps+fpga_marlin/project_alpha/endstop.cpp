#include <endstop.h>
#include <configuration.h>

endstop::endstop()
{
	//Считывание значения по адресу
	//Перевод данного значения в температуру new_temp
	//запись температуры this.current_temperaturen = new_temp * correction
};

bool endstop::update()
{
	//Считывание значения по адресу
	//Перевод данного значения в температуру new_temp
	//запись температуры this.current_temperaturen = new_temp * correction
};

endstop::status(string endstop_name)
{
	#if endstop_name //будет задаваться с помощью enum
		printf("endstop value is inverted\n");
    #endif
		//печатать статуса 
};
