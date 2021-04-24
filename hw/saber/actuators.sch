EESchema Schematic File Version 4
LIBS:saber-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
Title ""
Date ""
Rev "1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Marion Anderson"
$EndDescr
Text HLabel 3100 6000 2    50   Input ~ 0
VMOT+
Text HLabel 3950 6000 0    50   Input ~ 0
VMOT-
Text HLabel 1650 5750 0    50   Input ~ 0
PWM_MTR
Text HLabel 1650 5850 0    50   Input ~ 0
INA
Text HLabel 1650 5950 0    50   Input ~ 0
INB
$Comp
L saber:VNHD7008AY U?
U 1 1 6087B73B
P 1300 5400
F 0 "U?" H 4350 5350 50  0000 C CNN
F 1 "VNHD7008AY" H 4550 5250 50  0000 C CNN
F 2 "" H 1300 5400 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/vnhd7008ay.pdf" H 1300 5400 50  0001 C CNN
	1    1300 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_DGS Q?
U 1 1 6087B894
P 2950 6250
F 0 "Q?" H 3150 6150 50  0000 L CNN
F 1 "Q_NMOS_DGS" H 3150 6050 50  0000 L CNN
F 2 "" H 3150 6350 50  0001 C CNN
F 3 "~" H 2950 6250 50  0001 C CNN
	1    2950 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 6250 2700 6250
Wire Wire Line
	2700 6000 3050 6000
Wire Wire Line
	3050 6000 3050 6050
Wire Wire Line
	2700 6500 3050 6500
Wire Wire Line
	3050 6500 3050 6450
$Comp
L Device:Q_NMOS_DGS Q?
U 1 1 6087BFAE
P 4100 6250
F 0 "Q?" H 4300 6150 50  0000 L CNN
F 1 "Q_NMOS_DGS" H 4300 6250 50  0000 L CNN
F 2 "" H 4300 6350 50  0001 C CNN
F 3 "~" H 4100 6250 50  0001 C CNN
	1    4100 6250
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NMOS_DGS Q?
U 1 1 6087CBC3
P 3450 5250
F 0 "Q?" V 3793 5250 50  0000 C CNN
F 1 "Q_NMOS_DGS" V 3702 5250 50  0000 C CNN
F 2 "" H 3650 5350 50  0001 C CNN
F 3 "~" H 3450 5250 50  0001 C CNN
	1    3450 5250
	0    1    -1   0   
$EndComp
Wire Wire Line
	3250 5150 3150 5150
Wire Wire Line
	3150 5150 3150 5500
Wire Wire Line
	3650 5150 3750 5150
Wire Wire Line
	3750 5150 3750 5500
Wire Wire Line
	3450 5450 3450 5500
Wire Wire Line
	1650 5750 1700 5750
Wire Wire Line
	1650 5850 1700 5850
Wire Wire Line
	1650 5950 1700 5950
Wire Wire Line
	3100 6000 3050 6000
Connection ~ 3050 6000
Wire Wire Line
	3950 6000 4000 6000
Wire Wire Line
	4000 6000 4000 6050
Connection ~ 4000 6000
Wire Wire Line
	4000 6450 4000 6500
Wire Wire Line
	4000 6500 4350 6500
Text HLabel 8250 5300 0    50   Input ~ 0
SIG_SOL
$Comp
L power:+12V #PWR?
U 1 1 60880F09
P 3150 4900
F 0 "#PWR?" H 3150 4750 50  0001 C CNN
F 1 "+12V" H 3165 5073 50  0000 C CNN
F 2 "" H 3150 4900 50  0001 C CNN
F 3 "" H 3150 4900 50  0001 C CNN
	1    3150 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 4900 3150 5150
Connection ~ 3150 5150
$Comp
L Device:Q_PMOS_GDS Q?
U 1 1 608814E1
P 9150 5000
F 0 "Q?" H 9356 4954 50  0000 L CNN
F 1 "Q_PMOS_GDS" H 9356 5045 50  0000 L CNN
F 2 "" H 9350 5100 50  0001 C CNN
F 3 "~" H 9150 5000 50  0001 C CNN
	1    9150 5000
	1    0    0    1   
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 608818EB
P 9000 4550
F 0 "#PWR?" H 9000 4400 50  0001 C CNN
F 1 "+12V" H 9015 4723 50  0000 C CNN
F 2 "" H 9000 4550 50  0001 C CNN
F 3 "" H 9000 4550 50  0001 C CNN
	1    9000 4550
	1    0    0    -1  
$EndComp
Text HLabel 9350 5450 2    50   Input ~ 0
SOL+
$Comp
L Device:Q_NMOS_GDS Q?
U 1 1 6088A682
P 8650 5300
AR Path="/60835C0E/6088A682" Ref="Q?"  Part="1" 
AR Path="/60835C30/6088A682" Ref="Q?"  Part="1" 
F 0 "Q?" H 8856 5346 50  0000 L CNN
F 1 "2N7002" H 8856 5255 50  0000 L CNN
F 2 "" H 8850 5400 50  0001 C CNN
F 3 "https://rocelec.widen.net/view/pdf/orqxwkxkq1/ONSM-S-A0003544006-1.pdf" H 8650 5300 50  0001 C CNN
	1    8650 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 5100 8750 5000
Wire Wire Line
	8750 5000 8950 5000
$Comp
L Device:R R?
U 1 1 6088B1ED
P 8750 4800
F 0 "R?" H 8820 4846 50  0000 L CNN
F 1 "1k" H 8820 4755 50  0000 L CNN
F 2 "" V 8680 4800 50  0001 C CNN
F 3 "~" H 8750 4800 50  0001 C CNN
	1    8750 4800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8750 4950 8750 5000
Connection ~ 8750 5000
Wire Wire Line
	8750 4650 8750 4600
Wire Wire Line
	9250 4600 9000 4600
Wire Wire Line
	9250 4600 9250 4800
Wire Wire Line
	9000 4600 9000 4550
Connection ~ 9000 4600
Wire Wire Line
	9000 4600 8750 4600
$Comp
L Device:R R?
U 1 1 6088CF37
P 8350 5550
F 0 "R?" H 8420 5596 50  0000 L CNN
F 1 "1k" H 8420 5505 50  0000 L CNN
F 2 "" V 8280 5550 50  0001 C CNN
F 3 "~" H 8350 5550 50  0001 C CNN
	1    8350 5550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8250 5300 8350 5300
Wire Wire Line
	8350 5300 8350 5400
Connection ~ 8350 5300
Wire Wire Line
	8350 5300 8450 5300
Wire Wire Line
	8350 5700 8350 5750
Wire Wire Line
	8350 5750 8550 5750
Wire Wire Line
	8750 5500 8750 5750
Wire Wire Line
	8550 5750 8550 5800
Connection ~ 8550 5750
Wire Wire Line
	8550 5750 8750 5750
Text HLabel 9350 5550 2    50   Input ~ 0
SOL-
Wire Wire Line
	9350 5550 9250 5550
$Comp
L power:GNDPWR #PWR?
U 1 1 60891D43
P 9250 5800
F 0 "#PWR?" H 9250 5600 50  0001 C CNN
F 1 "GNDPWR" H 9254 5646 50  0000 C CNN
F 2 "" H 9250 5750 50  0001 C CNN
F 3 "" H 9250 5750 50  0001 C CNN
	1    9250 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 5450 9350 5450
$Comp
L power:GNDPWR #PWR?
U 1 1 6089670F
P 8550 5800
F 0 "#PWR?" H 8550 5600 50  0001 C CNN
F 1 "GNDPWR" H 8554 5646 50  0000 C CNN
F 2 "" H 8550 5750 50  0001 C CNN
F 3 "" H 8550 5750 50  0001 C CNN
	1    8550 5800
	1    0    0    -1  
$EndComp
Text Notes 1850 4350 0    50   ~ 0
HBridge\nTODO: size power nmos
Text Notes 7700 4250 0    50   ~ 0
Solenoid Driver\nTODO:low side switching (for density) instead?
Wire Wire Line
	4000 6000 4350 6000
Wire Wire Line
	4300 6250 4350 6250
Text HLabel 9950 1850 2    50   Input ~ 0
LED+
Text HLabel 9950 1950 2    50   Input ~ 0
LED-
$Comp
L power:+12V #PWR?
U 1 1 608A1AB3
P 9850 1750
F 0 "#PWR?" H 9850 1600 50  0001 C CNN
F 1 "+12V" H 9865 1923 50  0000 C CNN
F 2 "" H 9850 1750 50  0001 C CNN
F 3 "" H 9850 1750 50  0001 C CNN
	1    9850 1750
	1    0    0    -1  
$EndComp
Text HLabel 9350 2250 0    50   Input ~ 0
SIG_LED
$Comp
L Device:Q_NMOS_GDS Q?
U 1 1 608A1E43
P 9750 2250
AR Path="/60835C0E/608A1E43" Ref="Q?"  Part="1" 
AR Path="/60835C30/608A1E43" Ref="Q?"  Part="1" 
F 0 "Q?" H 9956 2296 50  0000 L CNN
F 1 "2N7002" H 9956 2205 50  0000 L CNN
F 2 "" H 9950 2350 50  0001 C CNN
F 3 "https://rocelec.widen.net/view/pdf/orqxwkxkq1/ONSM-S-A0003544006-1.pdf" H 9750 2250 50  0001 C CNN
	1    9750 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 608A1E4B
P 9450 2500
F 0 "R?" H 9520 2546 50  0000 L CNN
F 1 "1k" H 9520 2455 50  0000 L CNN
F 2 "" V 9380 2500 50  0001 C CNN
F 3 "~" H 9450 2500 50  0001 C CNN
	1    9450 2500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9350 2250 9450 2250
Wire Wire Line
	9450 2250 9450 2350
Connection ~ 9450 2250
Wire Wire Line
	9450 2250 9550 2250
Wire Wire Line
	9850 1850 9950 1850
Text Notes 8150 1450 0    50   ~ 0
LED Driver\nTODO: determine LED current & size NMOS
Wire Wire Line
	9450 2650 9450 2750
Wire Wire Line
	9450 2750 9650 2750
Wire Wire Line
	9850 2750 9850 2450
Wire Wire Line
	9650 2750 9650 2800
Connection ~ 9650 2750
Wire Wire Line
	9650 2750 9850 2750
$Comp
L power:GNDPWR #PWR?
U 1 1 608AF92F
P 9650 2800
F 0 "#PWR?" H 9650 2600 50  0001 C CNN
F 1 "GNDPWR" H 9654 2646 50  0000 C CNN
F 2 "" H 9650 2750 50  0001 C CNN
F 3 "" H 9650 2750 50  0001 C CNN
	1    9650 2800
	1    0    0    -1  
$EndComp
Text Notes 8450 2850 0    50   ~ 0
return sig to gndpwr\nbecause it is closer to batt-
Wire Wire Line
	9850 2050 9850 1950
Wire Wire Line
	9850 1950 9950 1950
Wire Wire Line
	9850 1750 9850 1850
Text Notes 2500 1350 0    50   ~ 0
Speaker Amp TODO
Text HLabel 2750 2100 0    50   Input ~ 0
PWM_SPKR
Text HLabel 3250 1750 2    50   Input ~ 0
SPKR+
Text HLabel 3250 2350 2    50   Input ~ 0
SPKR-
Wire Wire Line
	9250 5550 9250 5800
Wire Wire Line
	9250 5200 9250 5450
$EndSCHEMATC
