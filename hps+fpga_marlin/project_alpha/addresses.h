

class addresses{

public:
	addresses();
	false init();
	void* get_stepperX();
	void* get_leds();

protected:

private:
	void* virtual_base;
	void* addr_stepperX;
	void* leds;

}