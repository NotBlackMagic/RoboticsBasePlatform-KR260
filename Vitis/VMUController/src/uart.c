#include "uart.h"

#include "gpio.h"
#include "pinMapping.h"
#include <xil_types.h>
#include <xuartlite.h>

#define	UART_AXI_BASEADDRESS								XPAR_XUARTLITE_0_BASEADDR

#define UART_RX_BUFFER_SIZE									256
#define UART_TX_BUFFER_SIZE									256

//UART Buffers and Variables
uint16_t uartRXBufferIndex;
uint16_t uartRXBufferLength;
uint8_t uartRXBuffer[UART_RX_BUFFER_SIZE];
uint16_t uartTXBufferIndex;
uint16_t uartTXBufferLength;
uint8_t uartTXBuffer[UART_TX_BUFFER_SIZE];

void UART_RX_IRQHandler(void *CallBackRef, unsigned int EventData);
void UART_TX_IRQHandler(void *CallBackRef, unsigned int EventData);

XUartLite uartHandler;
XUartLite_Config *uartCfgPtr;

void UARTInit() {
	//Init UART Handler
	int status;
	status = XUartLite_Initialize(&uartHandler, UART_AXI_BASEADDRESS);
	if(status != XST_SUCCESS) {
		return;
	}

	//Load configuration
	uartCfgPtr = XUartLite_LookupConfig(UART_AXI_BASEADDRESS);
	if(uartCfgPtr == NULL) {
		return;
	}

	//Init variables
	uartTXBufferIndex = 0;
	uartTXBufferLength = 0;

	//Perform a self-test to ensure that the hardware was built correctly.
	status = XUartLite_SelfTest(&uartHandler);
	if(status != XST_SUCCESS) {
		return;
	}

	//Connect the UartLite to the interrupt subsystem such that interrupts can occur.
	// status = XSetupInterruptSystem(&uartHandler, &XUartLite_InterruptHandler, uartCfgPtr->IntrId, uartCfgPtr->IntrParent, XINTERRUPT_DEFAULT_PRIORITY);
	// if(status != XST_SUCCESS) {
	// 	return;
	// }

	//Setup the handler for the UART that will be called from the interrupt context
	// XUartLite_SetSendHandler(&uartHandler, UART_TX_IRQHandler, &uartHandler);
	// XUartLite_SetRecvHandler(&uartHandler, UART_RX_IRQHandler, &uartHandler);

	//Enable the interrupt of the UartLite so that interrupts will occur.
	// XUartLite_EnableInterrupt(&uartHandler);

	//Start receiving data, 1 byte at a time
	//XUartLite_Recv(&uartHandler, uartRXBuffer, 1);

	//Send the buffer using the UartLite.
	//XUartLite_Send(&uartHandler, uartTXBuffer, uartTXBufferLength);
}

/**
  * @brief	This function checks if the UART TX Buffer is Empty
  * @param	None
  * @return	0 -> TX Buffer NOT empty; 1 -> TX Buffer empty
  */
uint8_t UARTIsTXBufferEmpty() {
	if(uartTXBufferLength != 0x00) {
		return 0;
	}
	else {
		return 1;
	}
}

/**
  * @brief	This function sends data over UART
  * @param	data: data array to transmit
  * @param	length: length of the transmit data array
  * @return	0 -> if all good, no errors; 1 -> TX Buffer is full
  */
uint8_t UARTWrite(uint8_t* data, uint16_t length) {
	if(XUartLite_IsSending(&uartHandler) == TRUE) {
		return 1;
	}

	uint16_t i = 0;
	while(i < length) {
		i += XUartLite_Send(&uartHandler, &data[i], (length - i));
	}

	return 0;

	// if(uartTXBufferLength == 0x00) {
	// 	uint16_t i;
	// 	for(i = 0; i < length; i++) {
	// 		uartTXBuffer[i] = data[i];
	// 	}

	// 	uartTXBufferLength = length;
	// 	uartTXBufferIndex = 0;

	// 	//Send the buffer using the UartLite.
	// 	XUartLite_Send(&uartHandler, uartTXBuffer, length);
	// }
	// else {
	// 	//Buffer full, return error
	// 	return 1;
	// }

	// return 0;
}

/**
  * @brief	This function reads the UART2 RX buffer
  * @param	data: data array to where the received data should be copied to
  * @param	length: length of the received array, is set in this function
  * @return	Returns 0 if no new data, 1 if new data
  */
uint8_t UARTRead(uint8_t* data, uint16_t* length) {
	if(uartRXBufferLength > 0) {
		uint16_t i;
		for(i = 0; i < uartRXBufferLength; i++) {
			data[i] = uartRXBuffer[i];
		}

		*length = uartRXBufferLength;

		uartRXBufferLength = 0;
		uartRXBufferIndex = 0;

		return 1;
	}
	else {
		return 0;
	}
}

void UART_RX_IRQHandler(void *CallBackRef, unsigned int EventData) {
	// if(uartRXBufferLength != 0x00) {
	// 	//RX Buffer full, has a complete frame in it
	// 	// uint8_t dummy = LL_USART_ReceiveData8(USART2);
	// }
	// else if(uartRXBufferIndex >= UART_RX_BUFFER_SIZE) {
	// 	//RX Buffer overflow
	// 	// uint8_t dummy = LL_USART_ReceiveData8(USART2);

	// 	uartRXBufferIndex = 0;
	// }
	// else {
	// 	//All good, receive other byte
	//	XUartLite_Recv(&uartHandler, &uartRXBuffer[uartRXBufferIndex++], 1);
	// }
}

void UART_TX_IRQHandler(void *CallBackRef, unsigned int EventData) {
	// if(uartTXBufferIndex >= uartTXBufferLength) {
	// 	//Transmission complete
	// 	uartTXBufferLength = 0;
	// 	uartTXBufferIndex = 0;
	// }
	// else {
	// 	//Transmit another byte
	// 	XUartLite_Send(&uartHandler, uartTXBuffer, uartTXBufferLength);
	// }
	uartTXBufferLength = 0x00;
}