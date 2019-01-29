#include <addresses>

class temperature{

public:
	temperature(void *addr);
	bool update();
	float get_temp();

protected:
	float current_temperature;
	
private:
	float correction = 1.0;
	void *addr;

}

/*
	управление нагревом происходит в verilog. он будет распаралелен.
	из hps только задается команда для начала нагрева или же его остановки.
	аналогично для двигателей.

	в hps температура переводится из вольтажа в градусы.

*/