EESchema Schematic File Version 4
LIBS:saber-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 4900 4450 0    50   BiDi ~ 0
SDA
Text HLabel 4900 4350 0    50   Output ~ 0
SCL
Text HLabel 4900 3650 0    50   Output ~ 0
PWM_MTR
Text HLabel 4900 3550 0    50   Input ~ 0
imtr
Text HLabel 4900 4050 0    50   Output ~ 0
PWM_SPKR
Text HLabel 6400 4350 2    50   Output ~ 0
SIG_LED
$Comp
L MCU_ST_STM32L0:STM32L031F4Px U?
U 1 1 608E4D10
P 5850 4050
AR Path="/608E4D10" Ref="U?"  Part="1" 
AR Path="/608DACE2/608E4D10" Ref="U?"  Part="1" 
F 0 "U?" H 5750 4800 50  0000 C CNN
F 1 "STM32L031F4Px" H 5500 4700 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 5450 3350 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00140359.pdf" H 5850 4050 50  0001 C CNN
	1    5850 4050
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 608E4D1E
P 5800 3250
AR Path="/608E4D1E" Ref="#PWR?"  Part="1" 
AR Path="/608DACE2/608E4D1E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5800 3100 50  0001 C CNN
F 1 "+3V3" H 5815 3423 50  0000 C CNN
F 2 "" H 5800 3250 50  0001 C CNN
F 3 "" H 5800 3250 50  0001 C CNN
	1    5800 3250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5850 3350 5850 3300
Wire Wire Line
	5850 3300 5800 3300
Wire Wire Line
	5750 3300 5750 3350
Connection ~ 5800 3300
Wire Wire Line
	5800 3300 5750 3300
Wire Wire Line
	5800 3250 5800 3300
$Comp
L power:GND #PWR?
U 1 1 608E4D2A
P 5850 4900
AR Path="/608E4D2A" Ref="#PWR?"  Part="1" 
AR Path="/608DACE2/608E4D2A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5850 4650 50  0001 C CNN
F 1 "GND" H 5855 4727 50  0000 C CNN
F 2 "" H 5850 4900 50  0001 C CNN
F 3 "" H 5850 4900 50  0001 C CNN
	1    5850 4900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5850 4900 5850 4850
Wire Wire Line
	6400 3550 6350 3550
Text Notes 3350 6300 0    50   ~ 0
Decoupling Caps
$Comp
L Device:R R?
U 1 1 60916090
P 9550 4000
F 0 "R?" H 9620 4046 50  0000 L CNN
F 1 "1k" H 9620 3955 50  0000 L CNN
F 2 "" V 9480 4000 50  0001 C CNN
F 3 "~" H 9550 4000 50  0001 C CNN
	1    9550 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6091614C
P 9550 4400
F 0 "#PWR?" H 9550 4150 50  0001 C CNN
F 1 "GND" H 9555 4227 50  0000 C CNN
F 2 "" H 9550 4400 50  0001 C CNN
F 3 "" H 9550 4400 50  0001 C CNN
	1    9550 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 60917D5B
P 9850 4200
F 0 "D?" V 9888 4083 50  0000 R CNN
F 1 "LED" V 9797 4083 50  0000 R CNN
F 2 "" H 9850 4200 50  0001 C CNN
F 3 "~" H 9850 4200 50  0001 C CNN
	1    9850 4200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 60917E65
P 9850 3850
F 0 "R?" H 9780 3804 50  0000 R CNN
F 1 "1k" H 9780 3895 50  0000 R CNN
F 2 "" V 9780 3850 50  0001 C CNN
F 3 "~" H 9850 3850 50  0001 C CNN
	1    9850 3850
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60918518
P 9850 4400
F 0 "#PWR?" H 9850 4150 50  0001 C CNN
F 1 "GND" H 9855 4227 50  0000 C CNN
F 2 "" H 9850 4400 50  0001 C CNN
F 3 "" H 9850 4400 50  0001 C CNN
	1    9850 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6091AE9B
P 8400 3800
F 0 "R?" H 8331 3754 50  0000 R CNN
F 1 "1k" H 8331 3845 50  0000 R CNN
F 2 "" V 8330 3800 50  0001 C CNN
F 3 "~" H 8400 3800 50  0001 C CNN
	1    8400 3800
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 6091AF62
P 8400 4200
F 0 "R?" H 8330 4154 50  0000 R CNN
F 1 "10k" H 8330 4245 50  0000 R CNN
F 2 "" V 8330 4200 50  0001 C CNN
F 3 "~" H 8400 4200 50  0001 C CNN
	1    8400 4200
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6091B6B6
P 8400 4400
F 0 "#PWR?" H 8400 4150 50  0001 C CNN
F 1 "GND" H 8405 4227 50  0000 C CNN
F 2 "" H 8400 4400 50  0001 C CNN
F 3 "" H 8400 4400 50  0001 C CNN
	1    8400 4400
	1    0    0    -1  
$EndComp
$Comp
L power:+12C #PWR?
U 1 1 6091B748
P 8400 3600
F 0 "#PWR?" H 8400 3450 50  0001 C CNN
F 1 "+12C" H 8415 3773 50  0000 C CNN
F 2 "" H 8400 3600 50  0001 C CNN
F 3 "" H 8400 3600 50  0001 C CNN
	1    8400 3600
	1    0    0    -1  
$EndComp
Text HLabel 4900 3750 0    50   Output ~ 0
INA
Text HLabel 4900 3850 0    50   Output ~ 0
INB
Text Label 5300 4250 2    50   ~ 0
LED_HBEAT
Wire Wire Line
	5300 4250 5350 4250
Text Label 9850 3550 1    50   ~ 0
LED_HBEAT
Text Label 9550 3550 1    50   ~ 0
BOOT0
Text Label 6400 3750 0    50   ~ 0
BOOT0
Wire Wire Line
	6400 3750 6350 3750
$Comp
L Switch:SW_SPST SW?
U 1 1 60927F6A
P 9000 4000
F 0 "SW?" V 8954 4098 50  0000 L CNN
F 1 "SW_SPST" V 9045 4098 50  0000 L CNN
F 2 "" H 9000 4000 50  0001 C CNN
F 3 "" H 9000 4000 50  0001 C CNN
	1    9000 4000
	0    1    1    0   
$EndComp
Text Label 9000 4450 3    50   ~ 0
BTN
Text Label 6400 4650 0    50   ~ 0
BTN
Wire Wire Line
	6400 4650 6350 4650
Text Notes 8050 5500 0    50   ~ 0
ADC_VBATT - 1:10 divider covers all voltage ranges I care about\nBTN        -  Requires internal pull-down\nBOOT0     - Pull-down to boot from flash\nLED_HBEAT - No PU/PD
Text Label 5300 3950 2    50   ~ 0
ADC_VBATT
Wire Wire Line
	8400 3950 8400 4000
Wire Wire Line
	5300 3950 5350 3950
Wire Wire Line
	4900 4350 5350 4350
Wire Wire Line
	4900 4450 5350 4450
Wire Wire Line
	4900 4050 5350 4050
Wire Wire Line
	4900 3850 5350 3850
Wire Wire Line
	4900 3750 5350 3750
Wire Wire Line
	4900 3650 5350 3650
Wire Wire Line
	4900 3550 5350 3550
Wire Wire Line
	6400 4350 6350 4350
Wire Wire Line
	8400 4000 8500 4000
Connection ~ 8400 4000
Wire Wire Line
	8400 4000 8400 4050
Text Label 8500 4000 0    50   ~ 0
ADC_VBATT
Text Notes 5700 2800 0    50   ~ 0
Micro
Text Notes 8700 2800 0    50   ~ 0
Signal Conditioning & IO
$Comp
L power:+3V3 #PWR?
U 1 1 6095F9A8
P 9000 3600
F 0 "#PWR?" H 9000 3450 50  0001 C CNN
F 1 "+3V3" H 9015 3773 50  0000 C CNN
F 2 "" H 9000 3600 50  0001 C CNN
F 3 "" H 9000 3600 50  0001 C CNN
	1    9000 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 4350 8400 4400
Wire Wire Line
	8400 3600 8400 3650
Wire Wire Line
	9550 4150 9550 4400
Wire Wire Line
	9850 4350 9850 4400
Text Notes 5100 5400 0    50   ~ 0
All pinnames should match in .ioc file 
$Comp
L Connector:Conn_01x05_Male J?
U 1 1 60AB40EF
P 1950 4200
AR Path="/60AB40EF" Ref="J?"  Part="1" 
AR Path="/608DACE2/60AB40EF" Ref="J?"  Part="1" 
F 0 "J?" H 2056 4578 50  0000 C CNN
F 1 "pin header" H 2050 4500 50  0000 C CNN
F 2 "" H 1950 4200 50  0001 C CNN
F 3 "https://www.st.com/resource/en/user_manual/dm00244518-stm32-nucleo144-boards-mb1137-stmicroelectronics.pdf" H 1950 4200 50  0001 C CNN
	1    1950 4200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 60AB40F6
P 2700 3950
AR Path="/60AB40F6" Ref="#PWR?"  Part="1" 
AR Path="/608DACE2/60AB40F6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2700 3800 50  0001 C CNN
F 1 "+3V3" H 2715 4123 50  0000 C CNN
F 2 "" H 2700 3950 50  0001 C CNN
F 3 "" H 2700 3950 50  0001 C CNN
	1    2700 3950
	1    0    0    -1  
$EndComp
Text Label 2300 4100 0    50   ~ 0
SWCLK
Text Label 2300 4300 0    50   ~ 0
SWDIO
Wire Wire Line
	2300 4100 2150 4100
Wire Wire Line
	2300 4300 2150 4300
Text Label 2300 4400 0    50   ~ 0
NRST
Wire Wire Line
	2300 4400 2150 4400
$Comp
L power:GND #PWR?
U 1 1 60AB4102
P 2700 4250
AR Path="/60AB4102" Ref="#PWR?"  Part="1" 
AR Path="/608DACE2/60AB4102" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2700 4000 50  0001 C CNN
F 1 "GND" H 2705 4077 50  0000 C CNN
F 2 "" H 2700 4250 50  0001 C CNN
F 3 "" H 2700 4250 50  0001 C CNN
	1    2700 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 4200 2700 4200
Wire Wire Line
	2700 4200 2700 4250
Wire Wire Line
	2150 4000 2700 4000
Wire Wire Line
	2700 4000 2700 3950
Text Notes 1600 5400 0    50   ~ 0
pinout for 144pin nucleo user manual, p19\nsymbol docs link to said user manual
Text Notes 2050 2800 0    50   ~ 0
Debug Header
Wire Wire Line
	9000 3600 9000 3800
Wire Wire Line
	9000 4200 9000 4450
Wire Wire Line
	9550 3550 9550 3850
Wire Wire Line
	9850 4000 9850 4050
Wire Wire Line
	9850 3550 9850 3700
Text Label 6400 3550 0    50   ~ 0
NRST
Text Label 5300 4550 2    50   ~ 0
SWDIO
Wire Wire Line
	5300 4550 5350 4550
Text Label 5300 4650 2    50   ~ 0
SWCLK
Wire Wire Line
	5300 4650 5350 4650
Wire Wire Line
	6350 4450 6400 4450
Text HLabel 6400 4450 2    50   Output ~ 0
SIG_SOL
$EndSCHEMATC
