//Device info/addresses include
#include "xparameters.h"

//Periperhal include
#include "xgpio.h"

//Additional drivers include
#include "xil_printf.h"

//FreeRTOS includes.
#include "FreeRTOS.h"
#include "task.h"

#define	XGPIO_AXI_BASEADDRESS	XPAR_XGPIO_0_BASEADDR
#define LED 0x01 /* Assumes bit 0 of GPIO is connected to an LED */
#define LED_CHANNEL	1

#define LED_DELAY	 1000000

static TaskHandle_t gpioTaskHandler;

XGpio Gpio;

int GpioTask(void *pvParameters) {
    const TickType_t x1second = pdMS_TO_TICKS(1000);

    while(1) {
        // int data = XGpio_DiscreteRead(&GpioInput, LED_CHANNEL);

        //Set the LED to High
		XGpio_DiscreteWrite(&Gpio, LED_CHANNEL, LED);

        //Task delay
        vTaskDelay(x1second);

        //Clear the LED bit
		XGpio_DiscreteClear(&Gpio, LED_CHANNEL, LED);

        //Task delay
        vTaskDelay(x1second);
    }
}

int main() {
    int status;
    volatile int delay;

    //Initialize the GPIO driver
    status = XGpio_Initialize(&Gpio, XGPIO_AXI_BASEADDRESS);

    //Set the direction for all signals as inputs except the LED output
    XGpio_SetDataDirection(&Gpio, LED_CHANNEL, ~LED);

    //Create FreeRTOS task
    xTaskCreate( 	GpioTask, 					//The function that implements the task. */
					( const char * ) "Test",    //Text name for the task, provided to assist debugging only. */
					configMINIMAL_STACK_SIZE, 	//The stack allocated to the task. */
					NULL, 						//The task parameter is not used, so set to NULL. */
					tskIDLE_PRIORITY,			//The task runs at the idle priority. */
					&gpioTaskHandler );

    //Start the timer with a block time of 0 ticks. This means as soon as the schedule starts the timer will start running and will expire after 10 seconds
	//xTimerStart( xTimer, 0 );

	//Start the tasks and timer running
	vTaskStartScheduler();

    while (1) {

    }
}