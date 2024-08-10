#ifndef HAL_TIMER_H_
#define HAL_TIMER_H_

#ifdef __cplusplus
 extern "C" {
#endif

//Device info/addresses include
#include "xparameters.h"

//Periperhal include
#include "xinterrupt_wrap.h"
#include "xtmrctr.h"

void TIM1Init();
uint32_t TIM1GetCapture();

#ifdef __cplusplus
}
#endif

#endif /* HAL_TIMER_H_ */