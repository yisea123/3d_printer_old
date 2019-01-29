#include <temperature.h>

class heater{

public:
	heater(void *addr_heater; temperature temp);
	int heat();
	bool shutdown();
private:
	temperature temp = new temperature();
	

}