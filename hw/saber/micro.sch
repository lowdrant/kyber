EESchema Schematic File Version 4
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
Text HLabel 4950 4450 0    50   BiDi ~ 0
SDA
Text HLabel 4950 4350 0    50   Output ~ 0
SCL
Text HLabel 4950 3650 0    50   Output ~ 0
PWM_MTR
Text HLabel 4950 3550 0    50   Input ~ 0
imtr
Text HLabel 4950 4050 0    50   Output ~ 0
PWM_SPKR
Text HLabel 6450 4350 2    50   Output ~ 0
SIG_LED
$Comp
L MCU_ST_STM32L0:STM32L031F4Px U?
U 1 1 608E4D10
P 5900 4050
AR Path="/608E4D10" Ref="U?"  Part="1" 
AR Path="/608DACE2/608E4D10" Ref="U3"  Part="1" 
F 0 "U3" H 5800 4800 50  0000 C CNN
F 1 "STM32L031F4Px" H 5550 4700 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 5500 3350 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00140359.pdf" H 5900 4050 50  0001 C CNN
	1    5900 4050
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 608E4D1E
P 5850 3250
AR Path="/608E4D1E" Ref="#PWR?"  Part="1" 
AR Path="/608DACE2/608E4D1E" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 5850 3100 50  0001 C CNN
F 1 "+3V3" H 5865 3423 50  0000 C CNN
F 2 "" H 5850 3250 50  0001 C CNN
F 3 "" H 5850 3250 50  0001 C CNN
	1    5850 3250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5900 3350 5900 3300
Wire Wire Line
	5900 3300 5850 3300
Wire Wire Line
	5800 3300 5800 3350
Connection ~ 5850 3300
Wire Wire Line
	5850 3300 5800 3300
Wire Wire Line
	5850 3250 5850 3300
$Comp
L power:GND #PWR?
U 1 1 608E4D2A
P 5900 4900
AR Path="/608E4D2A" Ref="#PWR?"  Part="1" 
AR Path="/608DACE2/608E4D2A" Ref="#PWR026"  Part="1" 
F 0 "#PWR026" H 5900 4650 50  0001 C CNN
F 1 "GND" H 5905 4727 50  0000 C CNN
F 2 "" H 5900 4900 50  0001 C CNN
F 3 "" H 5900 4900 50  0001 C CNN
	1    5900 4900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5900 4900 5900 4850
Wire Wire Line
	6450 3550 6400 3550
Text Notes 3000 6450 0    50   ~ 0
Decoupling Caps - AN4467 p27
$Comp
L Device:R R10
U 1 1 60916090
P 8800 4200
F 0 "R10" H 8870 4246 50  0000 L CNN
F 1 "1k" H 8870 4155 50  0000 L CNN
F 2 "" V 8730 4200 50  0001 C CNN
F 3 "~" H 8800 4200 50  0001 C CNN
	1    8800 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 6091614C
P 8800 4600
F 0 "#PWR027" H 8800 4350 50  0001 C CNN
F 1 "GND" H 8805 4427 50  0000 C CNN
F 2 "" H 8800 4600 50  0001 C CNN
F 3 "" H 8800 4600 50  0001 C CNN
	1    8800 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D5
U 1 1 60917D5B
P 9100 4400
F 0 "D5" V 9138 4283 50  0000 R CNN
F 1 "150060VS75000" V 9047 4283 50  0000 R CNN
F 2 "" H 9100 4400 50  0001 C CNN
F 3 "https://www.we-online.de/katalog/datasheet/150060VS75000.pdf" H 9100 4400 50  0001 C CNN
	1    9100 4400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R11
U 1 1 60917E65
P 9100 4050
F 0 "R11" H 9030 4004 50  0000 R CNN
F 1 "1k" H 9030 4095 50  0000 R CNN
F 2 "" V 9030 4050 50  0001 C CNN
F 3 "~" H 9100 4050 50  0001 C CNN
	1    9100 4050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR028
U 1 1 60918518
P 9100 4600
F 0 "#PWR028" H 9100 4350 50  0001 C CNN
F 1 "GND" H 9105 4427 50  0000 C CNN
F 2 "" H 9100 4600 50  0001 C CNN
F 3 "" H 9100 4600 50  0001 C CNN
	1    9100 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 6091AE9B
P 10000 4000
F 0 "R12" H 9931 3954 50  0000 R CNN
F 1 "1k" H 9931 4045 50  0000 R CNN
F 2 "" V 9930 4000 50  0001 C CNN
F 3 "~" H 10000 4000 50  0001 C CNN
	1    10000 4000
	-1   0    0    1   
$EndComp
$Comp
L Device:R R13
U 1 1 6091AF62
P 10000 4400
F 0 "R13" H 9930 4354 50  0000 R CNN
F 1 "10k" H 9930 4445 50  0000 R CNN
F 2 "" V 9930 4400 50  0001 C CNN
F 3 "~" H 10000 4400 50  0001 C CNN
	1    10000 4400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR030
U 1 1 6091B6B6
P 10000 4600
F 0 "#PWR030" H 10000 4350 50  0001 C CNN
F 1 "GND" H 10005 4427 50  0000 C CNN
F 2 "" H 10000 4600 50  0001 C CNN
F 3 "" H 10000 4600 50  0001 C CNN
	1    10000 4600
	1    0    0    -1  
$EndComp
$Comp
L power:+12C #PWR029
U 1 1 6091B748
P 10000 3700
F 0 "#PWR029" H 10000 3550 50  0001 C CNN
F 1 "+12C" H 10015 3873 50  0000 C CNN
F 2 "" H 10000 3700 50  0001 C CNN
F 3 "" H 10000 3700 50  0001 C CNN
	1    10000 3700
	1    0    0    -1  
$EndComp
Text HLabel 4950 3750 0    50   Output ~ 0
INA
Text HLabel 4950 3850 0    50   Output ~ 0
INB
Text Label 5350 4250 2    50   ~ 0
LED_HBEAT
Wire Wire Line
	5350 4250 5400 4250
Text Label 9100 3600 1    50   ~ 0
LED_HBEAT
Text Label 8800 3750 1    50   ~ 0
BOOT0
Text Label 6450 3750 0    50   ~ 0
BOOT0
Wire Wire Line
	6450 3750 6400 3750
Wire Wire Line
	6450 4650 6400 4650
Text Notes 8050 5500 0    50   ~ 0
ADC_VBATT - 1:10 divider covers all voltage ranges I care about\nBOOT0     - Pull-down to boot from flash\nLED_HBEAT - Push-Pull
Text Label 5350 3950 2    50   ~ 0
ADC_VBATT
Wire Wire Line
	10000 4150 10000 4200
Wire Wire Line
	5350 3950 5400 3950
Wire Wire Line
	4950 4350 5400 4350
Wire Wire Line
	4950 4450 5400 4450
Wire Wire Line
	4950 4050 5400 4050
Wire Wire Line
	4950 3850 5400 3850
Wire Wire Line
	4950 3750 5400 3750
Wire Wire Line
	4950 3650 5400 3650
Wire Wire Line
	4950 3550 5400 3550
Wire Wire Line
	6450 4350 6400 4350
Wire Wire Line
	10000 4200 10100 4200
Connection ~ 10000 4200
Wire Wire Line
	10000 4200 10000 4250
Text Label 10100 4200 0    50   ~ 0
ADC_VBATT
Text Notes 5750 2800 0    50   ~ 0
Micro
Text Notes 8700 2800 0    50   ~ 0
Signal Conditioning & IO
Wire Wire Line
	9100 4550 9100 4600
Text Notes 5150 5500 0    50   ~ 0
All pinnames should match in .ioc \nBTN internal pulldown\nPWM_SPKR,SIG_LED,SIG_SOL Push-Pull
$Comp
L Connector:Conn_01x05_Male J?
U 1 1 60AB40EF
P 1950 4200
AR Path="/60AB40EF" Ref="J?"  Part="1" 
AR Path="/608DACE2/60AB40EF" Ref="J2"  Part="1" 
F 0 "J2" H 2056 4578 50  0000 C CNN
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
AR Path="/608DACE2/60AB40F6" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 2700 3800 50  0001 C CNN
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
AR Path="/608DACE2/60AB4102" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 2700 4000 50  0001 C CNN
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
Text Notes 1600 5450 0    50   ~ 0
pinout for 144pin nucleo user manual, p19\nsymbol docs link to said user manual
Text Notes 2050 2800 0    50   ~ 0
Debug Header
Wire Wire Line
	9100 4200 9100 4250
Text Label 6450 3550 0    50   ~ 0
NRST
Text Label 5350 4550 2    50   ~ 0
SWDIO
Wire Wire Line
	5350 4550 5400 4550
Text Label 5350 4650 2    50   ~ 0
SWCLK
Wire Wire Line
	5350 4650 5400 4650
Wire Wire Line
	6400 4450 6450 4450
Text HLabel 6450 4450 2    50   Output ~ 0
SIG_SOL
Text HLabel 6450 4650 2    50   Input ~ 0
BTN
Wire Wire Line
	10000 3700 10000 3850
$Comp
L Device:Jumper_NC_Small JP?
U 1 1 60F63CC1
P 9100 3750
AR Path="/609455AB/60F63CC1" Ref="JP?"  Part="1" 
AR Path="/608DACE2/60F63CC1" Ref="JP5"  Part="1" 
F 0 "JP5" V 9054 3824 50  0000 L CNN
F 1 "Jumper_NC_Small" V 9145 3824 50  0000 L CNN
F 2 "" H 9100 3750 50  0001 C CNN
F 3 "~" H 9100 3750 50  0001 C CNN
	1    9100 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	9100 3850 9100 3900
Wire Wire Line
	9100 3600 9100 3650
$Comp
L Device:C C9
U 1 1 608E50E9
P 3600 7100
F 0 "C9" H 3715 7146 50  0000 L CNN
F 1 "C" H 3715 7055 50  0000 L CNN
F 2 "" H 3638 6950 50  0001 C CNN
F 3 "~" H 3600 7100 50  0001 C CNN
	1    3600 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 608E528F
P 4000 7100
F 0 "C10" H 4115 7146 50  0000 L CNN
F 1 "C" H 4115 7055 50  0000 L CNN
F 2 "" H 4038 6950 50  0001 C CNN
F 3 "~" H 4000 7100 50  0001 C CNN
	1    4000 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 608E72C8
P 3200 7100
F 0 "C8" H 3315 7146 50  0000 L CNN
F 1 "10u" H 3315 7055 50  0000 L CNN
F 2 "" H 3238 6950 50  0001 C CNN
F 3 "~" H 3200 7100 50  0001 C CNN
	1    3200 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 6950 3600 6900
Wire Wire Line
	3600 6900 3800 6900
Wire Wire Line
	4000 6900 4000 6950
Wire Wire Line
	3600 7250 3600 7300
Wire Wire Line
	3600 7300 3800 7300
Wire Wire Line
	4000 7300 4000 7250
Wire Wire Line
	3800 7300 3800 7350
Connection ~ 3800 7300
Wire Wire Line
	3800 7300 4000 7300
$Comp
L power:GND #PWR024
U 1 1 608EAFA3
P 3800 7350
F 0 "#PWR024" H 3800 7100 50  0001 C CNN
F 1 "GND" H 3805 7177 50  0000 C CNN
F 2 "" H 3800 7350 50  0001 C CNN
F 3 "" H 3800 7350 50  0001 C CNN
	1    3800 7350
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR023
U 1 1 608EB025
P 3800 6850
F 0 "#PWR023" H 3800 6700 50  0001 C CNN
F 1 "+3V3" H 3815 7023 50  0000 C CNN
F 2 "" H 3800 6850 50  0001 C CNN
F 3 "" H 3800 6850 50  0001 C CNN
	1    3800 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 6850 3800 6900
Connection ~ 3800 6900
Wire Wire Line
	3800 6900 4000 6900
Connection ~ 3600 7300
Wire Wire Line
	8800 4350 8800 4600
Wire Wire Line
	8800 3750 8800 4050
Wire Wire Line
	3200 7250 3200 7300
Wire Wire Line
	3200 7300 3600 7300
Text Label 3200 6850 1    50   ~ 0
BOOT0
NoConn ~ 5400 4150
Wire Wire Line
	10000 4600 10000 4550
Wire Wire Line
	3200 6850 3200 6950
$EndSCHEMATC
