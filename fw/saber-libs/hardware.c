/**
  ******************************************************************************
  * @file    hardware.c
  * @author  Marion Anderson
  * @brief   Hardware Configuration C File
  ******************************************************************************
  */
#include "hardware.h"
#include "stm32l0xx_hal_gpio.h"

/**
 * @brief Set hbridge direction pins to Clockwise Rotation.
 */
void Mtr_CW(void)
{
  HAL_GPIO_WritePin(INA_GPIO_Port, INA_Pin, GPIO_PIN_SET);
  HAL_GPIO_WritePin(INB_GPIO_Port, INB_Pin, GPIO_PIN_RESET);
}

/**
 * @brief Set hbridge direction pins to Counter-Clockwise Rotation.
 */
void Mtr_CCW(void)
{
  HAL_GPIO_WritePin(INA_GPIO_Port, INA_Pin, GPIO_PIN_RESET);
  HAL_GPIO_WritePin(INB_GPIO_Port, INB_Pin, GPIO_PIN_SET);
}

/**
 * @brief Set hbridge direction pins to hard-stop motor.
 */
void Mtr_Brake(void)
{
  HAL_GPIO_WritePin(INA_GPIO_Port, INA_Pin, GPIO_PIN_SET);
  HAL_GPIO_WritePin(INB_GPIO_Port, INB_Pin, GPIO_PIN_SET);
}

/**
 * @brief Set hbridge direction pins according to input sign
 * @param u The motor voltage input
 */
void Mtr_SetDir(float u)
{
  if (u<0) {
    Mtr_CW();
  } else if (u>0) {
    Mtr_CCW();
  } else {
    Mtr_Brake();
  }
}

