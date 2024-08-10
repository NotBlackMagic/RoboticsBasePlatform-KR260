#ifndef HAL_GPIO_H_
#define HAL_GPIO_H_

#ifdef __cplusplus
 extern "C" {
#endif

//Device info/addresses include
#include "xparameters.h"

//Periperhal include
#include "xgpio.h"

typedef enum {
	GPIO_Mode_Analog = 0,
	GPIO_Mode_Input = 1,
	GPIO_Mode_Output = 2,
	GPIO_Mode_Alternate = 3
} GPIOOutputMode;

void GPIOInit();
void GPIOSetPinMode(uint8_t gpio, GPIOOutputMode mode);
void GPIOWrite(uint8_t gpio, uint8_t on);
uint8_t GPIORead(uint8_t gpio);

#ifdef __cplusplus
}
#endif

#endif /* HAL_GPIO_H_ */