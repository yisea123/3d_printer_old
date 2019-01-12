#include <temperature.h>

class heater{

public:
	heater();
	bool init(void *addr_heater; temperature temp);
	bool update();
	int heat();
private:
	temperature temp();
	

}