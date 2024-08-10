//Device info/addresses include
#include "xparameters.h"

//Periperhal include
#include "timer.h"
#include "uart.h"
#include "gpio.h"
#include "pwm.h"

#include "pinMapping.h"

//Additional drivers include
#include "xil_printf.h"

//FreeRTOS includes.
#include "FreeRTOS.h"
#include "task.h"

#include <stdio.h>
#include <string.h>

#define LED_DELAY     10000000

static TaskHandle_t gpioThreadHandler;

uint8_t str[128];
uint8_t loopCnt = 0;
void GPIOThread(void *pvParameters) {
	const TickType_t x1second = pdMS_TO_TICKS(1000);

	uint8_t dc = 10;
	while(1) {
		//Set the LED to High
		GPIOWrite(GPIO_LED0, 0x00);

		//Task delay
		vTaskDelay(x1second);

		//Clear the LED bit
		GPIOWrite(GPIO_LED0, 0x01);
		sprintf((char*)str, "UART Test: Loop #%d \n\r", loopCnt);
		UARTWrite(str, strlen((char*)str));
		loopCnt += 1;

		//Task delay
		vTaskDelay(x1second);

		//PWMSetDC(0, dc);
		dc += 10;
		if(dc >= 100) {
			dc = 10;
		}
	}
}

uint32_t encTimerValue = 0;
uint32_t encTriggerCnt = 0;
int main() {
	int status;
	volatile int delay;

	//Initialize peripherals
	GPIOInit();
	UARTInit();
	//PWMInit();
	TIM1Init();

	//PWMSetFrequency(1000);

	// //Create FreeRTOS task
	// xTaskCreate( 	GPIOThread, 				//The function that implements the task. */
	// 				( const char * ) "Test",    //Text name for the task, provided to assist debugging only. */
	// 				1024, 						//The stack allocated to the task. (configMINIMAL_STACK_SIZE) */
	// 				NULL, 						//The task parameter is not used, so set to NULL. */
	// 				tskIDLE_PRIORITY,			//The task runs at the idle priority. */
	// 				&gpioThreadHandler );

	//Start the timer with a block time of 0 ticks. This means as soon as the schedule starts the timer will start running and will expire after 10 seconds
	//xTimerStart( xTimer, 0 );

	//Start the tasks and timer running
	// vTaskStartScheduler();

	while (1) {
		//Set the LED to High
		GPIOWrite(GPIO_LED0, 0x00);

		//Task delay
		for (delay = 0; delay < LED_DELAY; delay++);

		//Clear the LED bit
		GPIOWrite(GPIO_LED0, 0x01);

		//Calculate RPM
		//encTimerValue = TIM1GetCapture();
		uint32_t rpm = ((100000000 * 60) / (encTimerValue * 12));
		sprintf((char*)str, "Encoder: Value %d; Counter %d; RPM: %d \n\r", encTimerValue, encTriggerCnt, rpm);
		UARTWrite(str, strlen((char*)str));

		//Task delay
		for (delay = 0; delay < LED_DELAY; delay++);
	}
}

void TIM1UpdateCallback(uint32_t value) {
	//encTimerValue = value;
	encTriggerCnt += 1;
}