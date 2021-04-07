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

/**
 * @defgroup Hardware_Sensitive_GPIO  Represent system on/off in a GPIO-friendly way
 * @{
 */
#define SOLENOID_LATCH GPIO_PIN_SET
#define SOLENOID_RELEASE GPIO_PIN_RESET
/**
 * @}
 */


/** @defgroup Conversion_Factors  Convert ADC reading to physical information
  * @{
  */
/**
 * @brief ADC counts per volt (3.3/4095)
 * @note 12-bit ADC, Vref=3V3
 */
#define COUNTS_PER_VOLT ((float) 0.0008058608)
/**
 * @brief Accelerometer counts per g
 */
#define VOLTS_PER_G (1)  // TODO: macro?
/**
 * @brief Torque to latch spring (Nm)
 */
#define TORQUE_LATCH 1
/**
 * @}
 */

/**
 * @defgroup Conversion_Functions
 * @{
 */
/**
 * @brief ADC Counts to Volts
 * @note 12-bit ADC, Vref=3V3
 * @param ADC Counts
 * @retval Volts
 */
#define COUNTS2VOLTS(C) ((C)*COUNTS_PER_VOLT)

float Current2Torque(float);

/**
 * @}
 */

#endif /* INC_HARDWARE_H_ */
