#include <heater.h>

heater::heater(void *addr_heater; temperature temp)
{
	this.addr = addr_heater;
	this.temp = temp;
}


int heater::heat()
{

};

bool heater::shutdown()
{
	*(uint32_t *)addr = 0x00;
};