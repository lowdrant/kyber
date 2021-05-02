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

/*****************************************************************************
 * Accelerometer IO - MMA8452 Addresses & Helper Functions
 ****************************************************************************/
extern I2C_HandleTypeDef hi2c1;
#define ACC_I2C hi2c1
#define ACC_ADDR 0x1D
// reading
#define ACC_X_MSB_ADDR 0x01
// control
#define ACC_CTRL_REG1 0x2A
#define ACC_CTRL_REG2 0x2B
#define ACC_CTRL_REG3 0x2C
#define ACC_CTRL_REG4 0x2D
#define ACC_CTRL_REG5 0x2E
// data
#define COUNTS_PER_G 1024
#define ACC_BIT0_SHIFT 4
#define ACC_BIT1_SHIFT 0
//uint16_t accVal(uint8_t*);
/*****************************************************************************
 * Button IO
 ****************************************************************************/
#define T_DEBOUNCE (float) 0.2  // Debounce time for button (ms)
/*****************************************************************************
 * ADCs
 ****************************************************************************/
#define VREF 3.13
static const float VOLTS_PER_COUNT = ((float) VREF) /  4096;  // TODO: get res dynamic
float counts2volt(uint32_t);
/*****************************************************************************
 * TODO: MOTOR
 ****************************************************************************/
#endif /* INC_HARDWARE_H_ */
