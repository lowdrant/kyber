EESchema Schematic File Version 4
LIBS:saber-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title ""
Date ""
Rev "1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Marion Anderson"
$EndDescr
Text HLabel 8250 5300 0    50   Input ~ 0
SIG_SOL
$Comp
L Device:Q_PMOS_GDS Q?
U 1 1 608814E1
P 9150 5050
F 0 "Q?" H 9356 5004 50  0000 L CNN
F 1 "Q_PMOS_GDS" H 9356 5095 50  0000 L CNN
F 2 "" H 9350 5150 50  0001 C CNN
F 3 "~" H 9150 5050 50  0001 C CNN
	1    9150 5050
	1    0    0    1   
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 608818EB
P 9000 4600
F 0 "#PWR?" H 9000 4450 50  0001 C CNN
F 1 "+12V" H 9015 4773 50  0000 C CNN
F 2 "" H 9000 4600 50  0001 C CNN
F 3 "" H 9000 4600 50  0001 C CNN
	1    9000 4600
	1    0    0    -1  
$EndComp
Text HLabel 9550 5300 2    50   Output ~ 0
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
$Comp
L Device:R R?
U 1 1 6088B1ED
P 8750 4850
F 0 "R?" H 8820 4896 50  0000 L CNN
F 1 "1k" H 8820 4805 50  0000 L CNN
F 2 "" V 8680 4850 50  0001 C CNN
F 3 "~" H 8750 4850 50  0001 C CNN
	1    8750 4850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8750 4700 8750 4650
Wire Wire Line
	9250 4650 9000 4650
Wire Wire Line
	9250 4650 9250 4850
Wire Wire Line
	9000 4650 9000 4600
Connection ~ 9000 4650
Wire Wire Line
	9000 4650 8750 4650
$Comp
L Device:R R?
U 1 1 6088CF37
P 8350 5500
F 0 "R?" H 8420 5546 50  0000 L CNN
F 1 "1k" H 8420 5455 50  0000 L CNN
F 2 "" V 8280 5500 50  0001 C CNN
F 3 "~" H 8350 5500 50  0001 C CNN
	1    8350 5500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8350 5700 8550 5700
Wire Wire Line
	8550 5700 8550 5750
Connection ~ 8550 5700
Wire Wire Line
	8550 5700 8750 5700
Text HLabel 9550 5700 2    50   Output ~ 0
SOL-
$Comp
L power:GNDPWR #PWR?
U 1 1 60891D43
P 9250 5750
F 0 "#PWR?" H 9250 5550 50  0001 C CNN
F 1 "GNDPWR" H 9254 5596 50  0000 C CNN
F 2 "" H 9250 5700 50  0001 C CNN
F 3 "" H 9250 5700 50  0001 C CNN
	1    9250 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR?
U 1 1 6089670F
P 8550 5750
F 0 "#PWR?" H 8550 5550 50  0001 C CNN
F 1 "GNDPWR" H 8554 5596 50  0000 C CNN
F 2 "" H 8550 5700 50  0001 C CNN
F 3 "" H 8550 5700 50  0001 C CNN
	1    8550 5750
	1    0    0    -1  
$EndComp
Text Notes 7700 4250 0    50   ~ 0
Solenoid Driver\nTODO:low side switching (for density) instead?
Text HLabel 9950 1850 2    50   Output ~ 0
LED+
Text HLabel 9950 1950 2    50   Output ~ 0
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
Text HLabel 3250 1750 2    50   Output ~ 0
SPKR+
Text HLabel 3250 2350 2    50   Output ~ 0
SPKR-
$Comp
L Device:D_Schottky D?
U 1 1 60B3543F
P 9250 5500
F 0 "D?" V 9204 5579 50  0000 L CNN
F 1 "D_Schottky" V 9295 5579 50  0000 L CNN
F 2 "" H 9250 5500 50  0001 C CNN
F 3 "~" H 9250 5500 50  0001 C CNN
	1    9250 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	8250 5300 8350 5300
Wire Wire Line
	8350 5700 8350 5650
Wire Wire Line
	8750 5700 8750 5500
Wire Wire Line
	8350 5350 8350 5300
Connection ~ 8350 5300
Wire Wire Line
	8350 5300 8450 5300
Wire Wire Line
	8750 5000 8750 5050
Wire Wire Line
	8750 5050 8950 5050
Connection ~ 8750 5050
Wire Wire Line
	8750 5050 8750 5100
Wire Wire Line
	9250 5250 9250 5300
Wire Wire Line
	9250 5650 9250 5700
Wire Wire Line
	9550 5300 9250 5300
Connection ~ 9250 5300
Wire Wire Line
	9250 5300 9250 5350
Wire Wire Line
	9550 5700 9250 5700
Connection ~ 9250 5700
Wire Wire Line
	9250 5700 9250 5750
$EndSCHEMATC
