#ifndef HAL_UART_H_
#define HAL_UART_H_

#ifdef __cplusplus
 extern "C" {
#endif

//Device info/addresses include
#include "xparameters.h"

//Periperhal include
#include "xinterrupt_wrap.h"
#include "xuartlite.h"

void UARTInit();
uint8_t UARTIsTXBufferEmpty();
uint8_t UARTWrite(uint8_t* data, uint16_t length);
uint8_t UARTRead(uint8_t* data, uint16_t* length);

#ifdef __cplusplus
}
#endif

#endif /* HAL_UART_H_ */