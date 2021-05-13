EESchema Schematic File Version 4
LIBS:saber-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 6
Title ""
Date ""
Rev "1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Marion Anderson"
$EndDescr
Text HLabel 4600 4450 0    50   BiDi ~ 0
SDA
Text HLabel 4600 4350 0    50   Output ~ 0
SCL
Text HLabel 4600 3650 0    50   Output ~ 0
PWM_MTR_MCU
Text HLabel 4600 3950 0    50   Input ~ 0
ADC_imtr
Text HLabel 6100 4350 2    50   Output ~ 0
SIG_LED_MCU
$Comp
L MCU_ST_STM32L0:STM32L031F4Px U?
U 1 1 608E4D10
P 5550 4050
AR Path="/608E4D10" Ref="U?"  Part="1" 
AR Path="/608DACE2/608E4D10" Ref="U1"  Part="1" 
F 0 "U1" H 5450 4800 50  0000 C CNN
F 1 "STM32L031F4Px" H 5200 4700 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 5150 3350 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00140359.pdf" H 5550 4050 50  0001 C CNN
	1    5550 4050
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 608E4D1E
P 5500 3250
AR Path="/608E4D1E" Ref="#PWR?"  Part="1" 
AR Path="/608DACE2/608E4D1E" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 5500 3100 50  0001 C CNN
F 1 "+3V3" H 5515 3423 50  0000 C CNN
F 2 "" H 5500 3250 50  0001 C CNN
F 3 "" H 5500 3250 50  0001 C CNN
	1    5500 3250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5550 3350 5550 3300
Wire Wire Line
	5550 3300 5500 3300
Wire Wire Line
	5450 3300 5450 3350
Connection ~ 5500 3300
Wire Wire Line
	5500 3300 5450 3300
Wire Wire Line
	5500 3250 5500 3300
$Comp
L power:GND #PWR?
U 1 1 608E4D2A
P 5550 4900
AR Path="/608E4D2A" Ref="#PWR?"  Part="1" 
AR Path="/608DACE2/608E4D2A" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 5550 4650 50  0001 C CNN
F 1 "GND" H 5555 4727 50  0000 C CNN
F 2 "" H 5550 4900 50  0001 C CNN
F 3 "" H 5550 4900 50  0001 C CNN
	1    5550 4900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5550 4900 5550 4850
Wire Wire Line
	6100 3550 6050 3550
$Comp
L Device:LED D1
U 1 1 60917D5B
P 10100 4400
F 0 "D1" V 10138 4283 50  0000 R CNN
F 1 "150060VS75020" V 10047 4283 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10100 4400 50  0001 C CNN
F 3 "https://www.we-online.de/katalog/datasheet/150060VS75000.pdf" H 10100 4400 50  0001 C CNN
	1    10100 4400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 60917E65
P 10100 4050
F 0 "R6" H 10030 4004 50  0000 R CNN
F 1 "1k" H 10030 4095 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 10030 4050 50  0001 C CNN
F 3 "~" H 10100 4050 50  0001 C CNN
	1    10100 4050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR019
U 1 1 60918518
P 10100 4600
F 0 "#PWR019" H 10100 4350 50  0001 C CNN
F 1 "GND" H 10105 4427 50  0000 C CNN
F 2 "" H 10100 4600 50  0001 C CNN
F 3 "" H 10100 4600 50  0001 C CNN
	1    10100 4600
	1    0    0    -1  
$EndComp
Text HLabel 4600 3750 0    50   Output ~ 0
INA_MCU
Text HLabel 4600 3850 0    50   Output ~ 0
INB_MCU
Text Label 6100 3750 0    50   ~ 0
BOOT0
Wire Wire Line
	6100 3750 6050 3750
Wire Wire Line
	6100 4650 6050 4650
Text Notes 7650 5450 0    50   ~ 0
BOOT0 - Pull-down to boot from flash. 10u cap on pin1 AN4467 p27\nNRST    - Cap for AN4467 p30
Wire Wire Line
	6100 4350 6050 4350
Text Notes 5400 2800 0    50   ~ 0
Micro
Text Notes 8500 2800 0    50   ~ 0
MCU Support Circuitry
Wire Wire Line
	10100 4550 10100 4600
Text Notes 4800 5550 0    50   ~ 0
All pinnames should match in .ioc \nBTN internal pulldown\nPWM_SPKR,SIG_LED,SIG_SOL Push-Pull\nMCU uses internal pu for i2c
$Comp
L Connector:Conn_01x05_Male J?
U 1 1 60AB40EF
P 1600 4200
AR Path="/60AB40EF" Ref="J?"  Part="1" 
AR Path="/608DACE2/60AB40EF" Ref="J4"  Part="1" 
F 0 "J4" H 1700 4650 50  0000 C CNN
F 1 "NUCLEO144ZE-STLINK" H 1700 4550 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 1600 4200 50  0001 C CNN
F 3 "https://www.st.com/resource/en/user_manual/dm00244518-stm32-nucleo144-boards-mb1137-stmicroelectronics.pdf" H 1600 4200 50  0001 C CNN
	1    1600 4200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 60AB40F6
P 2350 3950
AR Path="/60AB40F6" Ref="#PWR?"  Part="1" 
AR Path="/608DACE2/60AB40F6" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 2350 3800 50  0001 C CNN
F 1 "+3V3" H 2365 4123 50  0000 C CNN
F 2 "" H 2350 3950 50  0001 C CNN
F 3 "" H 2350 3950 50  0001 C CNN
	1    2350 3950
	1    0    0    -1  
$EndComp
Text Label 1950 4100 0    50   ~ 0
SWCLK
Text Label 1950 4300 0    50   ~ 0
SWDIO
Wire Wire Line
	1950 4100 1800 4100
Wire Wire Line
	1950 4300 1800 4300
Text Label 1950 4400 0    50   ~ 0
NRST
Wire Wire Line
	1950 4400 1800 4400
$Comp
L power:GND #PWR?
U 1 1 60AB4102
P 2350 4250
AR Path="/60AB4102" Ref="#PWR?"  Part="1" 
AR Path="/608DACE2/60AB4102" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 2350 4000 50  0001 C CNN
F 1 "GND" H 2355 4077 50  0000 C CNN
F 2 "" H 2350 4250 50  0001 C CNN
F 3 "" H 2350 4250 50  0001 C CNN
	1    2350 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 4200 2350 4200
Wire Wire Line
	2350 4200 2350 4250
Wire Wire Line
	1800 4000 2350 4000
Wire Wire Line
	2350 4000 2350 3950
Text Notes 1250 5450 0    50   ~ 0
pinout for 144pin nucleo user manual, p19\nsymbol docs link to said user manual
Text Notes 1700 2800 0    50   ~ 0
Debug Header
Wire Wire Line
	10100 4200 10100 4250
Text Label 6100 3550 0    50   ~ 0
NRST
Text Label 5000 4550 2    50   ~ 0
SWDIO
Wire Wire Line
	5000 4550 5050 4550
Text Label 5000 4650 2    50   ~ 0
SWCLK
Wire Wire Line
	5000 4650 5050 4650
Wire Wire Line
	6050 4450 6100 4450
Text HLabel 6100 4450 2    50   Output ~ 0
SIG_SOL_MCU
Text HLabel 6100 4650 2    50   Input ~ 0
BTN
$Comp
L Device:C C4
U 1 1 608E50E9
P 9250 4200
F 0 "C4" H 9365 4246 50  0000 L CNN
F 1 "100n" H 9365 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9288 4050 50  0001 C CNN
F 3 "~" H 9250 4200 50  0001 C CNN
	1    9250 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 608E72C8
P 8800 4200
F 0 "C3" H 8915 4246 50  0000 L CNN
F 1 "10u" H 8915 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8838 4050 50  0001 C CNN
F 3 "~" H 8800 4200 50  0001 C CNN
	1    8800 4200
	1    0    0    -1  
$EndComp
Text HLabel 4600 4250 0    50   Input ~ 0
ENC_A
Text HLabel 4600 4150 0    50   Input ~ 0
ENC_B
Wire Wire Line
	4600 4450 5050 4450
Wire Wire Line
	4600 4150 5050 4150
Wire Wire Line
	4600 4250 5050 4250
Wire Wire Line
	4600 3950 5050 3950
Wire Wire Line
	4600 3650 5050 3650
Wire Wire Line
	4600 3750 5050 3750
Wire Wire Line
	4600 3850 5050 3850
Wire Wire Line
	4600 4350 5050 4350
Text Label 5000 4050 2    50   ~ 0
LED_HBEAT
Wire Wire Line
	5000 4050 5050 4050
Text HLabel 4600 3550 0    50   Output ~ 0
PWM_SPKR_MCU
Wire Wire Line
	4600 3550 5050 3550
$Comp
L Device:R R7
U 1 1 60916090
P 8400 4200
F 0 "R7" H 8470 4246 50  0000 L CNN
F 1 "1k" H 8470 4155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8330 4200 50  0001 C CNN
F 3 "~" H 8400 4200 50  0001 C CNN
	1    8400 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 608E528F
P 9650 4200
F 0 "C5" H 9765 4246 50  0000 L CNN
F 1 "100n" H 9765 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9688 4050 50  0001 C CNN
F 3 "~" H 9650 4200 50  0001 C CNN
	1    9650 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 4350 8400 4400
Wire Wire Line
	9650 4400 9650 4350
Wire Wire Line
	9250 4350 9250 4400
Wire Wire Line
	9250 4400 9450 4400
Wire Wire Line
	8800 4350 8800 4400
Wire Wire Line
	9250 4050 9250 4000
Wire Wire Line
	9250 4000 9450 4000
Wire Wire Line
	9650 4000 9650 4050
Wire Wire Line
	9450 4000 9450 3950
Connection ~ 9450 4000
Wire Wire Line
	9450 4000 9650 4000
$Comp
L power:+3V3 #PWR014
U 1 1 60920C30
P 9450 3950
F 0 "#PWR014" H 9450 3800 50  0001 C CNN
F 1 "+3V3" H 9465 4123 50  0000 C CNN
F 2 "" H 9450 3950 50  0001 C CNN
F 3 "" H 9450 3950 50  0001 C CNN
	1    9450 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 4400 8600 4450
$Comp
L power:GND #PWR016
U 1 1 60922072
P 8600 4450
F 0 "#PWR016" H 8600 4200 50  0001 C CNN
F 1 "GND" H 8605 4277 50  0000 C CNN
F 2 "" H 8600 4450 50  0001 C CNN
F 3 "" H 8600 4450 50  0001 C CNN
	1    8600 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 4050 8800 4000
Wire Wire Line
	8800 4000 8600 4000
Wire Wire Line
	8400 4000 8400 4050
Wire Wire Line
	8400 4000 8600 4000
Connection ~ 8600 4000
Wire Wire Line
	8400 4400 8600 4400
Text Label 8600 3900 1    50   ~ 0
BOOT0
Wire Wire Line
	8600 3900 8600 4000
Text Label 7500 3950 2    50   ~ 0
NRST
$Comp
L Device:C C2
U 1 1 6092D499
P 7550 4200
F 0 "C2" H 7665 4246 50  0000 L CNN
F 1 "100n" H 7665 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7588 4050 50  0001 C CNN
F 3 "~" H 7550 4200 50  0001 C CNN
	1    7550 4200
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 60933504
P 7950 4200
F 0 "SW1" V 7904 4348 50  0000 L CNN
F 1 "SW" V 7995 4348 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 7950 4400 50  0001 C CNN
F 3 "" H 7950 4400 50  0001 C CNN
	1    7950 4200
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR012
U 1 1 60934F7D
P 7750 3900
F 0 "#PWR012" H 7750 3750 50  0001 C CNN
F 1 "+3V3" H 7765 4073 50  0000 C CNN
F 2 "" H 7750 3900 50  0001 C CNN
F 3 "" H 7750 3900 50  0001 C CNN
	1    7750 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 4050 7550 3950
Wire Wire Line
	7950 3950 7950 4000
Wire Wire Line
	7550 4350 7550 4450
Wire Wire Line
	7950 4450 7950 4400
Wire Wire Line
	7550 4450 7750 4450
Wire Wire Line
	7500 3950 7550 3950
Connection ~ 7550 3950
Wire Wire Line
	7750 4450 7750 4500
Connection ~ 7750 4450
Wire Wire Line
	7750 4450 7950 4450
$Comp
L power:GND #PWR018
U 1 1 60944438
P 7750 4500
F 0 "#PWR018" H 7750 4250 50  0001 C CNN
F 1 "GND" H 7755 4327 50  0000 C CNN
F 2 "" H 7750 4500 50  0001 C CNN
F 3 "" H 7750 4500 50  0001 C CNN
	1    7750 4500
	1    0    0    -1  
$EndComp
Connection ~ 8600 4400
Wire Wire Line
	8600 4400 8800 4400
$Comp
L power:GND #PWR017
U 1 1 6094719A
P 9450 4450
F 0 "#PWR017" H 9450 4200 50  0001 C CNN
F 1 "GND" H 9455 4277 50  0000 C CNN
F 2 "" H 9450 4450 50  0001 C CNN
F 3 "" H 9450 4450 50  0001 C CNN
	1    9450 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 4450 9450 4400
Connection ~ 9450 4400
Wire Wire Line
	9450 4400 9650 4400
Text Label 10100 3850 1    50   ~ 0
LED_HBEAT
Wire Wire Line
	10100 3850 10100 3900
Wire Wire Line
	7550 3950 7750 3950
Wire Wire Line
	7750 3900 7750 3950
Connection ~ 7750 3950
Wire Wire Line
	7750 3950 7950 3950
$EndSCHEMATC
