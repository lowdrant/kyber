EESchema Schematic File Version 4
LIBS:saber-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
Title ""
Date ""
Rev "1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Marion Anderson"
$EndDescr
$Comp
L Regulator_Linear:AZ1117-3.3 U?
U 1 1 6083852D
P 9100 3600
F 0 "U?" H 9100 3842 50  0000 C CNN
F 1 "AZ1117IH-3.3TRG1" H 9100 3751 50  0000 C CNN
F 2 "" H 9100 3850 50  0001 C CIN
F 3 "https://www.diodes.com/assets/Datasheets/AZ1117I.pdf" H 9100 3600 50  0001 C CNN
	1    9100 3600
	1    0    0    -1  
$EndComp
$Comp
L pspice:INDUCTOR L?
U 1 1 608385FE
P 7100 3600
F 0 "L?" H 7100 3815 50  0000 C CNN
F 1 "TODO" H 7100 3724 50  0000 C CNN
F 2 "" H 7100 3600 50  0001 C CNN
F 3 "~" H 7100 3600 50  0001 C CNN
	1    7100 3600
	-1   0    0    -1  
$EndComp
$Comp
L Device:D_Zener D?
U 1 1 608386D4
P 4500 3850
F 0 "D?" V 4454 3929 50  0000 L CNN
F 1 "BZT52C8V2S-7-F" V 4545 3929 50  0000 L CNN
F 2 "" H 4500 3850 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Diodes%20PDFs/BZT52C2V0S-BZT52C39S.pdf" H 4500 3850 50  0001 C CNN
	1    4500 3850
	0    -1   1    0   
$EndComp
$Comp
L Device:Q_NMOS_GDS Q?
U 1 1 60838B8B
P 4900 4400
F 0 "Q?" H 5106 4446 50  0000 L CNN
F 1 "2N7002" H 5106 4355 50  0000 L CNN
F 2 "" H 5100 4500 50  0001 C CNN
F 3 "https://rocelec.widen.net/view/pdf/orqxwkxkq1/ONSM-S-A0003544006-1.pdf" H 4900 4400 50  0001 C CNN
	1    4900 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 608390EC
P 5000 3850
F 0 "R?" H 5070 3896 50  0000 L CNN
F 1 "1k" H 5070 3805 50  0000 L CNN
F 2 "" V 4930 3850 50  0001 C CNN
F 3 "~" H 5000 3850 50  0001 C CNN
	1    5000 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6083B156
P 4500 4200
F 0 "R?" H 4431 4154 50  0000 R CNN
F 1 "FUTURE PROOFING" H 4431 4245 50  0000 R CNN
F 2 "" V 4430 4200 50  0001 C CNN
F 3 "~" H 4500 4200 50  0001 C CNN
	1    4500 4200
	1    0    0    1   
$EndComp
Wire Wire Line
	4500 4350 4500 4400
Wire Wire Line
	4500 4400 4700 4400
$Comp
L Device:R R?
U 1 1 6083B41A
P 4500 4600
F 0 "R?" H 4431 4554 50  0000 R CNN
F 1 "1k" H 4431 4645 50  0000 R CNN
F 2 "" V 4430 4600 50  0001 C CNN
F 3 "~" H 4500 4600 50  0001 C CNN
	1    4500 4600
	1    0    0    1   
$EndComp
Wire Wire Line
	4500 4400 4500 4450
Connection ~ 4500 4400
Wire Wire Line
	4500 4750 4500 4800
Wire Wire Line
	4500 4800 4750 4800
Wire Wire Line
	5000 4600 5000 4800
Wire Wire Line
	4750 4800 4750 4850
Connection ~ 4750 4800
Wire Wire Line
	4750 4800 5000 4800
$Comp
L power:GNDPWR #PWR?
U 1 1 6083B694
P 4750 4850
F 0 "#PWR?" H 4750 4650 50  0001 C CNN
F 1 "GNDPWR" H 4754 4696 50  0000 C CNN
F 2 "" H 4750 4800 50  0001 C CNN
F 3 "" H 4750 4800 50  0001 C CNN
	1    4750 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 4000 4500 4050
$Comp
L Device:R R?
U 1 1 6083C402
P 5400 3850
F 0 "R?" H 5470 3896 50  0000 L CNN
F 1 "1k" H 5470 3805 50  0000 L CNN
F 2 "" V 5330 3850 50  0001 C CNN
F 3 "~" H 5400 3850 50  0001 C CNN
	1    5400 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4000 5000 4100
Connection ~ 5000 4100
Wire Wire Line
	5000 4100 5000 4200
Wire Wire Line
	5400 4000 5400 4100
Text Notes 4450 2850 0    50   ~ 0
Undervoltage Protection
Connection ~ 5400 4100
Wire Wire Line
	5000 4100 5400 4100
Wire Wire Line
	4500 3700 4500 3600
Wire Wire Line
	5400 3600 5400 3700
Wire Wire Line
	4500 3600 5000 3600
Wire Wire Line
	5000 3700 5000 3600
Connection ~ 5000 3600
$Comp
L Device:C C?
U 1 1 6084839D
P 8550 3800
F 0 "C?" H 8435 3754 50  0000 R CNN
F 1 "10u" H 8435 3845 50  0000 R CNN
F 2 "" H 8588 3650 50  0001 C CNN
F 3 "~" H 8550 3800 50  0001 C CNN
	1    8550 3800
	1    0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 608494EE
P 9650 3800
F 0 "C?" H 9535 3846 50  0000 R CNN
F 1 "22u" H 9535 3755 50  0000 R CNN
F 2 "" H 9688 3650 50  0001 C CNN
F 3 "~" H 9650 3800 50  0001 C CNN
	1    9650 3800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8550 3650 8550 3600
Wire Wire Line
	9650 3600 9650 3650
Wire Wire Line
	8550 3950 8550 4000
Wire Wire Line
	9650 4000 9650 3950
Wire Wire Line
	9100 3900 9100 4000
Connection ~ 9100 4000
Wire Wire Line
	9100 4050 9100 4000
$Comp
L power:GND #PWR?
U 1 1 6084BF0D
P 9100 4050
F 0 "#PWR?" H 9100 3800 50  0001 C CNN
F 1 "GND" H 9105 3877 50  0000 C CNN
F 2 "" H 9100 4050 50  0001 C CNN
F 3 "" H 9100 4050 50  0001 C CNN
	1    9100 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 3600 9650 3600
Wire Wire Line
	9100 4000 9650 4000
Wire Wire Line
	8550 3600 8800 3600
Wire Wire Line
	8550 4000 9100 4000
Wire Wire Line
	5000 3600 5400 3600
Text Notes 3000 3500 0    50   ~ 0
PMOS needs to be able to supply system current (>12A)
Text HLabel 1450 3600 0    50   Input ~ 0
VBATT
Wire Wire Line
	1450 3600 2050 3600
Text Notes 6650 2850 0    50   ~ 0
Surge Current Protection
Text Notes 8950 2850 0    50   ~ 0
3V3 Reg
$Comp
L power:GNDPWR #PWR?
U 1 1 608EB186
P 2250 4500
F 0 "#PWR?" H 2250 4300 50  0001 C CNN
F 1 "GNDPWR" H 2254 4346 50  0000 C CNN
F 2 "" H 2250 4450 50  0001 C CNN
F 3 "" H 2250 4450 50  0001 C CNN
	1    2250 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 608EB1F9
P 2250 4300
F 0 "R?" H 2320 4346 50  0000 L CNN
F 1 "1k" H 2320 4255 50  0000 L CNN
F 2 "" V 2180 4300 50  0001 C CNN
F 3 "~" H 2250 4300 50  0001 C CNN
	1    2250 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3600 2550 3600
Wire Wire Line
	2550 3600 2550 3700
Wire Wire Line
	2250 4100 2550 4100
Connection ~ 2250 4100
Wire Wire Line
	2250 4100 2250 4150
Wire Wire Line
	2250 4450 2250 4500
Wire Wire Line
	2550 4000 2550 4100
Wire Wire Line
	2250 3900 2250 4100
Wire Wire Line
	5400 3600 5750 3600
Connection ~ 5400 3600
Wire Wire Line
	5950 4100 5950 3900
Wire Wire Line
	5400 4100 5950 4100
Connection ~ 8550 3600
Wire Wire Line
	7350 3600 7650 3600
Wire Wire Line
	9650 3600 10200 3600
Connection ~ 9650 3600
Text HLabel 10200 3600 2    50   Input ~ 0
3V3
Text HLabel 10200 3250 2    50   Input ~ 0
VBATT_FILT
Text HLabel 10200 3150 2    50   Input ~ 0
VBATT_UNFILT
Wire Wire Line
	7650 3250 7650 3600
Wire Wire Line
	6600 3150 6600 3600
Wire Wire Line
	6600 3600 6850 3600
Wire Wire Line
	7650 3250 10200 3250
Wire Wire Line
	7650 3600 8550 3600
Text Notes 2150 2850 0    50   ~ 0
Reverse Polarity Protection
$Comp
L Device:R R?
U 1 1 60958B50
P 8950 5300
F 0 "R?" H 9020 5346 50  0000 L CNN
F 1 "R" H 9020 5255 50  0000 L CNN
F 2 "" V 8880 5300 50  0001 C CNN
F 3 "~" H 8950 5300 50  0001 C CNN
	1    8950 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 60958B57
P 8950 5650
F 0 "D?" V 8988 5533 50  0000 R CNN
F 1 "LED" V 8897 5533 50  0000 R CNN
F 2 "" H 8950 5650 50  0001 C CNN
F 3 "~" H 8950 5650 50  0001 C CNN
	1    8950 5650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8950 5450 8950 5500
Wire Wire Line
	8950 5800 8950 5850
$Comp
L power:GND #PWR?
U 1 1 60958B60
P 8950 5850
F 0 "#PWR?" H 8950 5600 50  0001 C CNN
F 1 "GND" H 8955 5677 50  0000 C CNN
F 2 "" H 8950 5850 50  0001 C CNN
F 3 "" H 8950 5850 50  0001 C CNN
	1    8950 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60958B66
P 9300 5300
F 0 "R?" H 9370 5346 50  0000 L CNN
F 1 "R" H 9370 5255 50  0000 L CNN
F 2 "" V 9230 5300 50  0001 C CNN
F 3 "~" H 9300 5300 50  0001 C CNN
	1    9300 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 60958B6D
P 9300 5650
F 0 "D?" V 9338 5533 50  0000 R CNN
F 1 "LED" V 9247 5533 50  0000 R CNN
F 2 "" H 9300 5650 50  0001 C CNN
F 3 "~" H 9300 5650 50  0001 C CNN
	1    9300 5650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9300 5450 9300 5500
Wire Wire Line
	9300 5800 9300 5850
$Comp
L power:GND #PWR?
U 1 1 60958B76
P 9300 5850
F 0 "#PWR?" H 9300 5600 50  0001 C CNN
F 1 "GND" H 9305 5677 50  0000 C CNN
F 2 "" H 9300 5850 50  0001 C CNN
F 3 "" H 9300 5850 50  0001 C CNN
	1    9300 5850
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 60958B7C
P 8950 5100
F 0 "#PWR?" H 8950 4950 50  0001 C CNN
F 1 "+3V3" H 8965 5273 50  0000 C CNN
F 2 "" H 8950 5100 50  0001 C CNN
F 3 "" H 8950 5100 50  0001 C CNN
	1    8950 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 5100 8950 5150
$Comp
L power:+12C #PWR?
U 1 1 60958B83
P 9300 5100
F 0 "#PWR?" H 9300 4950 50  0001 C CNN
F 1 "+12C" H 9315 5273 50  0000 C CNN
F 2 "" H 9300 5100 50  0001 C CNN
F 3 "" H 9300 5100 50  0001 C CNN
	1    9300 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 5100 9300 5150
Text Notes 9850 5500 0    50   ~ 0
Indicator LEDS
Text Notes 1800 1400 0    118  ~ 0
Current Budget - See README.md
$Comp
L Device:Q_PMOS_GDS Q?
U 1 1 60858C4B
P 2250 3700
F 0 "Q?" V 2593 3700 50  0000 C CNN
F 1 "DMP3028LK3-13" V 2502 3700 50  0000 C CNN
F 2 "" H 2450 3800 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/DMP3028LK3.pdf" H 2250 3700 50  0001 C CNN
	1    2250 3700
	0    -1   -1   0   
$EndComp
$Comp
L Device:Q_PMOS_GDS Q?
U 1 1 6085B759
P 5950 3700
F 0 "Q?" V 6293 3700 50  0000 C CNN
F 1 "DMP3028LK3-13" V 6202 3700 50  0000 C CNN
F 2 "" H 6150 3800 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/DMP3028LK3.pdf" H 5950 3700 50  0001 C CNN
	1    5950 3700
	0    1    -1   0   
$EndComp
$Comp
L Device:D_Zener D?
U 1 1 608EB2B6
P 2550 3850
F 0 "D?" V 2504 3929 50  0000 L CNN
F 1 "FUTURE PROOFING" V 2595 3929 50  0000 L CNN
F 2 "" H 2550 3850 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/BZT52B15LP.pdf" H 2550 3850 50  0001 C CNN
	1    2550 3850
	0    1    1    0   
$EndComp
Text Notes 1500 5350 0    50   ~ 0
PMOS Vgs happens to be over-sized by 2x\nZener left in schematic for future-proofing
Text Notes 5100 4600 0    50   ~ 0
low-current drain follower
Text Notes 4100 5350 0    50   ~ 0
divider allows bring-up tuning of cut-out voltage\nsims indicate divider not needed for BZT52C8V2S-7-F
Connection ~ 7650 3600
Wire Wire Line
	6600 3150 10200 3150
Wire Wire Line
	6150 3600 6600 3600
Connection ~ 6600 3600
Wire Wire Line
	4500 3600 2550 3600
Connection ~ 4500 3600
Connection ~ 2550 3600
$EndSCHEMATC
