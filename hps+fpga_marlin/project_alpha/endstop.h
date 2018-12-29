#include <addresses.h>
#include <string.h>

class endstop{

public:
	endstop();
	bool status(char endstop_name); //мб имеет смысл переименовать дифайны
	bool update();

protected:
	char endstop_name[];
private:
}

/*
	управление нагревом происходит в verilog. он будет распаралелен.
	из hps только задается команда для начала нагрева или же его остановки.
	аналогично для двигателей.

	в hps температура переводится из вольтажа в градусы.

*/