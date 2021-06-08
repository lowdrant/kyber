EESchema Schematic File Version 4
LIBS:KyberBoard-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 6
Title "KyberBoard"
Date ""
Rev "1"
Comp ""
Comment1 "2021"
Comment2 "Marion Anderson"
Comment3 ""
Comment4 "Microcontroller and Support Circuitry"
$EndDescr
Text HLabel 4250 4900 0    50   BiDi ~ 0
SDA
Text HLabel 4250 4800 0    50   Output ~ 0
SCL
Text HLabel 5450 3900 2    50   Output ~ 0
PWM_MTR_MCU
Text HLabel 5450 3800 2    50   Input ~ 0
ADC_imtr
Text HLabel 4250 4400 0    50   Output ~ 0
SIG_LED_MCU
$Comp
L power:+3V3 #PWR?
U 1 1 608E4D1E
P 4900 3100
AR Path="/608E4D1E" Ref="#PWR?"  Part="1" 
AR Path="/608DACE2/608E4D1E" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 4900 2950 50  0001 C CNN
F 1 "+3V3" H 4915 3273 50  0000 C CNN
F 2 "" H 4900 3100 50  0001 C CNN
F 3 "" H 4900 3100 50  0001 C CNN
	1    4900 3100
	-1   0    0    -1  
$EndComp
Connection ~ 4900 3150
Wire Wire Line
	4900 3100 4900 3150
$Comp
L power:GND #PWR?
U 1 1 608E4D2A
P 4850 5200
AR Path="/608E4D2A" Ref="#PWR?"  Part="1" 
AR Path="/608DACE2/608E4D2A" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 4850 4950 50  0001 C CNN
F 1 "GND" H 4855 5027 50  0000 C CNN
F 2 "" H 4850 5200 50  0001 C CNN
F 3 "" H 4850 5200 50  0001 C CNN
	1    4850 5200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4850 5200 4850 5150
Wire Wire Line
	4250 3400 4300 3400
$Comp
L Device:LED D1
U 1 1 60917D5B
P 10000 4350
F 0 "D1" V 10038 4233 50  0000 R CNN
F 1 "150060VS75020" V 9947 4233 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10000 4350 50  0001 C CNN
F 3 "https://www.we-online.de/katalog/datasheet/150060VS75000.pdf" H 10000 4350 50  0001 C CNN
	1    10000 4350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 60917E65
P 10000 4000
F 0 "R6" H 9930 3954 50  0000 R CNN
F 1 "1k" H 9930 4045 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9930 4000 50  0001 C CNN
F 3 "~" H 10000 4000 50  0001 C CNN
	1    10000 4000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR019
U 1 1 60918518
P 10000 4550
F 0 "#PWR019" H 10000 4300 50  0001 C CNN
F 1 "GND" H 10005 4377 50  0000 C CNN
F 2 "" H 10000 4550 50  0001 C CNN
F 3 "" H 10000 4550 50  0001 C CNN
	1    10000 4550
	1    0    0    -1  
$EndComp
Text HLabel 5450 3700 2    50   Output ~ 0
INA_MCU
Text HLabel 5450 4000 2    50   Output ~ 0
INB_MCU
Wire Wire Line
	4250 3600 4300 3600
Wire Wire Line
	5450 4300 5400 4300
Text Notes 7700 5750 0    50   ~ 0
VDDA (Pin 5) - 1u + 100n cap (C19+C18)\nVSS (Pin 1)  - 10u + 100n cap (C3+C4)\nVSS (Pin 17) - 100n (C5)\nNRST (pin 4) - Cap for AN4467 p30 (C2)
Wire Wire Line
	4250 4400 4300 4400
Text Notes 4800 2800 0    50   ~ 0
Micro
Text Notes 8100 2800 0    50   ~ 0
MCU Support Circuitry
Wire Wire Line
	10000 4500 10000 4550
Text Notes 4200 5800 0    50   ~ 0
All pinnames should match in .ioc \nBTN internal pulldown\nPWM_SPKR,SIG_LED,SIG_SOL Push-Pull\nMCU uses internal pu for i2c
$Comp
L power:+3V3 #PWR?
U 1 1 60AB40F6
P 1550 4150
AR Path="/60AB40F6" Ref="#PWR?"  Part="1" 
AR Path="/608DACE2/60AB40F6" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 1550 4000 50  0001 C CNN
F 1 "+3V3" H 1565 4323 50  0000 C CNN
F 2 "" H 1550 4150 50  0001 C CNN
F 3 "" H 1550 4150 50  0001 C CNN
	1    1550 4150
	1    0    0    -1  
$EndComp
Text Label 1550 4300 2    50   ~ 0
SWCLK
Text Label 2450 4400 0    50   ~ 0
SWDIO
Wire Wire Line
	2450 4400 2300 4400
Text Label 2450 4300 0    50   ~ 0
NRST
Wire Wire Line
	2450 4300 2300 4300
$Comp
L power:GND #PWR?
U 1 1 60AB4102
P 1550 4450
AR Path="/60AB4102" Ref="#PWR?"  Part="1" 
AR Path="/608DACE2/60AB4102" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 1550 4200 50  0001 C CNN
F 1 "GND" H 1555 4277 50  0000 C CNN
F 2 "" H 1550 4450 50  0001 C CNN
F 3 "" H 1550 4450 50  0001 C CNN
	1    1550 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 4400 1550 4450
Wire Wire Line
	1550 4200 1550 4150
Text Notes 1250 5700 0    50   ~ 0
pinout for 144pin nucleo user manual, p19\nsymbol docs link to said user manual
Text Notes 1700 2800 0    50   ~ 0
Debug Header
Wire Wire Line
	10000 4150 10000 4200
Text Label 4250 3400 2    50   ~ 0
NRST
Text Label 5450 4700 0    50   ~ 0
SWDIO
Wire Wire Line
	5450 4700 5400 4700
Text Label 5450 4800 0    50   ~ 0
SWCLK
Wire Wire Line
	5450 4800 5400 4800
Text HLabel 4250 4300 0    50   Output ~ 0
SIG_SOL_MCU
Text HLabel 5450 4300 2    50   Input ~ 0
BTN
$Comp
L Device:C C4
U 1 1 608E50E9
P 8250 4200
F 0 "C4" H 8365 4246 50  0000 L CNN
F 1 "100n" H 8365 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8288 4050 50  0001 C CNN
F 3 "~" H 8250 4200 50  0001 C CNN
	1    8250 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 608E72C8
P 7850 4200
F 0 "C3" H 7965 4246 50  0000 L CNN
F 1 "10u" H 7965 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7888 4050 50  0001 C CNN
F 3 "~" H 7850 4200 50  0001 C CNN
	1    7850 4200
	1    0    0    -1  
$EndComp
Text HLabel 4250 4600 0    50   Input ~ 0
ENC_A
Text HLabel 4250 4700 0    50   Input ~ 0
ENC_B
Text Label 5450 4100 0    50   ~ 0
LED_HBEAT
Wire Wire Line
	5450 4100 5400 4100
Text HLabel 5450 3600 2    50   Output ~ 0
PWM_SPKR_MCU
$Comp
L Device:C C5
U 1 1 608E528F
P 8650 4200
F 0 "C5" H 8765 4246 50  0000 L CNN
F 1 "100n" H 8765 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8688 4050 50  0001 C CNN
F 3 "~" H 8650 4200 50  0001 C CNN
	1    8650 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 4400 8650 4350
Wire Wire Line
	8250 4350 8250 4400
Wire Wire Line
	7850 4350 7850 4400
Wire Wire Line
	8250 4050 8250 4000
Wire Wire Line
	8650 4000 8650 4050
Wire Wire Line
	8650 4000 8650 3950
$Comp
L power:+3V3 #PWR014
U 1 1 60920C30
P 8650 3950
F 0 "#PWR014" H 8650 3800 50  0001 C CNN
F 1 "+3V3" H 8665 4123 50  0000 C CNN
F 2 "" H 8650 3950 50  0001 C CNN
F 3 "" H 8650 3950 50  0001 C CNN
	1    8650 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 4050 7850 4000
Text Label 7100 3900 1    50   ~ 0
NRST
$Comp
L Device:C C2
U 1 1 6092D499
P 6900 4200
F 0 "C2" H 7015 4246 50  0000 L CNN
F 1 "100n" H 7015 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6938 4050 50  0001 C CNN
F 3 "~" H 6900 4200 50  0001 C CNN
	1    6900 4200
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 60933504
P 7300 4200
F 0 "SW1" H 7250 4450 50  0000 L CNN
F 1 "TL3342F160QG/TR" H 6950 4350 50  0000 L CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 7300 4400 50  0001 C CNN
F 3 "https://sten-eswitch-13110800-production.s3.amazonaws.com/system/asset/product_line/data_sheet/165/TL3342.pdf" H 7300 4400 50  0001 C CNN
	1    7300 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 4450 7100 4450
Wire Wire Line
	7100 4450 7100 4500
Connection ~ 7100 4450
Wire Wire Line
	7100 4450 7300 4450
$Comp
L power:GND #PWR018
U 1 1 60944438
P 7100 4500
F 0 "#PWR018" H 7100 4250 50  0001 C CNN
F 1 "GND" H 7105 4327 50  0000 C CNN
F 2 "" H 7100 4500 50  0001 C CNN
F 3 "" H 7100 4500 50  0001 C CNN
	1    7100 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 6094719A
P 8650 4450
F 0 "#PWR017" H 8650 4200 50  0001 C CNN
F 1 "GND" H 8655 4277 50  0000 C CNN
F 2 "" H 8650 4450 50  0001 C CNN
F 3 "" H 8650 4450 50  0001 C CNN
	1    8650 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 4450 8650 4400
Text Label 10000 3800 1    50   ~ 0
LED_HBEAT
Wire Wire Line
	10000 3800 10000 3850
$Comp
L Connector_Generic:Conn_02x03_Counter_Clockwise J4
U 1 1 609FEADF
P 2000 4300
F 0 "J4" H 2050 4617 50  0000 C CNN
F 1 "15910060" H 2050 4526 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical_SMD" H 2000 4300 50  0001 C CNN
F 3 "~" H 2000 4300 50  0001 C CNN
	1    2000 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 4200 1800 4200
Wire Wire Line
	1550 4300 1800 4300
Wire Wire Line
	1550 4400 1800 4400
NoConn ~ 2300 4200
$Comp
L MCU_ST_STM32L0:STM32L051K8Tx U1
U 1 1 609F0641
P 4900 4100
F 0 "U1" H 5100 5050 50  0000 C CNN
F 1 "STM32L051K8T6" H 5350 4950 50  0000 C CNN
F 2 "Package_QFP:LQFP-32_7x7mm_P0.8mm" H 4400 3200 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00108219.pdf" H 4900 4100 50  0001 C CNN
	1    4900 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3150 4800 3200
Wire Wire Line
	4800 3150 4900 3150
Wire Wire Line
	4900 3150 4900 3200
Wire Wire Line
	5000 3150 5000 3200
Wire Wire Line
	4900 3150 5000 3150
Wire Wire Line
	4800 5100 4800 5150
Wire Wire Line
	4800 5150 4850 5150
Wire Wire Line
	4900 5150 4900 5100
Connection ~ 4850 5150
$Comp
L Device:C C18
U 1 1 60A1E12E
P 9050 4200
F 0 "C18" H 9165 4246 50  0000 L CNN
F 1 "100n" H 9165 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9088 4050 50  0001 C CNN
F 3 "~" H 9050 4200 50  0001 C CNN
	1    9050 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 4400 9050 4350
Connection ~ 8650 4400
Wire Wire Line
	9050 4000 9050 4050
Connection ~ 8650 4000
Wire Wire Line
	8250 4400 8650 4400
Wire Wire Line
	8250 4000 8650 4000
$Comp
L Device:C C19
U 1 1 60A26F05
P 9500 4200
F 0 "C19" H 9615 4246 50  0000 L CNN
F 1 "1u" H 9615 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9538 4050 50  0001 C CNN
F 3 "~" H 9500 4200 50  0001 C CNN
	1    9500 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 4400 9500 4400
Wire Wire Line
	9500 4400 9500 4350
Connection ~ 9050 4400
Wire Wire Line
	9050 4000 9500 4000
Wire Wire Line
	9500 4000 9500 4050
Connection ~ 9050 4000
Wire Wire Line
	4850 5150 4900 5150
$Comp
L power:GND #PWR0102
U 1 1 60A36F08
P 4250 3650
F 0 "#PWR0102" H 4250 3400 50  0001 C CNN
F 1 "GND" H 4255 3477 50  0000 C CNN
F 2 "" H 4250 3650 50  0001 C CNN
F 3 "" H 4250 3650 50  0001 C CNN
	1    4250 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3600 4250 3650
Connection ~ 8250 4400
Wire Wire Line
	8650 4400 9050 4400
Wire Wire Line
	8650 4000 9050 4000
Wire Wire Line
	7850 4400 8250 4400
Wire Wire Line
	7850 4000 8250 4000
Connection ~ 8250 4000
Wire Wire Line
	4250 4600 4300 4600
Wire Wire Line
	4250 4700 4300 4700
Wire Wire Line
	4250 4800 4300 4800
Wire Wire Line
	4250 4900 4300 4900
Wire Wire Line
	5400 4000 5450 4000
Wire Wire Line
	5400 3900 5450 3900
Wire Wire Line
	5400 3800 5450 3800
Wire Wire Line
	5400 3700 5450 3700
Wire Wire Line
	7100 3900 7100 3950
Wire Wire Line
	7300 3950 7300 4000
Wire Wire Line
	7300 4400 7300 4450
Wire Wire Line
	6900 4350 6900 4450
Wire Wire Line
	6900 3950 6900 4050
Wire Wire Line
	5450 3600 5400 3600
NoConn ~ 5400 3400
NoConn ~ 5400 3500
NoConn ~ 5400 4200
NoConn ~ 5400 4400
NoConn ~ 5400 4500
NoConn ~ 5400 4600
NoConn ~ 5400 4900
NoConn ~ 4300 4500
NoConn ~ 4300 4100
NoConn ~ 4300 4000
Wire Wire Line
	4300 4300 4250 4300
Wire Wire Line
	6900 3950 7100 3950
Connection ~ 7100 3950
Wire Wire Line
	7100 3950 7300 3950
$EndSCHEMATC
