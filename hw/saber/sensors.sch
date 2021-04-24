EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
Title ""
Date ""
Rev "1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Marion Anderson"
$EndDescr
Text HLabel 2100 3750 1    50   Input ~ 0
VMOT_IN
Text HLabel 2100 4450 3    50   Input ~ 0
VMOT_OUT
Text HLabel 6750 4000 2    50   Input ~ 0
SDA
Text HLabel 6750 3900 2    50   Input ~ 0
SCL
$Comp
L Amplifier_Current:INA181 U?
U 1 1 608703BF
P 2700 4100
F 0 "U?" H 2900 4400 50  0000 L CNN
F 1 "INAx181-Q1" H 2900 4300 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 2750 4150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ina181.pdf" H 2850 4250 50  0001 C CNN
	1    2700 4100
	1    0    0    -1  
$EndComp
Text Notes 2250 3050 0    50   ~ 0
Motor Current Sensing
$Comp
L Device:R R?
U 1 1 6087260A
P 2100 4100
F 0 "R?" H 2030 4054 50  0000 R CNN
F 1 "5m" H 2030 4145 50  0000 R CNN
F 2 "" V 2030 4100 50  0001 C CNN
F 3 "~" H 2100 4100 50  0001 C CNN
	1    2100 4100
	1    0    0    1   
$EndComp
Text HLabel 3500 4100 2    50   Input ~ 0
imtr
$Comp
L power:+3V3 #PWR?
U 1 1 6087284A
P 2600 3750
F 0 "#PWR?" H 2600 3600 50  0001 C CNN
F 1 "+3V3" H 2615 3923 50  0000 C CNN
F 2 "" H 2600 3750 50  0001 C CNN
F 3 "" H 2600 3750 50  0001 C CNN
	1    2600 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 3750 2600 3800
Wire Wire Line
	2400 4000 2250 4000
Wire Wire Line
	2250 4000 2250 3900
Wire Wire Line
	2250 3900 2100 3900
Wire Wire Line
	2100 3900 2100 3950
Wire Wire Line
	2100 4250 2100 4300
Wire Wire Line
	2100 4300 2250 4300
Wire Wire Line
	2250 4300 2250 4200
Wire Wire Line
	2250 4200 2400 4200
Wire Wire Line
	2100 3750 2100 3900
Connection ~ 2100 3900
Wire Wire Line
	2100 4450 2100 4300
Connection ~ 2100 4300
$Comp
L power:GND #PWR?
U 1 1 60872F49
P 2700 4500
F 0 "#PWR?" H 2700 4250 50  0001 C CNN
F 1 "GND" H 2705 4327 50  0000 C CNN
F 2 "" H 2700 4500 50  0001 C CNN
F 3 "" H 2700 4500 50  0001 C CNN
	1    2700 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4100 3500 4100
$Comp
L saber:MMA8452Q U?
U 1 1 60877E69
P 5550 4050
F 0 "U?" H 6150 4550 50  0000 C CNN
F 1 "MMA8452Q" H 6150 4450 50  0000 C CNN
F 2 "" H 5550 4050 50  0001 C CNN
F 3 "https://www.nxp.com/docs/en/data-sheet/MMA8452Q.pdf" H 5550 4050 50  0001 C CNN
	1    5550 4050
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 60878581
P 5350 3900
F 0 "#PWR?" H 5350 3750 50  0001 C CNN
F 1 "+3V3" H 5365 4073 50  0000 C CNN
F 2 "" H 5350 3900 50  0001 C CNN
F 3 "" H 5350 3900 50  0001 C CNN
	1    5350 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4650 6150 4700
$Comp
L power:GND #PWR?
U 1 1 608799F7
P 6150 4700
F 0 "#PWR?" H 6150 4450 50  0001 C CNN
F 1 "GND" H 6155 4527 50  0000 C CNN
F 2 "" H 6150 4700 50  0001 C CNN
F 3 "" H 6150 4700 50  0001 C CNN
	1    6150 4700
	1    0    0    -1  
$EndComp
NoConn ~ 6700 3800
Wire Wire Line
	6850 4100 6850 4150
$Comp
L Device:R R?
U 1 1 6087D156
P 6850 4300
F 0 "R?" H 6920 4346 50  0000 L CNN
F 1 "1k" H 6920 4255 50  0000 L CNN
F 2 "" V 6780 4300 50  0001 C CNN
F 3 "~" H 6850 4300 50  0001 C CNN
	1    6850 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6087D223
P 6850 4500
F 0 "#PWR?" H 6850 4250 50  0001 C CNN
F 1 "GND" H 6855 4327 50  0000 C CNN
F 2 "" H 6850 4500 50  0001 C CNN
F 3 "" H 6850 4500 50  0001 C CNN
	1    6850 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 4500 6850 4450
Wire Wire Line
	5350 3900 5350 3950
Text Notes 5850 3050 0    50   ~ 0
Accelerometer
Wire Wire Line
	6700 4300 6750 4300
Wire Wire Line
	6750 4300 6750 4400
Wire Wire Line
	6050 4650 6050 4600
Wire Wire Line
	6250 4650 6250 4600
Wire Wire Line
	6050 4650 6150 4650
Connection ~ 6250 4650
Wire Wire Line
	6250 4650 6750 4650
Wire Wire Line
	6150 4600 6150 4650
Connection ~ 6150 4650
Wire Wire Line
	6150 4650 6250 4650
Wire Wire Line
	6700 4400 6750 4400
Connection ~ 6750 4400
Wire Wire Line
	6750 4400 6750 4650
Wire Wire Line
	6700 4100 6850 4100
Wire Wire Line
	6750 3900 6700 3900
Wire Wire Line
	6750 4000 6700 4000
Wire Wire Line
	5350 4050 5350 3950
Connection ~ 5350 3950
Wire Wire Line
	5550 4250 5500 4250
Wire Wire Line
	5500 4250 5500 4350
Wire Wire Line
	5500 4650 6050 4650
Connection ~ 6050 4650
Wire Wire Line
	5550 4350 5500 4350
Connection ~ 5500 4350
Wire Wire Line
	5500 4350 5500 4650
NoConn ~ 5550 3850
NoConn ~ 6700 4200
$Comp
L Device:C C?
U 1 1 608A66EA
P 5350 4400
F 0 "C?" H 5235 4354 50  0000 R CNN
F 1 "0u1" H 5235 4445 50  0000 R CNN
F 2 "" H 5388 4250 50  0001 C CNN
F 3 "~" H 5350 4400 50  0001 C CNN
	1    5350 4400
	1    0    0    1   
$EndComp
Wire Wire Line
	5350 4550 5350 4650
Wire Wire Line
	5350 4650 5500 4650
Connection ~ 5500 4650
Wire Wire Line
	5550 4150 5350 4150
Wire Wire Line
	5350 4150 5350 4250
Wire Wire Line
	5350 3950 5550 3950
Wire Wire Line
	5350 4050 5550 4050
$Comp
L Device:C C?
U 1 1 608A9E25
P 9200 4050
F 0 "C?" H 9085 4004 50  0000 R CNN
F 1 "0u1" H 9085 4095 50  0000 R CNN
F 2 "" H 9238 3900 50  0001 C CNN
F 3 "~" H 9200 4050 50  0001 C CNN
	1    9200 4050
	1    0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 608A9EF3
P 9600 4050
F 0 "C?" H 9485 4004 50  0000 R CNN
F 1 "4u7" H 9485 4095 50  0000 R CNN
F 2 "" H 9638 3900 50  0001 C CNN
F 3 "~" H 9600 4050 50  0001 C CNN
	1    9600 4050
	1    0    0    1   
$EndComp
Wire Wire Line
	9200 4200 9200 4250
Wire Wire Line
	9600 4250 9600 4200
Wire Wire Line
	9200 4250 9200 4300
$Comp
L power:GND #PWR?
U 1 1 608AD19B
P 9200 4300
F 0 "#PWR?" H 9200 4050 50  0001 C CNN
F 1 "GND" H 9205 4127 50  0000 C CNN
F 2 "" H 9200 4300 50  0001 C CNN
F 3 "" H 9200 4300 50  0001 C CNN
	1    9200 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 3900 9200 3850
Wire Wire Line
	9600 3850 9600 3900
Wire Wire Line
	9200 3850 9200 3800
$Comp
L power:+3V3 #PWR?
U 1 1 608AEC93
P 9200 3800
F 0 "#PWR?" H 9200 3650 50  0001 C CNN
F 1 "+3V3" H 9215 3973 50  0000 C CNN
F 2 "" H 9200 3800 50  0001 C CNN
F 3 "" H 9200 3800 50  0001 C CNN
	1    9200 3800
	1    0    0    -1  
$EndComp
Text Notes 5700 5650 0    50   ~ 0
connect 4u7 cap to VDD
Text Notes 8950 3050 0    50   ~ 0
Decoupling Caps
Wire Wire Line
	2600 4400 2600 4450
Wire Wire Line
	2600 4450 2700 4450
Wire Wire Line
	2800 4450 2800 4400
Wire Wire Line
	2700 4450 2700 4500
Connection ~ 2700 4450
Wire Wire Line
	2700 4450 2800 4450
Text Notes 2200 5700 0    50   ~ 0
rate shunt resistor for 10A min
$Comp
L Device:C C?
U 1 1 608C9E1B
P 8800 4050
F 0 "C?" H 8685 4004 50  0000 R CNN
F 1 "0u1" H 8685 4095 50  0000 R CNN
F 2 "" H 8838 3900 50  0001 C CNN
F 3 "~" H 8800 4050 50  0001 C CNN
	1    8800 4050
	1    0    0    1   
$EndComp
Wire Wire Line
	8800 3900 8800 3850
Wire Wire Line
	8800 3850 9200 3850
Connection ~ 9200 3850
Wire Wire Line
	8800 4200 8800 4250
Wire Wire Line
	8800 4250 9200 4250
Connection ~ 9200 4250
Wire Wire Line
	9200 4250 9600 4250
Wire Wire Line
	9200 3850 9600 3850
$EndSCHEMATC