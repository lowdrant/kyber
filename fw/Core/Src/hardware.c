/**
  ******************************************************************************
  * @file    hardware.c
  * @author  Marion Anderson
  * @brief   Hardware Configuration Source File
  ******************************************************************************
  */
#include "main.h"
#include "hardware.h"
#include "stm32l0xx_hal.h"

HAL_StatusTypeDef ReadAcc(uint8_t acc[6])
{
  uint8_t d[1] = {ACC_X_MSB_ADDR};
  HAL_StatusTypeDef out = HAL_OK;
  __disable_irq();
  out |= HAL_I2C_Master_Transmit(&ACC_I2C, ACC_ADDR<<1, d, 8, 1);
  out |= HAL_I2C_Master_Receive(&ACC_I2C, ACC_ADDR<<1, acc, 6, 1);
  __enable_irq();
  return out;
}
