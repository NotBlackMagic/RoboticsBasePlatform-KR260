#include "timer.h"

#include "uart.h"

#include "gpio.h"
#include "pinMapping.h"

#define	TIMER1_AXI_BASEADDRESS								XPAR_XTMRCTR_1_BASEADDR

#define TIMER1_CLOCK										100000000
#define TIMER1_TIM0											0
#define TIMER1_TIM1											1

static void TIM1_IRQHandler(void *CallBackRef, uint8_t TmrCtrNumber);

XTmrCtr timer1Handler;

uint8_t str2[128];
void TIM1Init() {
	//Init Timer Handler
	int status = XTmrCtr_Initialize(&timer1Handler, TIMER1_AXI_BASEADDRESS);

	//Perform a self-test to ensure that the hardware was built correctly. Timer0 is used for self test
	status = XTmrCtr_SelfTest(&timer1Handler, TIMER1_TIM0);

	//Connect the timer counter to the interrupt subsystem such that interrupts can occur
	status = XSetupInterruptSystem(&timer1Handler, (XInterruptHandler)XTmrCtr_InterruptHandler, timer1Handler.Config.IntrId, timer1Handler.Config.IntrParent, XINTERRUPT_DEFAULT_PRIORITY);

	sprintf((char*)str2, "TIM1: IntID %X; IntPar %X; \n\r", timer1Handler.Config.IntrId, (uint32_t)timer1Handler.Config.IntrParent);
	UARTWrite(str2, strlen((char*)str2));

	//Setup the handler for the timer counter that will be called from the interrupt context when the timer expires
	XTmrCtr_SetHandler(&timer1Handler, TIM1_IRQHandler, &timer1Handler);

	//Enable the interrupt of the timer counter
	XTmrCtr_SetOptions(&timer1Handler, TIMER1_TIM0, XTC_INT_MODE_OPTION | XTC_AUTO_RELOAD_OPTION);	// XTC_INT_MODE_OPTION | XTC_CAPTURE_MODE_OPTION

	//Set a reset value for the timer counter
	uint32_t resetValue = TIMER1_CLOCK;
	XTmrCtr_SetResetValue(&timer1Handler, TIMER1_TIM0, resetValue);

	//Start the timer counter
	XTmrCtr_Start(&timer1Handler, TIMER1_TIM0);

	//Stop the timer counter
	//XTmrCtr_Stop(&timer1Handler, TIMER1_TIM0);

	//Disable interrupts
	//XDisableIntrId(timerHandler.Config.IntrId, timerHandler.Config.IntrParent);
}

uint32_t TIM1GetCapture() {
	return XTmrCtr_GetCaptureValue(&timer1Handler, TIMER1_TIM0);
}

__attribute__((weak)) void TIM1UpdateCallback(uint32_t value) {

}

uint8_t led1 = 0;
static void TIM1_IRQHandler(void *CallBackRef, uint8_t TmrCtrNumber) {
	XTmrCtr *instPtr = (XTmrCtr*)CallBackRef;

	GPIOWrite(GPIO_LED1, led1);
	if(led1 == 0x00) {
		led1 = 0x01;
	}
	else {
		led1 = 0x00;
	}

	//uint32_t capValue = XTmrCtr_GetCaptureValue(instPtr, TmrCtrNumber);
	//TIM1UpdateCallback(0);
	//Reset counter value
	//XTmrCtr_Reset(instPtr, TmrCtrNumber);
}