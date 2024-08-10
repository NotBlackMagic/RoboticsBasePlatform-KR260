#include "pwm.h"

#define	TIMER0_AXI_BASEADDRESS								XPAR_XTMRCTR_0_BASEADDR

#define TIMER0_CLOCK										100000000
#define TIMER0_TIM0											0
#define TIMER0_TIM1											1

XTmrCtr timer0Handler;

void PWMInit() {
	//Init Timer Handler
	int status = XTmrCtr_Initialize(&timer0Handler, TIMER0_AXI_BASEADDRESS);

	//Perform a self-test to ensure that the hardware was built correctly. Timer0 is used for self test
	status = XTmrCtr_SelfTest(&timer0Handler, TIMER0_TIM0);

	//Connect the timer counter to the interrupt subsystem such that interrupts can occur
	//status = XSetupInterruptSystem(&timer0Handler, (XInterruptHandler)XTmrCtr_InterruptHandler, timer0Handler.Config.IntrId, timer0Handler.Config.IntrParent, XINTERRUPT_DEFAULT_PRIORITY);

	//Setup the handler for the timer counter that will be called from the interrupt context when the timer expires
	//XTmrCtr_SetHandler(&timer0Handler, Timer_IRQHandler, &timer0Handler);

	//Enable the interrupt of the timer counter
	//XTmrCtr_SetOptions(&timer0Handler, TIMER0_TIM0, XTC_INT_MODE_OPTION);
	//XTmrCtr_SetOptions(&timer0Handler, TIMER0_TIM1, XTC_INT_MODE_OPTION);

	//Disable PWM for reconfiguration
	XTmrCtr_PwmDisable(&timer0Handler);

	//Configure PWM
	//PWM_PERIOD = (TLR0 + 2) * AXI_CLOCK_PERIOD -> TLR0 = (PWM_PERIOD / AXI_CLOCK_PERIOD) - 2 or = (AXI_CLOCK / PWM_CLOCK) - 2
	uint32_t period = ((TIMER0_CLOCK * 20) / 1000) - 2;		//20ms period
	//PWM_HIGH_TIME = (TLR1 + 2) * AXI_CLOCK_PERIOD -> TLR1 = (PWM_HIGH_TIME / AXI_CLOCK_PERIOD) - 2 or = [0 - 1] * TLR0
	uint32_t highTime = (period * 1500) / 1000000;			//1.5ms pulse
	uint8_t dc = XTmrCtr_PwmConfigure(&timer0Handler, period, highTime);

	//Enable PWM
	XTmrCtr_PwmEnable(&timer0Handler);

	//Disable interrupts
	//XDisableIntrId(timer0Handler.Config.IntrId, timer0Handler.Config.IntrParent);
}

void PWMEnable() {
	XTmrCtr_PwmEnable(&timer0Handler);
}

void PWMDisable() {
	XTmrCtr_PwmDisable(&timer0Handler);
}

void PWMSetFrequency(uint32_t frequency) {
	uint32_t period = (TIMER0_CLOCK / frequency) - 2;
	uint32_t highTime = (period * 50) / 100;		//50% duty cycle

	//Disable PWM for reconfiguration
	XTmrCtr_PwmDisable(&timer0Handler);
	//Configure PWM
	XTmrCtr_PwmConfigure(&timer0Handler, period, highTime);
	//Enable PWM
	XTmrCtr_PwmEnable(&timer0Handler);
}

void PWMSet(uint8_t channel, uint16_t value) {
	uint32_t period = (TIMER0_CLOCK / 1000) - 2;
	uint32_t highTime = (period * value) / 1024;		//0 - 1023

	//Disable PWM for reconfiguration
	XTmrCtr_PwmDisable(&timer0Handler);
	//Configure PWM
	XTmrCtr_PwmConfigure(&timer0Handler, period, highTime);
	//Enable PWM
	XTmrCtr_PwmEnable(&timer0Handler);
}

void PWMSetDC(uint8_t channel, uint16_t dc) {
	uint32_t period = (TIMER0_CLOCK / 1000) - 2;
	uint32_t highTime = (period * dc) / 100;				//Set high period from duty cyle as percentage

	//Disable PWM for reconfiguration
	XTmrCtr_PwmDisable(&timer0Handler);
	//Configure PWM
	XTmrCtr_PwmConfigure(&timer0Handler, period, highTime);
	//Enable PWM
	XTmrCtr_PwmEnable(&timer0Handler);
}