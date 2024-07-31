#include "gpio.h"

#include "pinMapping.h"

#define	GPIO_AXI_BASEADDRESS								XPAR_XGPIO_0_BASEADDR
#define GPIO_CHANNEL										1

XGpio gpioHandler;

/**
  * @brief	This function initializes the GPIO that don't use a peripheral (ADC/UART/SPI etc)
  * @param	None
  * @return	None
  */
void GPIOInit() {
	//Init GPIO Handler
	int status = XGpio_Initialize(&gpioHandler, GPIO_AXI_BASEADDRESS);

	//Set Output GPIO's
	// GPIOSetPinMode(GPIO_LED0, GPIO_Mode_Output);
	// GPIOSetPinMode(GPIO_LED1, GPIO_Mode_Output);
	uint32_t mask = 0x03;
	mask = ~mask;
	XGpio_SetDataDirection(&gpioHandler, GPIO_CHANNEL, mask);

	//Init Output of output GPIOs
	GPIOWrite(GPIO_LED0, 0x00);
	GPIOWrite(GPIO_LED1, 0x01);
}

/**
  * @brief	This function sets the output mode type of a pin
  * @param	gpio: Pin to define output mode
  * @param	mode: Output mode of this pin
  * @return	None
  */
void GPIOSetPinMode(uint8_t gpio, GPIOOutputMode mode) {
	//Convert GPIO numer to GPIO Channel
	uint32_t gpioBitPos = 0x01 << gpio;

	//Set the direction for all signals as inputs except the LED output
	uint32_t mask = ~gpioBitPos;

	if(mode == GPIO_Mode_Input) {
		XGpio_SetDataDirection(&gpioHandler, GPIO_CHANNEL, mask);
	}
	else if(mode == GPIO_Mode_Output) {
		XGpio_SetDataDirection(&gpioHandler, GPIO_CHANNEL, mask);
	}
}

/**
  * @brief	This function sets the output of a pin
  * @param	gpio: Pin to set output
  * @param	on: 1 output is set high, 0 output is set low
  * @return	None
  */
void GPIOWrite(uint8_t gpio, uint8_t on) {
	uint32_t gpioBitPos = 0x01 << gpio;
	if(on == 1) {
		XGpio_DiscreteSet(&gpioHandler, GPIO_CHANNEL, gpioBitPos);
	}
	else {
		XGpio_DiscreteClear(&gpioHandler, GPIO_CHANNEL, gpioBitPos);
	}
}

/**
  * @brief	This function gets the input state of a pin
  * @param	gpio: Pin to set output
  * @return	1 input is set high, 0 input is set low
  */
uint8_t GPIORead(uint8_t gpio) {
	uint32_t reg = XGpio_DiscreteRead(&gpioHandler, GPIO_CHANNEL);
	return ((reg >> gpio) & 0x01);
}