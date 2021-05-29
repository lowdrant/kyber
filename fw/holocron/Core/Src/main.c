/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
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

/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "hardware.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
#define DO_HBEAT
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
ADC_HandleTypeDef hadc;

I2C_HandleTypeDef hi2c1;

TIM_HandleTypeDef htim2;
TIM_HandleTypeDef htim21;
TIM_HandleTypeDef htim22;

/* USER CODE BEGIN PV */

SABER_ExecState SaberState = SABER_OFF;

// Communication
HAL_StatusTypeDef out = HAL_OK;

// Global Timing
uint32_t ticksPerSec;  // for timing: stm32l0xx_hal.h, period2ticks
uint32_t lastTick_DEBOUNCE = 0;
uint32_t ticksDEBOUNCE;

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_ADC_Init(void);
static void MX_I2C1_Init(void);
static void MX_TIM2_Init(void);
static void MX_TIM21_Init(void);
static void MX_TIM22_Init(void);
/* USER CODE BEGIN PFP */
static inline void nextState_USER(void);
static inline void execSaberExtend(void);
static inline void execSaberRetract(void);
static inline uint32_t Period2Ticks(float);
static inline uint16_t accVal(uint8_t*);
/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */
  __disable_irq();  // wait for setup
  static const uint8_t accRaw[10] = {0,0,0,0,0,0,0,0,0,0};
  static const uint8_t accTxPacket[1] = {ACC_X_MSB_ADDR};
  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */
  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */
  // Timing Configuration
  switch (uwTickFreq) {
    case HAL_TICK_FREQ_10HZ :
      ticksPerSec = 10;
      break;
    case HAL_TICK_FREQ_100HZ :
      ticksPerSec = 100;
      break;
    case HAL_TICK_FREQ_1KHZ :
      ticksPerSec = 1000;
      break;
    default :
      Error_Handler();
  }
  uint32_t ticks_HBEAT = Period2Ticks(T_HBEAT);
  uint32_t ticks_ACC = Period2Ticks(T_ACC);
  ticksDEBOUNCE = Period2Ticks(T_DEBOUNCE);
  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_ADC_Init();
  MX_I2C1_Init();
  MX_TIM2_Init();
  MX_TIM21_Init();
  MX_TIM22_Init();
  /* USER CODE BEGIN 2 */
  uint16_t xacc,yacc,zacc;
  uint32_t lastTick_HBEAT = 0;  // reset ticks
  uint32_t lastTick_ACC = 0;
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  HAL_ADC_Start(&hadc);
  __enable_irq();  // start program
  while (1) {
    // State Behavior
    switch (SaberState) {
      case SABER_OFF:
        break;
      case SABER_EXTEND:
        execSaberExtend();
        SaberState = SABER_ON;
        break;
      case SABER_RETRACT:
        execSaberRetract();
        SaberState = SABER_OFF;
        break;
      case SABER_ON:
        break;  // TODO: accelerometer noises
      default:
        Error_Handler();
        break;
    }

    #ifdef DO_HBEAT
    // Heartbeat
    if (uwTick - lastTick_HBEAT > ticks_HBEAT) {
      HAL_GPIO_TogglePin(LED_HBEAT_GPIO_Port, LED_HBEAT_Pin);
      lastTick_HBEAT = uwTick;
    }
    #endif  // DO_HBEAT

    #ifdef DO_ACC
    // Accelerometer
    if ( (uwTick - lastTick_ACC > ticks_ACC) ) {
      out = HAL_OK;
      __disable_irq();
      out |= HAL_I2C_Master_Transmit(&ACC_I2C, ACC_ADDR<<1, accTxPacket, 1, HAL_MAX_DELAY);
      out |= HAL_I2C_Master_Receive(&ACC_I2C, ACC_ADDR<<1, accRaw, 10, HAL_MAX_DELAY);
      if (out != HAL_OK) {Error_Handler();}
      __enable_irq();
      xacc = accVal(accRaw);
      yacc = accVal(accRaw+2);
      zacc = accVal(accRaw+4);
      lastTick_ACC = uwTick;
    }
    #endif  // DO_ACC
  }
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};
  RCC_PeriphCLKInitTypeDef PeriphClkInit = {0};

  /** Configure the main internal regulator output voltage 
  */
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);
  /** Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_MSI;
  RCC_OscInitStruct.MSIState = RCC_MSI_ON;
  RCC_OscInitStruct.MSICalibrationValue = 0;
  RCC_OscInitStruct.MSIClockRange = RCC_MSIRANGE_5;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_NONE;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_MSI;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_0) != HAL_OK)
  {
    Error_Handler();
  }
  PeriphClkInit.PeriphClockSelection = RCC_PERIPHCLK_I2C1;
  PeriphClkInit.I2c1ClockSelection = RCC_I2C1CLKSOURCE_PCLK1;
  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInit) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief ADC Initialization Function
  * @param None
  * @retval None
  */
static void MX_ADC_Init(void)
{

  /* USER CODE BEGIN ADC_Init 0 */

  /* USER CODE END ADC_Init 0 */

  ADC_ChannelConfTypeDef sConfig = {0};

  /* USER CODE BEGIN ADC_Init 1 */

  /* USER CODE END ADC_Init 1 */
  /** Configure the global features of the ADC (Clock, Resolution, Data Alignment and number of conversion) 
  */
  hadc.Instance = ADC1;
  hadc.Init.OversamplingMode = DISABLE;
  hadc.Init.ClockPrescaler = ADC_CLOCK_SYNC_PCLK_DIV1;
  hadc.Init.Resolution = ADC_RESOLUTION_12B;
  hadc.Init.SamplingTime = ADC_SAMPLETIME_1CYCLE_5;
  hadc.Init.ScanConvMode = ADC_SCAN_DIRECTION_FORWARD;
  hadc.Init.DataAlign = ADC_DATAALIGN_RIGHT;
  hadc.Init.ContinuousConvMode = DISABLE;
  hadc.Init.DiscontinuousConvMode = DISABLE;
  hadc.Init.ExternalTrigConvEdge = ADC_EXTERNALTRIGCONVEDGE_NONE;
  hadc.Init.ExternalTrigConv = ADC_SOFTWARE_START;
  hadc.Init.DMAContinuousRequests = DISABLE;
  hadc.Init.EOCSelection = ADC_EOC_SINGLE_CONV;
  hadc.Init.Overrun = ADC_OVR_DATA_PRESERVED;
  hadc.Init.LowPowerAutoWait = DISABLE;
  hadc.Init.LowPowerFrequencyMode = DISABLE;
  hadc.Init.LowPowerAutoPowerOff = DISABLE;
  if (HAL_ADC_Init(&hadc) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure for the selected ADC regular channel to be converted. 
  */
  sConfig.Channel = ADC_CHANNEL_4;
  sConfig.Rank = ADC_RANK_CHANNEL_NUMBER;
  if (HAL_ADC_ConfigChannel(&hadc, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN ADC_Init 2 */

  /* USER CODE END ADC_Init 2 */

}

/**
  * @brief I2C1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_I2C1_Init(void)
{

  /* USER CODE BEGIN I2C1_Init 0 */

  /* USER CODE END I2C1_Init 0 */

  /* USER CODE BEGIN I2C1_Init 1 */

  /* USER CODE END I2C1_Init 1 */
  hi2c1.Instance = I2C1;
  hi2c1.Init.Timing = 0x00000708;
  hi2c1.Init.OwnAddress1 = 0;
  hi2c1.Init.AddressingMode = I2C_ADDRESSINGMODE_7BIT;
  hi2c1.Init.DualAddressMode = I2C_DUALADDRESS_DISABLE;
  hi2c1.Init.OwnAddress2 = 0;
  hi2c1.Init.OwnAddress2Masks = I2C_OA2_NOMASK;
  hi2c1.Init.GeneralCallMode = I2C_GENERALCALL_DISABLE;
  hi2c1.Init.NoStretchMode = I2C_NOSTRETCH_DISABLE;
  if (HAL_I2C_Init(&hi2c1) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Analogue filter 
  */
  if (HAL_I2CEx_ConfigAnalogFilter(&hi2c1, I2C_ANALOGFILTER_ENABLE) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Digital filter 
  */
  if (HAL_I2CEx_ConfigDigitalFilter(&hi2c1, 0) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN I2C1_Init 2 */
	#ifdef DO_ACC
  // Set accelerometer to active, MMA8452 datasheet p11
  static uint8_t d[2] = {ACC_CTRL_REG1, 1};
  __disable_irq();
  if (HAL_I2C_Master_Transmit(&ACC_I2C, ACC_ADDR<<1, d, 2, HAL_MAX_DELAY) != HAL_OK) Error_Handler();
  __enable_irq();
  #endif  // DO_ACC
  /* USER CODE END I2C1_Init 2 */

}

/**
  * @brief TIM2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM2_Init(void)
{

  /* USER CODE BEGIN TIM2_Init 0 */

  /* USER CODE END TIM2_Init 0 */

  TIM_MasterConfigTypeDef sMasterConfig = {0};
  TIM_OC_InitTypeDef sConfigOC = {0};

  /* USER CODE BEGIN TIM2_Init 1 */

  /* USER CODE END TIM2_Init 1 */
  htim2.Instance = TIM2;
  htim2.Init.Prescaler = 0;
  htim2.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim2.Init.Period = 0;
  htim2.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim2.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_PWM_Init(&htim2) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim2, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sConfigOC.OCMode = TIM_OCMODE_PWM1;
  sConfigOC.Pulse = 0;
  sConfigOC.OCPolarity = TIM_OCPOLARITY_HIGH;
  sConfigOC.OCFastMode = TIM_OCFAST_DISABLE;
  if (HAL_TIM_PWM_ConfigChannel(&htim2, &sConfigOC, TIM_CHANNEL_1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM2_Init 2 */

  /* USER CODE END TIM2_Init 2 */
  HAL_TIM_MspPostInit(&htim2);

}

/**
  * @brief TIM21 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM21_Init(void)
{

  /* USER CODE BEGIN TIM21_Init 0 */

  /* USER CODE END TIM21_Init 0 */

  TIM_MasterConfigTypeDef sMasterConfig = {0};
  TIM_OC_InitTypeDef sConfigOC = {0};

  /* USER CODE BEGIN TIM21_Init 1 */

  /* USER CODE END TIM21_Init 1 */
  htim21.Instance = TIM21;
  htim21.Init.Prescaler = 0;
  htim21.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim21.Init.Period = 0;
  htim21.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim21.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_PWM_Init(&htim21) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim21, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sConfigOC.OCMode = TIM_OCMODE_PWM1;
  sConfigOC.Pulse = 0;
  sConfigOC.OCPolarity = TIM_OCPOLARITY_HIGH;
  sConfigOC.OCFastMode = TIM_OCFAST_DISABLE;
  if (HAL_TIM_PWM_ConfigChannel(&htim21, &sConfigOC, TIM_CHANNEL_1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM21_Init 2 */

  /* USER CODE END TIM21_Init 2 */
  HAL_TIM_MspPostInit(&htim21);

}

/**
  * @brief TIM22 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM22_Init(void)
{

  /* USER CODE BEGIN TIM22_Init 0 */

  /* USER CODE END TIM22_Init 0 */

  TIM_Encoder_InitTypeDef sConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  /* USER CODE BEGIN TIM22_Init 1 */

  /* USER CODE END TIM22_Init 1 */
  htim22.Instance = TIM22;
  htim22.Init.Prescaler = 0;
  htim22.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim22.Init.Period = 0;
  htim22.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim22.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  sConfig.EncoderMode = TIM_ENCODERMODE_TI1;
  sConfig.IC1Polarity = TIM_ICPOLARITY_RISING;
  sConfig.IC1Selection = TIM_ICSELECTION_DIRECTTI;
  sConfig.IC1Prescaler = TIM_ICPSC_DIV1;
  sConfig.IC1Filter = 0;
  sConfig.IC2Polarity = TIM_ICPOLARITY_RISING;
  sConfig.IC2Selection = TIM_ICSELECTION_DIRECTTI;
  sConfig.IC2Prescaler = TIM_ICPSC_DIV1;
  sConfig.IC2Filter = 0;
  if (HAL_TIM_Encoder_Init(&htim22, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim22, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM22_Init 2 */

  /* USER CODE END TIM22_Init 2 */

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOA, INA_Pin|INB_Pin|LED_HBEAT_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOB, SIG_SOL_Pin|SIG_LED_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pins : INA_Pin INB_Pin LED_HBEAT_Pin */
  GPIO_InitStruct.Pin = INA_Pin|INB_Pin|LED_HBEAT_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /*Configure GPIO pins : SIG_SOL_Pin SIG_LED_Pin */
  GPIO_InitStruct.Pin = SIG_SOL_Pin|SIG_LED_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /*Configure GPIO pin : BTN_Pin */
  GPIO_InitStruct.Pin = BTN_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_IT_RISING;
  GPIO_InitStruct.Pull = GPIO_PULLDOWN;
  HAL_GPIO_Init(BTN_GPIO_Port, &GPIO_InitStruct);

}

/* USER CODE BEGIN 4 */

/*****************************************************************************
 * STATE BEHAVIOR
 ****************************************************************************/
/**
  * @brief  EXTI line detection callbacks.
  * @param  GPIO_Pin Specifies the pins connected to the EXTI line.
  * @retval None
  */
void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
//  btnPresses++;
  __disable_irq();
  switch (GPIO_Pin) {
    case BTN_Pin:
      if (uwTick-lastTick_DEBOUNCE > ticksDEBOUNCE) {
        nextState_USER();
        lastTick_DEBOUNCE = uwTick;
      }
      break;
  }
  __enable_irq();
}

/** @defgroup Exec_Saber_State  Saber state subroutines.
  * @{
  */

/**
  * @brief  Advance saber state from user input.
  * @retval None
  */
static inline void nextState_USER(void)
{
  switch (SaberState) {
    case SABER_LOW_BATT:
      break;
    case SABER_OFF:
      SaberState = SABER_EXTEND;
      break;
    case SABER_EXTEND:
      SaberState = SABER_RETRACT;
      break;
    case SABER_ON:
      SaberState = SABER_RETRACT;
      break;
    case SABER_RETRACT:  // TODO: it won't just jump like this, will it?
      SaberState = SABER_EXTEND;
      break;
    default:
      Error_Handler();
      break;
  }
}

/**
  * @brief  Execute Saber Extension Sequence
  * @retval None
  *
  * TODO: blink lights
  * TODO: play extension noise
  */
static inline void execSaberExtend(void)
{
  HAL_GPIO_WritePin(SIG_LED_GPIO_Port, SIG_LED_Pin, GPIO_PIN_SET);
}

/**
  * @brief  Execute Saber Retraction Sequence
  * @retval None
  *
  * TODO: blink lights
  * TODO: play retraction noise
  */
static inline void execSaberRetract(void)
{
  HAL_GPIO_WritePin(SIG_LED_GPIO_Port, SIG_LED_Pin, GPIO_PIN_RESET);
}

/*****************************************************************************
 *
 ****************************************************************************/
/**
 * @brief Convert Period to Number of System Ticks
 * @param T execution period in seconds
 * @retval Execution period in system ticks
 */
static inline uint32_t Period2Ticks(float T)
{
	return (uint32_t)(T * ticksPerSec);
}


/**
 * @brief Convert I2C Data to Accelerometer Reading
 * @note See hardware.h accelerometer section for details.
 * @param d length-2 uint8 accelerometer data
 * @retval Acceleration in counts
 */
static inline uint16_t accVal(uint8_t*d)
{
  return ((*d)<<ACC_BIT0_SHIFT) + (*(d+1)<<ACC_BIT1_SHIFT);
}
/*****************************************************************************
 * MOTOR CONTROL
 ****************************************************************************/
#ifdef DO_MTR
static inline void mtrCtl(void)
{
  asm("NOOP");  // TODO: remove
  // TODO: update PWM
  // TODO: compute motor dir
  // TODO: compute motor torque
}
#endif  // DO_MTR

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
    // Turn off motor
    HAL_GPIO_WritePin(PWM_MTR_GPIO_Port,PWM_MTR_Pin,GPIO_PIN_RESET);
    HAL_GPIO_WritePin(INA_GPIO_Port,INA_Pin,GPIO_PIN_RESET);
    HAL_GPIO_WritePin(INB_GPIO_Port,INB_Pin,GPIO_PIN_RESET);
    // Disable speaker
    HAL_GPIO_WritePin(PWM_SPKR_GPIO_Port,PWM_SPKR_Pin,GPIO_PIN_RESET);
    // Disable power led
    HAL_GPIO_WritePin(SIG_LED_GPIO_Port,SIG_LED_Pin,GPIO_PIN_RESET);
    // Turn on hbeat led
    HAL_GPIO_WritePin(LED_HBEAT_GPIO_Port,LED_HBEAT_Pin,GPIO_PIN_SET);
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{ 
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/