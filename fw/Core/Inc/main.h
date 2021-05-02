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

// Program Timing
#define T_HBEAT (float) 5         // LED Heartbeat Period
#define T_ACC (float) 0.1           // Accelerometer Update Period
#define T_BATT (float) 600          // Voltage Update Period
#define T_EXTEND (float) 0.1        // Saber Extension Time
#define T_RETRACT (float) 0.3       // Saber Retraction Time

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

void HAL_TIM_MspPostInit(TIM_HandleTypeDef *htim);

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define SIG_LED_Pin GPIO_PIN_14
#define SIG_LED_GPIO_Port GPIOC
#define SIG_SOL_Pin GPIO_PIN_15
#define SIG_SOL_GPIO_Port GPIOC
#define PWM_SPKR_Pin GPIO_PIN_0
#define PWM_SPKR_GPIO_Port GPIOA
#define PWM_MTR_Pin GPIO_PIN_1
#define PWM_MTR_GPIO_Port GPIOA
#define INA_Pin GPIO_PIN_2
#define INA_GPIO_Port GPIOA
#define INB_Pin GPIO_PIN_3
#define INB_GPIO_Port GPIOA
#define ADC_imtr_Pin GPIO_PIN_4
#define ADC_imtr_GPIO_Port GPIOA
#define LED_HBEAT_Pin GPIO_PIN_5
#define LED_HBEAT_GPIO_Port GPIOA
#define ENC_B_Pin GPIO_PIN_6
#define ENC_B_GPIO_Port GPIOA
#define ENC_A_Pin GPIO_PIN_7
#define ENC_A_GPIO_Port GPIOA
#define BTN_Pin GPIO_PIN_1
#define BTN_GPIO_Port GPIOB
#define BTN_EXTI_IRQn EXTI0_1_IRQn
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
