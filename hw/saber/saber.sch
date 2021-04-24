EESchema Schematic File Version 4
LIBS:saber-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
Title "Saber"
Date ""
Rev "1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Marion Anderson"
$EndDescr
$Sheet
S 7000 2700 1100 450 
U 60835C0E
F0 "power" 50
F1 "power.sch" 50
F2 "VBATT+" I L 7000 2850 50 
F3 "3V3" I R 8100 2800 50 
F4 "VBATT_FILT" I R 8100 2900 50 
F5 "VBATT_UNFILT" I R 8100 3000 50 
F6 "VBATT-" I L 7000 3000 50 
$EndSheet
$Sheet
S 7000 4450 1100 1250
U 60835C30
F0 "actuators" 50
F1 "actuators.sch" 50
F2 "VMOT+" I L 7000 4600 50 
F3 "VMOT-" I L 7000 4700 50 
F4 "LED+" I L 7000 5200 50 
F5 "SPKR+" I L 7000 5500 50 
F6 "INA" I R 8100 4700 50 
F7 "SIG_LED" I R 8100 5350 50 
F8 "PWM_SPKR" I R 8100 5450 50 
F9 "PWM_MTR" I R 8100 4600 50 
F10 "INB" I R 8100 4800 50 
F11 "SIG_SOL" I R 8100 5100 50 
F12 "SOL+" I L 7000 4900 50 
F13 "SOL-" I L 7000 5000 50 
F14 "LED-" I L 7000 5300 50 
F15 "SPKR-" I L 7000 5600 50 
$EndSheet
$Sheet
S 7000 3500 1100 650 
U 60835C4F
F0 "sensors" 50
F1 "sensors.sch" 50
F2 "VMOT_IN" I L 7000 3950 50 
F3 "VMOT_OUT" I L 7000 3700 50 
F4 "SDA" I R 8100 3650 50 
F5 "SCL" I R 8100 3750 50 
F6 "imtr" I R 8100 3950 50 
$EndSheet
$Comp
L Connector:Screw_Terminal_01x12 J?
U 1 1 608360E1
P 2400 4150
F 0 "J?" H 2480 4142 50  0000 L CNN
F 1 "Screw_Terminal_01x12" H 2480 4051 50  0000 L CNN
F 2 "" H 2400 4150 50  0001 C CNN
F 3 "~" H 2400 4150 50  0001 C CNN
	1    2400 4150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7000 4600 6900 4600
Wire Wire Line
	6900 4600 6900 3950
Wire Wire Line
	6900 3950 7000 3950
$Sheet
S 8850 3500 1150 2200
U 608DACE2
F0 "micro" 50
F1 "micro.sch" 50
F2 "SDA" I L 8850 3650 50 
F3 "SCL" I L 8850 3750 50 
F4 "imtr" I L 8850 3950 50 
F5 "SIG_LED" I L 8850 5350 50 
F6 "INA" I L 8850 4700 50 
F7 "INB" I L 8850 4800 50 
F8 "PWM_MTR" I L 8850 4600 50 
F9 "PWM_SPKR" I L 8850 5450 50 
F10 "NRST" I R 10000 4000 50 
F11 "SWDIO" I R 10000 4150 50 
F12 "SWCLK" I R 10000 4300 50 
$EndSheet
Wire Wire Line
	8100 4600 8850 4600
Wire Wire Line
	8100 4700 8850 4700
Wire Wire Line
	8100 5350 8850 5350
Wire Wire Line
	8100 5450 8850 5450
Wire Wire Line
	8100 3950 8850 3950
Wire Wire Line
	8100 3750 8850 3750
Wire Wire Line
	8100 3650 8850 3650
$Comp
L power:+3V3 #PWR?
U 1 1 6091310B
P 8200 2750
F 0 "#PWR?" H 8200 2600 50  0001 C CNN
F 1 "+3V3" H 8215 2923 50  0000 C CNN
F 2 "" H 8200 2750 50  0001 C CNN
F 3 "" H 8200 2750 50  0001 C CNN
	1    8200 2750
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 60913172
P 8700 2750
F 0 "#PWR?" H 8700 2600 50  0001 C CNN
F 1 "+12V" H 8715 2923 50  0000 C CNN
F 2 "" H 8700 2750 50  0001 C CNN
F 3 "" H 8700 2750 50  0001 C CNN
	1    8700 2750
	1    0    0    -1  
$EndComp
$Comp
L power:+12C #PWR?
U 1 1 609131D9
P 8450 2750
F 0 "#PWR?" H 8450 2600 50  0001 C CNN
F 1 "+12C" H 8465 2923 50  0000 C CNN
F 2 "" H 8450 2750 50  0001 C CNN
F 3 "" H 8450 2750 50  0001 C CNN
	1    8450 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 2800 8200 2800
Wire Wire Line
	8200 2800 8200 2750
Wire Wire Line
	8450 2900 8450 2750
Wire Wire Line
	8100 2900 8450 2900
Wire Wire Line
	8100 3000 8700 3000
Wire Wire Line
	8700 3000 8700 2750
Wire Wire Line
	8850 4800 8100 4800
Wire Wire Line
	2600 3650 2650 3650
Text Label 2650 3650 0    50   ~ 0
VBATT+
Text Label 2650 3750 0    50   ~ 0
VBATT-
Text Label 2650 3850 0    50   ~ 0
VMOT+
Text Label 2650 3950 0    50   ~ 0
VMOT-
Text Label 2650 4050 0    50   ~ 0
SOL+
Text Label 2650 4150 0    50   ~ 0
SOL-
Text Label 2650 4250 0    50   ~ 0
LED+
Text Label 2650 4350 0    50   ~ 0
LED-
Text Label 2650 4450 0    50   ~ 0
SPKR+
Text Label 2650 4550 0    50   ~ 0
SPKR-
Text Label 2650 4650 0    50   ~ 0
ENCA
Text Label 2650 4750 0    50   ~ 0
ENCB
Wire Wire Line
	2600 3750 2650 3750
Wire Wire Line
	2600 3850 2650 3850
Wire Wire Line
	2600 3950 2650 3950
Wire Wire Line
	2600 4050 2650 4050
Wire Wire Line
	2600 4150 2650 4150
Wire Wire Line
	2600 4250 2650 4250
Wire Wire Line
	2600 4350 2650 4350
Wire Wire Line
	2600 4450 2650 4450
Wire Wire Line
	2600 4550 2650 4550
Wire Wire Line
	2600 4650 2650 4650
Wire Wire Line
	2600 4750 2650 4750
Text Label 6650 3000 2    50   ~ 0
VBATT-
Text Label 6650 2850 2    50   ~ 0
VBATT+
Wire Wire Line
	7000 2850 6650 2850
Text Label 6600 5200 2    50   ~ 0
LED+
Text Label 6600 5300 2    50   ~ 0
LED-
Text Label 6600 5500 2    50   ~ 0
SPKR+
Text Label 6600 5600 2    50   ~ 0
SPKR-
Text Label 6600 4700 2    50   ~ 0
VMOT-
Text Label 6600 3700 2    50   ~ 0
VMOT+
Wire Wire Line
	6600 3700 7000 3700
Wire Wire Line
	6600 4700 7000 4700
Wire Wire Line
	6600 5200 7000 5200
Wire Wire Line
	6600 5300 7000 5300
Wire Wire Line
	6600 5500 7000 5500
Wire Wire Line
	6600 5600 7000 5600
Wire Wire Line
	6650 3000 7000 3000
Text Notes 7950 2050 0    50   ~ 0
Schematics
Text Notes 3000 2950 0    50   ~ 0
Connectors & Indicators
$Comp
L Device:D_Schottky D?
U 1 1 6090CB76
P 4550 3550
F 0 "D?" H 4550 3766 50  0000 C CNN
F 1 "D_Schottky" H 4550 3675 50  0000 C CNN
F 2 "" H 4550 3550 50  0001 C CNN
F 3 "~" H 4550 3550 50  0001 C CNN
	1    4550 3550
	1    0    0    -1  
$EndComp
Text Label 4150 3550 2    50   ~ 0
VMOT+
Text Label 4900 3550 0    50   ~ 0
VMOT-
$Comp
L Device:D_Schottky D?
U 1 1 60912988
P 4550 3950
F 0 "D?" H 4550 4166 50  0000 C CNN
F 1 "D_Schottky" H 4550 4075 50  0000 C CNN
F 2 "" H 4550 3950 50  0001 C CNN
F 3 "~" H 4550 3950 50  0001 C CNN
	1    4550 3950
	1    0    0    -1  
$EndComp
Text Label 4150 3950 2    50   ~ 0
SOL+
Text Label 4900 3950 0    50   ~ 0
SOL-
Text Label 6600 4900 2    50   ~ 0
SOL+
Text Label 6600 5000 2    50   ~ 0
SOL-
Wire Wire Line
	6600 4900 7000 4900
Wire Wire Line
	6600 5000 7000 5000
Text Notes 550  2150 0    118  ~ 0
TODOs\n- Return snubbers (mcu outputs that return through gndpwr)\n- Current sense to I2C?\n- Encoders?\n- Size a power NMOS\n- How speaker PWM?\n- Add solenoid pin to MCU\n- Schematic cleanup\n- Re-pick MCU pins for layout
$Comp
L Device:R R?
U 1 1 609225D5
P 4350 4350
F 0 "R?" V 4143 4350 50  0000 C CNN
F 1 "1k" V 4234 4350 50  0000 C CNN
F 2 "" V 4280 4350 50  0001 C CNN
F 3 "~" H 4350 4350 50  0001 C CNN
	1    4350 4350
	0    1    1    0   
$EndComp
Text Label 4150 4350 2    50   ~ 0
VBATT+
$Comp
L Device:LED D?
U 1 1 609234F2
P 4700 4350
F 0 "D?" H 4692 4095 50  0000 C CNN
F 1 "LED" H 4692 4186 50  0000 C CNN
F 2 "" H 4700 4350 50  0001 C CNN
F 3 "~" H 4700 4350 50  0001 C CNN
	1    4700 4350
	-1   0    0    1   
$EndComp
Text Label 4900 4350 0    50   ~ 0
VBATT-
Wire Wire Line
	4150 4350 4200 4350
Wire Wire Line
	4500 4350 4550 4350
Wire Wire Line
	4850 4350 4900 4350
Wire Wire Line
	4150 3550 4400 3550
Wire Wire Line
	4150 3950 4400 3950
Wire Wire Line
	4700 3950 4900 3950
Wire Wire Line
	4700 3550 4900 3550
$Comp
L power:GNDPWR #PWR?
U 1 1 60931C9F
P 4900 4700
F 0 "#PWR?" H 4900 4500 50  0001 C CNN
F 1 "GNDPWR" H 4904 4546 50  0000 C CNN
F 2 "" H 4900 4650 50  0001 C CNN
F 3 "" H 4900 4650 50  0001 C CNN
	1    4900 4700
	1    0    0    -1  
$EndComp
Text Label 4150 4650 2    50   ~ 0
VBATT-
Wire Wire Line
	4900 4650 4900 4700
Wire Wire Line
	4150 4650 4900 4650
$Comp
L Connector:Conn_01x05_Male J?
U 1 1 6093BA80
P 2850 5700
AR Path="/6093BA80" Ref="J?"  Part="1" 
AR Path="/608DACE2/6093BA80" Ref="J?"  Part="1" 
F 0 "J?" H 2956 6078 50  0000 C CNN
F 1 "pin header" H 2950 6000 50  0000 C CNN
F 2 "" H 2850 5700 50  0001 C CNN
F 3 "https://www.st.com/resource/en/user_manual/dm00244518-stm32-nucleo144-boards-mb1137-stmicroelectronics.pdf" H 2850 5700 50  0001 C CNN
	1    2850 5700
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 6093BA87
P 3600 5450
AR Path="/6093BA87" Ref="#PWR?"  Part="1" 
AR Path="/608DACE2/6093BA87" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3600 5300 50  0001 C CNN
F 1 "+3V3" H 3615 5623 50  0000 C CNN
F 2 "" H 3600 5450 50  0001 C CNN
F 3 "" H 3600 5450 50  0001 C CNN
	1    3600 5450
	1    0    0    -1  
$EndComp
Text Label 3200 5600 0    50   ~ 0
SWCLK
Text Label 3200 5800 0    50   ~ 0
SWDIO
Wire Wire Line
	3200 5600 3050 5600
Wire Wire Line
	3200 5800 3050 5800
Text Label 3200 5900 0    50   ~ 0
NRST
Wire Wire Line
	3200 5900 3050 5900
$Comp
L power:GND #PWR?
U 1 1 6093BA93
P 3600 5750
AR Path="/6093BA93" Ref="#PWR?"  Part="1" 
AR Path="/608DACE2/6093BA93" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3600 5500 50  0001 C CNN
F 1 "GND" H 3605 5577 50  0000 C CNN
F 2 "" H 3600 5750 50  0001 C CNN
F 3 "" H 3600 5750 50  0001 C CNN
	1    3600 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 5700 3600 5700
Wire Wire Line
	3600 5700 3600 5750
Wire Wire Line
	3050 5500 3600 5500
Wire Wire Line
	3600 5500 3600 5450
Text Notes 2550 6350 0    50   ~ 0
pinout for 144pin nucleo user manual, p19\nsymbol docs link to said user manual
Text Label 10050 4000 0    50   ~ 0
NRST
Text Label 10050 4150 0    50   ~ 0
SWDIO
Text Label 10050 4300 0    50   ~ 0
SWCLK
Wire Wire Line
	10000 4300 10050 4300
Wire Wire Line
	10000 4150 10050 4150
Wire Wire Line
	10000 4000 10050 4000
$EndSCHEMATC
