/**
  ******************************************************************************
  * @file    hardware.h
  * @author  Marion Anderson
  * @brief   Hardware Configuration Header File
  ******************************************************************************
  */

#ifndef INC_HARDWARE_H
#define INC_HARDWARE_H

#include "stm32l0xx_hal_i2c.h"
#include "stm32l0xx_hal_gpio.h"
#include "stm32l0xx_hal_tim.h"
#include "math.h"

/*****************************************************************************
 * Accelerometer IO - MMA8452 Addresses & Helper Functions
 ****************************************************************************/
extern I2C_HandleTypeDef hi2c1;
#define ACC_I2C hi2c1
#define ACC_ADDR 0x1DU
// reading
#define ACC_X_MSB_ADDR 0x01U
// control registers
#define ACC_CTRL_REG1 0x2AU
#define ACC_CTRL_REG2 0x2BU
#define ACC_CTRL_REG3 0x2CU
#define ACC_CTRL_REG4 0x2DU
#define ACC_CTRL_REG5 0x2EU
// data
#define COUNTS_PER_G 1024U
#define ACC_BIT0_SHIFT 4U
#define ACC_BIT1_SHIFT 0U
/*****************************************************************************
 * Button IO
 ****************************************************************************/
#define T_DEBOUNCE (float) 0.2  // Debounce time for button (ms)
/*****************************************************************************
 * ADCs
 ****************************************************************************/
#define VREF 3.3
static const float VOLTS_PER_COUNT = ((float) VREF) /  4096;  // TODO: get res dynamic
float counts2volt(uint32_t);
/*****************************************************************************
 * MOTOR
 ****************************************************************************/
// sensing
#define MRSENSE 1500U  // Ohms
#define MIGAIN 11000U  // VNHD7008AY datasheet p15
static const uint32_t MTR_I_MULT = MRSENSE*MIGAIN;
// control gains
#define K0 ((float) 1)
#define KP ((float) 1)
#define KI ((float) 0)
#define KD ((float) 0)
#define ND 3  // derivative averager length
#define T_CTL ((float) 0.001)  // control period
static const float DERVQUOTIENT = ND * T_CTL;
// motor params (metric!!)
#define ML 100 // uH
#define MR 2   // Ohms
#define MV 12  // Input Voltage
#define MJ 1   // Inertia
#define MK 1   // Torque Constant
#define MD 1   // Friction Constant
// goal params (metric!!)
#define TDES 5  // desired torque (Nm)
const int16_t tgt = 10;
// functions
void MtrCW(void);
void MtrCCW(void);
void MtrBrake(void);
void MtrCtl(float);  // TODO: set channel compare preload?
float CtlLaw(int16_t);
void Ctl(void);
#endif /* INC_HARDWARE_H_ */
