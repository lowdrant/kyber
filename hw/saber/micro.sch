EESchema Schematic File Version 4
LIBS:saber-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 4900 4750 0    50   Input ~ 0
SDA
Text HLabel 4900 4650 0    50   Input ~ 0
SCL
Text HLabel 4900 3950 0    50   Input ~ 0
PWM_MTR
Text HLabel 4900 3850 0    50   Input ~ 0
imtr
Text HLabel 4900 4350 0    50   Input ~ 0
PWM_SPKR
Text HLabel 6400 4650 2    50   Input ~ 0
SIG_LED
$Comp
L MCU_ST_STM32L0:STM32L031F4Px U?
U 1 1 608E4D10
P 5850 4350
AR Path="/608E4D10" Ref="U?"  Part="1" 
AR Path="/608DACE2/608E4D10" Ref="U?"  Part="1" 
F 0 "U?" H 5750 5100 50  0000 C CNN
F 1 "STM32L031F4Px" H 5500 5000 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 5450 3650 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00140359.pdf" H 5850 4350 50  0001 C CNN
	1    5850 4350
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Male J?
U 1 1 608E4D17
P 1900 4400
AR Path="/608E4D17" Ref="J?"  Part="1" 
AR Path="/608DACE2/608E4D17" Ref="J?"  Part="1" 
F 0 "J?" H 2006 4778 50  0000 C CNN
F 1 "pin header" H 2000 4700 50  0000 C CNN
F 2 "" H 1900 4400 50  0001 C CNN
F 3 "https://www.st.com/resource/en/user_manual/dm00244518-stm32-nucleo144-boards-mb1137-stmicroelectronics.pdf" H 1900 4400 50  0001 C CNN
	1    1900 4400
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 608E4D1E
P 5800 3550
AR Path="/608E4D1E" Ref="#PWR?"  Part="1" 
AR Path="/608DACE2/608E4D1E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5800 3400 50  0001 C CNN
F 1 "+3V3" H 5815 3723 50  0000 C CNN
F 2 "" H 5800 3550 50  0001 C CNN
F 3 "" H 5800 3550 50  0001 C CNN
	1    5800 3550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5850 3650 5850 3600
Wire Wire Line
	5850 3600 5800 3600
Wire Wire Line
	5750 3600 5750 3650
Connection ~ 5800 3600
Wire Wire Line
	5800 3600 5750 3600
Wire Wire Line
	5800 3550 5800 3600
$Comp
L power:GND #PWR?
U 1 1 608E4D2A
P 5850 5200
AR Path="/608E4D2A" Ref="#PWR?"  Part="1" 
AR Path="/608DACE2/608E4D2A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5850 4950 50  0001 C CNN
F 1 "GND" H 5855 5027 50  0000 C CNN
F 2 "" H 5850 5200 50  0001 C CNN
F 3 "" H 5850 5200 50  0001 C CNN
	1    5850 5200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5850 5200 5850 5150
Text Label 6400 3850 0    50   ~ 0
NRST
Text Label 5300 4850 2    50   ~ 0
SWDIO
Text Label 5300 4950 2    50   ~ 0
SWCLK
Wire Wire Line
	5300 4950 5350 4950
Wire Wire Line
	5300 4850 5350 4850
Wire Wire Line
	6400 3850 6350 3850
$Comp
L power:+3V3 #PWR?
U 1 1 608E4D39
P 2650 4150
AR Path="/608E4D39" Ref="#PWR?"  Part="1" 
AR Path="/608DACE2/608E4D39" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2650 4000 50  0001 C CNN
F 1 "+3V3" H 2665 4323 50  0000 C CNN
F 2 "" H 2650 4150 50  0001 C CNN
F 3 "" H 2650 4150 50  0001 C CNN
	1    2650 4150
	1    0    0    -1  
$EndComp
Text Label 2250 4300 0    50   ~ 0
SWCLK
Text Label 2250 4500 0    50   ~ 0
SWDIO
Wire Wire Line
	2250 4300 2100 4300
Wire Wire Line
	2250 4500 2100 4500
Text Label 2250 4600 0    50   ~ 0
NRST
Wire Wire Line
	2250 4600 2100 4600
$Comp
L power:GND #PWR?
U 1 1 608E4D45
P 2650 4450
AR Path="/608E4D45" Ref="#PWR?"  Part="1" 
AR Path="/608DACE2/608E4D45" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2650 4200 50  0001 C CNN
F 1 "GND" H 2655 4277 50  0000 C CNN
F 2 "" H 2650 4450 50  0001 C CNN
F 3 "" H 2650 4450 50  0001 C CNN
	1    2650 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 4400 2650 4400
Wire Wire Line
	2650 4400 2650 4450
Wire Wire Line
	2100 4200 2650 4200
Wire Wire Line
	2650 4200 2650 4150
Text Notes 1700 3100 0    50   ~ 0
Programming Header
Text Notes 1400 5700 0    50   ~ 0
pinout for 144pin nucleo user manual, p19\nsymbol docs link to said user manual
$Comp
L Device:R R?
U 1 1 60916090
P 9400 4300
F 0 "R?" H 9470 4346 50  0000 L CNN
F 1 "1k" H 9470 4255 50  0000 L CNN
F 2 "" V 9330 4300 50  0001 C CNN
F 3 "~" H 9400 4300 50  0001 C CNN
	1    9400 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6091614C
P 9400 4700
F 0 "#PWR?" H 9400 4450 50  0001 C CNN
F 1 "GND" H 9405 4527 50  0000 C CNN
F 2 "" H 9400 4700 50  0001 C CNN
F 3 "" H 9400 4700 50  0001 C CNN
	1    9400 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 60917D5B
P 10050 4550
F 0 "D?" V 10088 4433 50  0000 R CNN
F 1 "LED" V 9997 4433 50  0000 R CNN
F 2 "" H 10050 4550 50  0001 C CNN
F 3 "~" H 10050 4550 50  0001 C CNN
	1    10050 4550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 60917E65
P 10050 4200
F 0 "R?" H 9980 4154 50  0000 R CNN
F 1 "1k" H 9980 4245 50  0000 R CNN
F 2 "" V 9980 4200 50  0001 C CNN
F 3 "~" H 10050 4200 50  0001 C CNN
	1    10050 4200
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60918518
P 10050 4750
F 0 "#PWR?" H 10050 4500 50  0001 C CNN
F 1 "GND" H 10055 4577 50  0000 C CNN
F 2 "" H 10050 4750 50  0001 C CNN
F 3 "" H 10050 4750 50  0001 C CNN
	1    10050 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6091AE9B
P 8050 4100
F 0 "R?" H 7981 4054 50  0000 R CNN
F 1 "1k" H 7981 4145 50  0000 R CNN
F 2 "" V 7980 4100 50  0001 C CNN
F 3 "~" H 8050 4100 50  0001 C CNN
	1    8050 4100
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 6091AF62
P 8050 4500
F 0 "R?" H 7980 4454 50  0000 R CNN
F 1 "10k" H 7980 4545 50  0000 R CNN
F 2 "" V 7980 4500 50  0001 C CNN
F 3 "~" H 8050 4500 50  0001 C CNN
	1    8050 4500
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6091B6B6
P 8050 4700
F 0 "#PWR?" H 8050 4450 50  0001 C CNN
F 1 "GND" H 8055 4527 50  0000 C CNN
F 2 "" H 8050 4700 50  0001 C CNN
F 3 "" H 8050 4700 50  0001 C CNN
	1    8050 4700
	1    0    0    -1  
$EndComp
$Comp
L power:+12C #PWR?
U 1 1 6091B748
P 8050 3900
F 0 "#PWR?" H 8050 3750 50  0001 C CNN
F 1 "+12C" H 8065 4073 50  0000 C CNN
F 2 "" H 8050 3900 50  0001 C CNN
F 3 "" H 8050 3900 50  0001 C CNN
	1    8050 3900
	1    0    0    -1  
$EndComp
Text HLabel 4900 4050 0    50   Input ~ 0
INA
Text HLabel 4900 4150 0    50   Input ~ 0
INB
Text Label 5300 4550 2    50   ~ 0
LED_HBEAT
Wire Wire Line
	5300 4550 5350 4550
Text Label 10050 3900 1    50   ~ 0
LED_HBEAT
Text Label 9400 3900 1    50   ~ 0
BOOT0
Text Label 6400 4050 0    50   ~ 0
BOOT0
Wire Wire Line
	6400 4050 6350 4050
$Comp
L Switch:SW_SPST SW?
U 1 1 60927F6A
P 8700 4300
F 0 "SW?" V 8654 4398 50  0000 L CNN
F 1 "SW_SPST" V 8745 4398 50  0000 L CNN
F 2 "" H 8700 4300 50  0001 C CNN
F 3 "" H 8700 4300 50  0001 C CNN
	1    8700 4300
	0    1    1    0   
$EndComp
Text Label 8700 4550 3    50   ~ 0
BTN
Text Label 6400 4950 0    50   ~ 0
BTN
Wire Wire Line
	6400 4950 6350 4950
Text Notes 7900 5800 0    50   ~ 0
ADC_VBATT - 1:10 divider covers all voltage ranges I care about\nBTN        -  Requires internal pull-down\nBOOT0     - Pull-down to boot from flash\nLED_HBEAT - No PU/PD
Text Label 5300 4250 2    50   ~ 0
ADC_VBATT
Wire Wire Line
	8050 4250 8050 4300
Wire Wire Line
	5300 4250 5350 4250
Wire Wire Line
	4900 4650 5350 4650
Wire Wire Line
	4900 4750 5350 4750
Wire Wire Line
	4900 4350 5350 4350
Wire Wire Line
	4900 4150 5350 4150
Wire Wire Line
	4900 4050 5350 4050
Wire Wire Line
	4900 3950 5350 3950
Wire Wire Line
	4900 3850 5350 3850
Wire Wire Line
	6400 4650 6350 4650
Wire Wire Line
	8050 4300 8150 4300
Connection ~ 8050 4300
Wire Wire Line
	8050 4300 8050 4350
Text Label 8150 4300 0    50   ~ 0
ADC_VBATT
Text Notes 5700 3100 0    50   ~ 0
Micro
Text Notes 8550 3100 0    50   ~ 0
Signal Conditioning & IO
$Comp
L power:+3V3 #PWR?
U 1 1 6095F9A8
P 8700 4050
F 0 "#PWR?" H 8700 3900 50  0001 C CNN
F 1 "+3V3" H 8715 4223 50  0000 C CNN
F 2 "" H 8700 4050 50  0001 C CNN
F 3 "" H 8700 4050 50  0001 C CNN
	1    8700 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 4050 8700 4100
Wire Wire Line
	8700 4500 8700 4550
Wire Wire Line
	8050 4650 8050 4700
Wire Wire Line
	8050 3900 8050 3950
Wire Wire Line
	9400 4450 9400 4700
Wire Wire Line
	9400 3900 9400 4150
Wire Wire Line
	10050 4350 10050 4400
Wire Wire Line
	10050 4700 10050 4750
Wire Wire Line
	10050 3900 10050 4050
Text Notes 5100 5700 0    50   ~ 0
All pinnames should match in .ioc file 
$EndSCHEMATC
