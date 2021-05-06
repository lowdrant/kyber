#include "hardware.h"

void mtrDir(void)
{
  if (u>0) {
    INA_SET = GPIO_PIN_SET;
    INB_SET = GPIO_PIN_RESET;
  } else {
    INA_SET = GPIO_PIN_RESET;
    INB_SET = GPIO_PIN_SET;
  }
  HAL_GPIO_WritePin(INA_GPIO_Port, INA_Pin, INA_SET);
  HAL_GPIO_WritePin(INB_GPIO_Port, INB_Pin, INB_SET);
}
