/**
  ******************************************************************************
  * @file    hardware.c
  * @author  Marion Anderson
  * @brief   Hardware Configuration C File
  ******************************************************************************
  */
#include "hardware.h"
#include "math.h"

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
  } else if (u>0) {
    MtrCCW();
  }
  u = abs(u);
  uint16_t d = htim2.Init.Period * u / MV;
  TIM2->CCR2 = d;
}

/**
 * @brief Motor control law
 * @param err System error
 * @retval Output voltage
 * TODO: integrator windup prevention
 */
float CtlLaw(int16_t err)
{
  static int32_t erri = 0;
  erri += err;
  return (KP*err + KI*erri*T_CTL);
}

void Ctl(void)
{
  static int32_t erri = 0;
  int16_t err = tgt - ((int16_t)TIM22->CNT);
  erri += err;
  MtrCtl(KP*err + KI*erri*T_CTL);
}
