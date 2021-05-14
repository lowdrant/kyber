EESchema Schematic File Version 4
LIBS:saber-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 6
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
S 6950 2400 1200 3050
U 608DACE2
F0 "micro" 50
F1 "micro.sch" 50
F2 "SDA" B R 8150 2650 50 
F3 "SCL" O R 8150 2900 50 
F4 "ADC_imtr" I L 6950 3100 50 
F5 "SIG_LED_MCU" O L 6950 5150 50 
F6 "INA_MCU" O L 6950 2700 50 
F7 "INB_MCU" O L 6950 2900 50 
F8 "PWM_MTR_MCU" B L 6950 2500 50 
F9 "PWM_SPKR_MCU" O L 6950 4950 50 
F10 "SIG_SOL_MCU" O L 6950 5050 50 
F11 "BTN" I L 6950 4100 50 
F12 "ENC_A" I L 6950 4300 50 
F13 "ENC_B" I L 6950 4400 50 
$EndSheet
Text Label 2400 2950 0    50   ~ 0
MOT+
Text Label 2400 3050 0    50   ~ 0
MOT-
Text Label 2400 3400 0    50   ~ 0
SOL+
Text Label 2400 3500 0    50   ~ 0
SOL-
Text Label 2400 3600 0    50   ~ 0
LED+
Text Label 2400 3700 0    50   ~ 0
LED-
Text Label 2400 3800 0    50   ~ 0
SPKR+
Text Label 2400 3900 0    50   ~ 0
SPKR-
Wire Wire Line
	2350 2950 2400 2950
Wire Wire Line
	2350 3050 2400 3050
Wire Wire Line
	2350 3400 2400 3400
Wire Wire Line
	2350 3500 2400 3500
Wire Wire Line
	2350 3600 2400 3600
Wire Wire Line
	2350 3700 2400 3700
Wire Wire Line
	2350 3800 2400 3800
Wire Wire Line
	2350 3900 2400 3900
Text Label 4050 4950 2    50   ~ 0
LED+
Text Label 4050 5050 2    50   ~ 0
LED-
Text Label 4050 5250 2    50   ~ 0
SPKR+
Text Label 4050 5350 2    50   ~ 0
SPKR-
Text Label 4050 4650 2    50   ~ 0
SOL+
Text Label 4050 4750 2    50   ~ 0
SOL-
$Comp
L Device:R R1
U 1 1 6084D9B8
P 5700 2500
F 0 "R1" V 5650 2650 50  0000 C CNN
F 1 "1k" V 5650 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5630 2500 50  0001 C CNN
F 3 "~" H 5700 2500 50  0001 C CNN
	1    5700 2500
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 6084F18C
P 5700 2700
F 0 "R2" V 5650 2850 50  0000 C CNN
F 1 "1k" V 5650 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5630 2700 50  0001 C CNN
F 3 "~" H 5700 2700 50  0001 C CNN
	1    5700 2700
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 60850B81
P 5700 2900
F 0 "R3" V 5650 3050 50  0000 C CNN
F 1 "1k" V 5650 2750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5630 2900 50  0001 C CNN
F 3 "~" H 5700 2900 50  0001 C CNN
	1    5700 2900
	0    1    1    0   
$EndComp
$Sheet
S 4200 2400 1250 800 
U 609455AB
F0 "hbridge" 50
F1 "hbridge.sch" 50
F2 "MOT+" O L 4200 3000 50 
F3 "MOT-" O L 4200 3100 50 
F4 "PWM_MTR" I R 5450 2500 50 
F5 "INA" I R 5450 2700 50 
F6 "INB" I R 5450 2900 50 
F7 "imtr" O R 5450 3100 50 
F8 "BATT-" I L 4200 2800 50 
F9 "BATT+" I L 4200 2700 50 
F10 "Vs" O L 4200 2500 50 
$EndSheet
Text Label 3000 2600 0    50   ~ 0
BATT-
Text Label 3000 2500 0    50   ~ 0
BATT+
Text Label 4050 2700 2    50   ~ 0
BATT+
Text Label 4050 2800 2    50   ~ 0
BATT-
Text Label 4050 3000 2    50   ~ 0
MOT+
Text Label 4050 3100 2    50   ~ 0
MOT-
$Sheet
S 4200 4550 1250 900 
U 60835C30
F0 "actuators" 50
F1 "actuators.sch" 50
F2 "LED+" O L 4200 4950 50 
F3 "SPKR+" O L 4200 5250 50 
F4 "SIG_LED" I R 5450 5150 50 
F5 "PWM_SPKR" I R 5450 4950 50 
F6 "SIG_SOL" I R 5450 5050 50 
F7 "SOL+" O L 4200 4650 50 
F8 "SOL-" O L 4200 4750 50 
F9 "LED-" O L 4200 5050 50 
F10 "SPKR-" O L 4200 5350 50 
$EndSheet
Wire Wire Line
	4050 2700 4200 2700
Wire Wire Line
	4050 2800 4200 2800
Wire Wire Line
	4050 3000 4200 3000
Wire Wire Line
	4050 3100 4200 3100
Wire Wire Line
	4050 4650 4200 4650
Wire Wire Line
	4050 4750 4200 4750
Wire Wire Line
	4050 4950 4200 4950
Wire Wire Line
	4050 5050 4200 5050
Wire Wire Line
	4050 5250 4200 5250
Wire Wire Line
	4050 5350 4200 5350
$Comp
L power:GNDPWR #PWR03
U 1 1 60D1A29D
P 2850 2650
F 0 "#PWR03" H 2850 2450 50  0001 C CNN
F 1 "GNDPWR" H 2854 2496 50  0000 C CNN
F 2 "" H 2850 2600 50  0001 C CNN
F 3 "" H 2850 2600 50  0001 C CNN
	1    2850 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 2650 2850 2600
Connection ~ 2850 2600
Wire Wire Line
	2850 2600 3000 2600
Wire Notes Line width 20
	4850 500  4850 7800
Text Notes 4000 750  0    118  ~ 0
GNDPWR
Text Notes 4950 750  0    118  ~ 0
GND
$Comp
L power:+12V #PWR02
U 1 1 60974615
P 4100 2450
F 0 "#PWR02" H 4100 2300 50  0001 C CNN
F 1 "+12V" H 4115 2623 50  0000 C CNN
F 2 "" H 4100 2450 50  0001 C CNN
F 3 "" H 4100 2450 50  0001 C CNN
	1    4100 2450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2350 2600 2650 2600
Wire Wire Line
	2350 2500 2850 2500
$Comp
L power:PWR_FLAG #FLG01
U 1 1 60930D00
P 2850 2500
F 0 "#FLG01" H 2850 2575 50  0001 C CNN
F 1 "PWR_FLAG" H 2850 2674 50  0000 C CNN
F 2 "" H 2850 2500 50  0001 C CNN
F 3 "~" H 2850 2500 50  0001 C CNN
	1    2850 2500
	1    0    0    -1  
$EndComp
Connection ~ 2850 2500
Wire Wire Line
	2850 2500 3000 2500
$Comp
L power:PWR_FLAG #FLG02
U 1 1 60932971
P 2650 2600
F 0 "#FLG02" H 2650 2675 50  0001 C CNN
F 1 "PWR_FLAG" H 2650 2774 50  0000 C CNN
F 2 "" H 2650 2600 50  0001 C CNN
F 3 "~" H 2650 2600 50  0001 C CNN
	1    2650 2600
	1    0    0    -1  
$EndComp
Connection ~ 2650 2600
Wire Wire Line
	2650 2600 2850 2600
Text Notes 8300 2300 0    50   ~ 0
mcu uses internal\npull-ups for i2c
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 60B333C6
P 850 650
F 0 "H1" V 804 800 50  0000 L CNN
F 1 "MountingHole_Pad" V 895 800 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 850 650 50  0001 C CNN
F 3 "~" H 850 650 50  0001 C CNN
	1    850  650 
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 60B5998E
P 850 850
F 0 "H2" V 804 1000 50  0000 L CNN
F 1 "MountingHole_Pad" V 895 1000 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 850 850 50  0001 C CNN
F 3 "~" H 850 850 50  0001 C CNN
	1    850  850 
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 60B5D6C8
P 850 1050
F 0 "H3" V 804 1200 50  0000 L CNN
F 1 "MountingHole_Pad" V 895 1200 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 850 1050 50  0001 C CNN
F 3 "~" H 850 1050 50  0001 C CNN
	1    850  1050
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 60B6140A
P 850 1250
F 0 "H4" V 804 1400 50  0000 L CNN
F 1 "MountingHole_Pad" V 895 1400 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 850 1250 50  0001 C CNN
F 3 "~" H 850 1250 50  0001 C CNN
	1    850  1250
	0    1    1    0   
$EndComp
Wire Wire Line
	750  1250 700  1250
Wire Wire Line
	700  1250 700  1050
Wire Wire Line
	700  650  750  650 
Wire Wire Line
	750  850  700  850 
Connection ~ 700  850 
Wire Wire Line
	700  850  700  650 
Wire Wire Line
	750  1050 700  1050
Connection ~ 700  1050
Wire Wire Line
	700  1050 700  850 
Wire Wire Line
	700  1250 700  1300
Connection ~ 700  1250
$Comp
L power:GNDPWR #PWR01
U 1 1 60B76384
P 700 1300
F 0 "#PWR01" H 700 1100 50  0001 C CNN
F 1 "GNDPWR" H 704 1146 50  0000 C CNN
F 2 "" H 700 1250 50  0001 C CNN
F 3 "" H 700 1250 50  0001 C CNN
	1    700  1300
	1    0    0    -1  
$EndComp
Text Label 2400 4000 0    50   ~ 0
BTN+
Text Label 2400 4100 0    50   ~ 0
BTN
Wire Wire Line
	2400 4000 2350 4000
Text Label 2400 4200 0    50   ~ 0
ENC+
Text Label 2400 4300 0    50   ~ 0
ENC_A
Text Label 2400 4400 0    50   ~ 0
ENC_B
Text Label 2400 4500 0    50   ~ 0
ENC-
Wire Wire Line
	2350 4200 2400 4200
Wire Wire Line
	2350 4500 2400 4500
$Sheet
S 4200 6850 1250 800 
U 60A0541C
F0 "power" 50
F1 "power.sch" 50
F2 "Vs" I L 4200 7050 50 
F3 "GNDPWR" I L 4200 7450 50 
F4 "12C" O R 5450 7050 50 
F5 "3V3" O R 5450 7300 50 
F6 "GND" O R 5450 7500 50 
$EndSheet
$Sheet
S 9050 2400 1250 800 
U 60AC9516
F0 "acc" 50
F1 "acc.sch" 50
F2 "SDA" B L 9050 2650 50 
F3 "SCL" I L 9050 2900 50 
$EndSheet
$Comp
L power:GND #PWR04
U 1 1 6098722C
P 6050 3550
F 0 "#PWR04" H 6050 3300 50  0001 C CNN
F 1 "GND" H 6055 3377 50  0000 C CNN
F 2 "" H 6050 3550 50  0001 C CNN
F 3 "" H 6050 3550 50  0001 C CNN
	1    6050 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 609666E4
P 6350 3300
AR Path="/60835C30/609666E4" Ref="C?"  Part="1" 
AR Path="/609455AB/609666E4" Ref="C?"  Part="1" 
AR Path="/609666E4" Ref="C1"  Part="1" 
F 0 "C1" H 6465 3346 50  0000 L CNN
F 1 "33n" H 6465 3255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6388 3150 50  0001 C CNN
F 3 "~" H 6350 3300 50  0001 C CNN
	1    6350 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 609666DD
P 6050 3100
AR Path="/60835C30/609666DD" Ref="R?"  Part="1" 
AR Path="/609455AB/609666DD" Ref="R?"  Part="1" 
AR Path="/609666DD" Ref="R4"  Part="1" 
F 0 "R4" V 6000 3250 50  0000 C CNN
F 1 "10k" V 6000 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5980 3100 50  0001 C CNN
F 3 "~" H 6050 3100 50  0001 C CNN
	1    6050 3100
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 60ADCB43
P 5750 3300
AR Path="/60835C30/60ADCB43" Ref="R?"  Part="1" 
AR Path="/609455AB/60ADCB43" Ref="R?"  Part="1" 
AR Path="/60ADCB43" Ref="R5"  Part="1" 
F 0 "R5" H 5820 3346 50  0000 L CNN
F 1 "1k5" H 5820 3255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5680 3300 50  0001 C CNN
F 3 "~" H 5750 3300 50  0001 C CNN
	1    5750 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3100 5750 3100
Wire Wire Line
	5750 3150 5750 3100
Connection ~ 5750 3100
Wire Wire Line
	5750 3100 5900 3100
Wire Wire Line
	6200 3100 6350 3100
Wire Wire Line
	6350 3150 6350 3100
Connection ~ 6350 3100
Wire Wire Line
	5750 3450 5750 3500
Wire Wire Line
	5750 3500 6050 3500
Wire Wire Line
	6350 3500 6350 3450
Wire Wire Line
	6050 3500 6050 3550
Connection ~ 6050 3500
Wire Wire Line
	6050 3500 6350 3500
Text Notes 5500 2300 0    50   ~ 0
terminations from VNHD7008AY\ndatasheet p28
$Comp
L Connector:TestPoint TP2
U 1 1 60B15E77
P 8350 2550
F 0 "TP2" V 8304 2738 50  0000 L CNN
F 1 "TestPoint" V 8395 2738 50  0000 L CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x01_P1.00mm_Vertical" H 8550 2550 50  0001 C CNN
F 3 "~" H 8550 2550 50  0001 C CNN
	1    8350 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 2650 8300 2550
$Comp
L Connector:TestPoint TP4
U 1 1 60B1B777
P 6100 2800
F 0 "TP4" V 6054 2988 50  0000 L CNN
F 1 "TestPoint" V 6145 2988 50  0000 L CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x01_P1.00mm_Vertical" H 6300 2800 50  0001 C CNN
F 3 "~" H 6300 2800 50  0001 C CNN
	1    6100 2800
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 60B1EB2F
P 6100 2600
F 0 "TP3" V 6054 2788 50  0000 L CNN
F 1 "TestPoint" V 6145 2788 50  0000 L CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x01_P1.00mm_Vertical" H 6300 2600 50  0001 C CNN
F 3 "~" H 6300 2600 50  0001 C CNN
	1    6100 2600
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP1
U 1 1 60B20388
P 6100 2400
F 0 "TP1" V 6054 2588 50  0000 L CNN
F 1 "TestPoint" V 6145 2588 50  0000 L CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x01_P1.00mm_Vertical" H 6300 2400 50  0001 C CNN
F 3 "~" H 6300 2400 50  0001 C CNN
	1    6100 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	6100 2800 6050 2800
Wire Wire Line
	6050 2800 6050 2900
Connection ~ 6050 2900
Wire Wire Line
	6100 2600 6050 2600
Wire Wire Line
	6050 2600 6050 2700
Connection ~ 6050 2700
Wire Wire Line
	6100 2400 6050 2400
Wire Wire Line
	6050 2400 6050 2500
Connection ~ 6050 2500
Wire Wire Line
	5550 2500 5450 2500
Wire Wire Line
	5450 2700 5550 2700
Wire Wire Line
	5450 2900 5550 2900
Wire Wire Line
	5850 2900 6050 2900
Wire Wire Line
	5850 2700 6050 2700
Wire Wire Line
	5850 2500 6050 2500
Wire Wire Line
	8150 2900 8300 2900
Wire Wire Line
	8150 2650 8300 2650
Wire Wire Line
	8350 2550 8300 2550
$Comp
L Connector:TestPoint TP5
U 1 1 60B480A1
P 8350 2800
F 0 "TP5" V 8304 2988 50  0000 L CNN
F 1 "TestPoint" V 8395 2988 50  0000 L CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x01_P1.00mm_Vertical" H 8550 2800 50  0001 C CNN
F 3 "~" H 8550 2800 50  0001 C CNN
	1    8350 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	8350 2800 8300 2800
Wire Wire Line
	8300 2800 8300 2900
$Comp
L power:+12C #PWR08
U 1 1 60B8A739
P 5600 7000
F 0 "#PWR08" H 5600 6850 50  0001 C CNN
F 1 "+12C" H 5615 7173 50  0000 C CNN
F 2 "" H 5600 7000 50  0001 C CNN
F 3 "" H 5600 7000 50  0001 C CNN
	1    5600 7000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR09
U 1 1 60B8A7AC
P 5900 7000
F 0 "#PWR09" H 5900 6850 50  0001 C CNN
F 1 "+3.3V" H 5915 7173 50  0000 C CNN
F 2 "" H 5900 7000 50  0001 C CNN
F 3 "" H 5900 7000 50  0001 C CNN
	1    5900 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2450 4100 2500
Wire Wire Line
	4100 2500 4200 2500
$Comp
L power:+12V #PWR07
U 1 1 60B90F0E
P 4050 7000
F 0 "#PWR07" H 4050 6850 50  0001 C CNN
F 1 "+12V" H 4065 7173 50  0000 C CNN
F 2 "" H 4050 7000 50  0001 C CNN
F 3 "" H 4050 7000 50  0001 C CNN
	1    4050 7000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4050 7000 4050 7050
Text Label 4050 7450 2    50   ~ 0
BATT-
Wire Wire Line
	4050 7450 4200 7450
Wire Wire Line
	5600 7000 5600 7050
Wire Wire Line
	5900 7000 5900 7300
$Comp
L power:GND #PWR010
U 1 1 60B9E612
P 5600 7550
F 0 "#PWR010" H 5600 7300 50  0001 C CNN
F 1 "GND" H 5605 7377 50  0000 C CNN
F 2 "" H 5600 7550 50  0001 C CNN
F 3 "" H 5600 7550 50  0001 C CNN
	1    5600 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 7500 5600 7550
Text Label 2300 5000 2    50   ~ 0
BTN+
Text Label 2300 5100 2    50   ~ 0
ENC+
Text Label 2300 5200 2    50   ~ 0
ENC-
Wire Wire Line
	2300 5000 2400 5000
Wire Wire Line
	2400 5000 2400 5100
Wire Wire Line
	2400 5100 2300 5100
Wire Wire Line
	2400 5000 2400 4950
Connection ~ 2400 5000
$Comp
L power:+3V3 #PWR05
U 1 1 60BBEEDD
P 2400 4950
F 0 "#PWR05" H 2400 4800 50  0001 C CNN
F 1 "+3V3" H 2415 5123 50  0000 C CNN
F 2 "" H 2400 4950 50  0001 C CNN
F 3 "" H 2400 4950 50  0001 C CNN
	1    2400 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 60BBEF7A
P 2400 5250
F 0 "#PWR06" H 2400 5000 50  0001 C CNN
F 1 "GND" H 2405 5077 50  0000 C CNN
F 2 "" H 2400 5250 50  0001 C CNN
F 3 "" H 2400 5250 50  0001 C CNN
	1    2400 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 5200 2400 5200
Wire Wire Line
	2400 5200 2400 5250
Wire Wire Line
	4050 7050 4200 7050
Wire Wire Line
	5450 7500 5600 7500
Wire Wire Line
	5450 7300 5900 7300
Wire Wire Line
	5450 7050 5600 7050
Wire Wire Line
	5450 5150 6950 5150
Wire Wire Line
	6050 2900 6950 2900
Wire Wire Line
	6050 2700 6950 2700
Wire Wire Line
	6050 2500 6950 2500
Wire Wire Line
	6350 3100 6950 3100
Wire Wire Line
	8300 2650 9050 2650
Connection ~ 8300 2650
Wire Wire Line
	8300 2900 9050 2900
Connection ~ 8300 2900
Wire Wire Line
	2350 4400 6950 4400
Text Notes 5050 4050 0    50   ~ 0
don't need testpoints on physical connectors
Wire Wire Line
	2350 4300 6950 4300
Wire Wire Line
	2350 4100 6950 4100
Wire Wire Line
	5450 5050 6950 5050
$Comp
L Connector:TestPoint TP6
U 1 1 60A598DA
P 6100 4850
F 0 "TP6" V 6054 5038 50  0000 L CNN
F 1 "TestPoint" V 6145 5038 50  0000 L CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x01_P1.00mm_Vertical" H 6300 4850 50  0001 C CNN
F 3 "~" H 6300 4850 50  0001 C CNN
	1    6100 4850
	0    1    1    0   
$EndComp
Wire Wire Line
	6100 4850 6050 4850
Wire Wire Line
	6050 4850 6050 4950
Connection ~ 6050 4950
Wire Wire Line
	6050 4950 6950 4950
Wire Wire Line
	5450 4950 6050 4950
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 609B67F0
P 2150 2600
F 0 "J1" H 2250 2500 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 2650 2600 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MPT-0,5-2-2.54_1x02_P2.54mm_Horizontal" H 2150 2600 50  0001 C CNN
F 3 "~" H 2150 2600 50  0001 C CNN
	1    2150 2600
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 609B688A
P 2150 3050
F 0 "J2" H 2250 2950 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 2650 3050 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MPT-0,5-2-2.54_1x02_P2.54mm_Horizontal" H 2150 3050 50  0001 C CNN
F 3 "~" H 2150 3050 50  0001 C CNN
	1    2150 3050
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x12 J3
U 1 1 609C7A7B
P 2150 3900
F 0 "J3" H 2300 4000 50  0000 C CNN
F 1 "Screw_Terminal_01x12" H 2650 3900 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MPT-0,5-12-2.54_1x12_P2.54mm_Horizontal" H 2150 3900 50  0001 C CNN
F 3 "~" H 2150 3900 50  0001 C CNN
	1    2150 3900
	-1   0    0    -1  
$EndComp
Text Notes 6800 1450 0    118  ~ 0
TODO: stm transistor footprints
$EndSCHEMATC
