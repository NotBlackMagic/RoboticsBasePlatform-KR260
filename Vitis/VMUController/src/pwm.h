#ifndef HAL_PWM_H_
#define HAL_PWM_H_

#ifdef __cplusplus
 extern "C" {
#endif

//Device info/addresses include
#include "xparameters.h"

//Periperhal include
#include "xinterrupt_wrap.h"
#include "xtmrctr.h"

void PWMInit();
void PWMEnable();
void PWMDisable();
void PWMSetFrequency(uint32_t frequency);
void PWMSet(uint8_t channel, uint16_t value);
void PWMSetDC(uint8_t channel, uint16_t dc);

#ifdef __cplusplus
}
#endif

#endif /* HAL_PWM_H_ */