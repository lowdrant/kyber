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
extern TIM_HandleTypeDef htim22;
extern const int16_t tgt;
extern const int16_t * const encTicks;

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
 * @param u Motor input voltage
 */
void MtrCtl(float u)
{
  if (u<0) {
    MtrCCW();
  } else if (u>0) {
    MtrCW();
  }
  u = (u>0) ? u : -u;
  htim2.Instance->CCR1 = htim2.Init.Period * u / MV;
}

/**
 * @brief Motor control law
 * @param err System error
 * @retval Output voltage
 * TODO: integrator windup prevention
 */
float CtlLaw(int16_t err)
{
  static int32_t erri = 0;
  erri += err;
  return (KP*err + KI*erri*T_MTR);
}

void Ctl(void)
{
  static int32_t erri = 0;
  int16_t err = tgt - *encTicks;
  erri += err;
  MtrCtl(KP*err + KI*erri*T_MTR);
}


/** TODO: implement
 * @brief Check if saber is in extended state
 * @param None
 * @retval 1 if retracted, 0 else
 */
uint8_t checkExtend(void)
{
  return ((int32_t) htim22.Instance->CNT) < 100;  // TODO: meaningful limit switch
}


/** TODO: implement
 * @brief Check if saber is in retracted state
 * @param None
 * @retval 1 if retracted, 0 else
 */
uint8_t checkRetract(void)
{
  return ((int32_t) htim22.Instance->CNT) > 0;  // TODO: meaningful limit switch
}
