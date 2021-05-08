/**
  ******************************************************************************
  * @file    hardware.c
  * @author  Marion Anderson
  * @brief   Hardware Configuration C File
  ******************************************************************************
  */
#include "hardware.h"
#include "stm32l0xx_hal_gpio.h"
#include "stm32l0xx_hal_tim.h"

extern TIM_HandleTypeDef htim2;

/**
 * @brief Set hbridge direction pins to Clockwise Rotation.
 */
void MtrCW(void)
{
  HAL_GPIO_WritePin(INA_GPIO_Port, INA_Pin, GPIO_PIN_SET);
  HAL_GPIO_WritePin(INB_GPIO_Port, INB_Pin, GPIO_PIN_RESET);
}

/**
 * @brief Set hbridge direction pins to Counter-Clockwise Rotation.
 */
void MtrCCW(void)
{
  HAL_GPIO_WritePin(INA_GPIO_Port, INA_Pin, GPIO_PIN_RESET);
  HAL_GPIO_WritePin(INB_GPIO_Port, INB_Pin, GPIO_PIN_SET);
}

/**
 * @brief Set hbridge direction pins to hard-stop motor.
 */
void MtrBrake(void)
{
  HAL_GPIO_WritePin(INA_GPIO_Port, INA_Pin, GPIO_PIN_SET);
  HAL_GPIO_WritePin(INB_GPIO_Port, INB_Pin, GPIO_PIN_SET);
}

/**
 * @brief Set all hbridge GPIO according to motor input voltage u
 * @param u Motor input voltage
 */
void MtrCtl(float u)
{
  if (u<0) {
    MtrCW();
    u *= -1;
  } else if (u>0) {
    MtrCCW();
  }
  uint32_t d = htim2.Init.Period * u / MV;
  TIM2->CCR2 = d;
}

/**
 * @brief Motor control law
 * @param err Output error
 * @retval Output voltage
 * TODO: integrator windup prevention
 */
float CtlLaw(float err)
{
  static float erri = 0;
  static float errd = 0;
  static float errlast = 0;
  erri += err / T_CTL;  // see main.h
  errd += (err-errlast) / DQUOTIENT;
  float u = K0 * (KP*err + KI*erri + KD*errd);
  return u;
}
