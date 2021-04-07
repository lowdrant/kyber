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

/**
 * @brief convert accelerometer counts pair to gs
 * @param d pointer to {MSB,LSB} accelerometer counts array
 */
float ACC2G(uint8_t* d)
{
  return ((float) ( ((*d)<<4) + (*(d+1)) )) / COUNTS_PER_G;
}

float counts2volt(uint32_t counts)
{
  return (float) VOLTS_PER_COUNT * counts;
}

float counts2batt(uint32_t counts)
{
  return BATT_V_PER_V * counts2volt(counts);
}
