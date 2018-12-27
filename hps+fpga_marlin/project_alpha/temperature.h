#include <addresses>

class temperature{

public:
	temperature();
	bool update();

protected:
	float target_temperature;
	float current_temperature;
	
private:
	float correction;

}

/*
	управление нагревом происходит в verilog. он будет распаралелен.
	из hps только задается команда для начала нагрева или же его остановки.
	аналогично для двигателей.

	в hps температура переводится из вольтажа в градусы.

*/