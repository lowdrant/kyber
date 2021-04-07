/**
  ******************************************************************************
  * @file    hardware.c
  * @author  Marion Anderson
  * @brief   Hardware Configuration Header File
  ******************************************************************************
  */

#ifndef INC_HARDWARE_H_
#define INC_HARDWARE_H_
#include "stm32l0xx_hal.h"

/** @defgroup  Accelerometer IO  MMA8452 Addresses & Helper Functions
  * @{
  */
extern I2C_HandleTypeDef hi2c1;
#define ACC_I2C hi2c1
#define ACC_ADDR 0x1D
// reading
#define ACC_X_MSB_ADDR 0x01
HAL_StatusTypeDef ReadAcc(uint8_t*);
// control
#define ACC_CTRL_REG1 0x2A
#define ACC_CTRL_REG2 0x2B
#define ACC_CTRL_REG3 0x2C
#define ACC_CTRL_REG4 0x2D
#define ACC_CTRL_REG5 0x2E
// data
#define COUNTS_PER_G (float) 1024  // as macro saves flash
float ACC2G(uint8_t*);
/**
 * @}
 */

#endif /* INC_HARDWARE_H_ */
