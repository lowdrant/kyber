/**
  ******************************************************************************
  * @file    hardware.c
  * @author  Marion Anderson
  * @brief   Hardware Configuration C File
  ******************************************************************************
  */
#include "main.h"
#include "hardware.h"
#include "math.h"

extern TIM_HandleTypeDef htim2;
extern TIM_HandleTypeDef htim21;
extern TIM_HandleTypeDef htim22;
extern const int16_t tgt;
extern const int16_t * const encTicks;
extern float u;

/*****************************************************************************
 * Motor Actuation - Direction & PWM
 ****************************************************************************/

/**
 * @brief Set hbridge direction pins to Clockwise Rotation.
 */
void MtrCW(void)
{
  HAL_GPIO_WritePin(INA_GPIO_Port, INA_Pin, GPIO_PIN_SET);
  HAL_GPIO_WritePin(INB_GPIO_Port, INB_Pin, GPIO_PIN_RESET);
}

/**
 * @brief Set hbridge direction pins to Counter-Clockwise Rotation.
 */
void MtrCCW(void)
{
  HAL_GPIO_WritePin(INA_GPIO_Port, INA_Pin, GPIO_PIN_RESET);
  HAL_GPIO_WritePin(INB_GPIO_Port, INB_Pin, GPIO_PIN_SET);
}

/**
 * @brief Set hbridge direction pins to hard-stop motor at VBATT.
 */
void MtrBrakeHi(void)
{
  HAL_GPIO_WritePin(INA_GPIO_Port, INA_Pin, GPIO_PIN_SET);
  HAL_GPIO_WritePin(INB_GPIO_Port, INB_Pin, GPIO_PIN_SET);
}

/**
 * @brief Set hbridge direction pins to hard-stop motor at GND.
 */
void MtrBrakeLo(void)
{
  HAL_GPIO_WritePin(INA_GPIO_Port, INA_Pin, GPIO_PIN_RESET);
  HAL_GPIO_WritePin(INB_GPIO_Port, INB_Pin, GPIO_PIN_RESET);
}

/**
 * @brief Set all hbridge GPIO according to motor input voltage u
 * @param (global) u Motor input voltage
 */
void SetMtrPWM(float u)
{
  if (u<0) {
    MtrCCW();
  } else if (u>0) {
    MtrCW();
  }
  u = (u>0) ? u : -u;
  htim2.Instance->CCR1 = htim2.Instance->ARR * u / MV;
}


/**
 * Set Speaker PWM Frequency
 * @param freq Frequency in Hz (up to 20,000).
 */
const float freq2arr = 3.3; // 0<->0, 20,000 <-> 2^16-1
void SetSpkrFreq(uint16_t freq)
{
  htim21.Instance->ARR = (uint16_t) freq * freq2arr;
  htim21.Instance->CCR1 = htim21.Instance->ARR >> 2;
}


/*****************************************************************************
 * Motor Control
 ****************************************************************************/

/**
 * @brief Motor control law
 * @param err System error
 * @retval (global update) Output voltage
 * TODO: integrator windup prevention
 */

void CtlLaw(int16_t err)
{
  static int32_t erri = 0;
  static uint32_t errd = 0;
  static float errbuf[ND] = {0};
  static uint32_t i = 0;  // iteration var
  // derivative term
  errd = 0;
  for (i=1;i<ND;i++) {
    errbuf[i-1] = errbuf[i];
    errd += errbuf[i];
  }
  errbuf[ND-1] = err;
  errd += err;
  // integral term
  if (fabs(u) < MV) {  // anti-windup
    erri += err;
  }
  // computation
  u = KP*err + KI*erri*T_MTR + KD*errd/T_MTR/3;
}
