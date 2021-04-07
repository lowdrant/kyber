/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2021 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32l0xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */
typedef enum
{
  SABER_OFF = 0U,
  SABER_EXTEND,
  SABER_ON,
  SABER_RETRACT,
  SABER_LOW_BATT
} SABER_ExecState;
/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/** @defgroup Program_Timing  Execution period (seconds) of subroutines
  * @{
  */
/**
  * @brief  LED Heartbeat Period
  */
#define T_HBEAT (float) 0.5
/**
  * @brief  Acceleration Update Period
  */
#define T_ACC (float) 0.1
/**
  * @brief  Battery Voltage Update Period
  */
#define T_BATT 600
/**
 * @brief  Saber Extension Time
 */
#define T_EXTEND (float) 0.1
/**
 * @brief  Saber Retraction Time
 */
#define T_RETRACT (float) 0.3
/**
  * @}
  */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define BTN_Pin GPIO_PIN_14
#define BTN_GPIO_Port GPIOC
#define LED_PWR_Pin GPIO_PIN_7
#define LED_PWR_GPIO_Port GPIOA
#define LED_HBEAT_Pin GPIO_PIN_1
#define LED_HBEAT_GPIO_Port GPIOB
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
