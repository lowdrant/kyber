EESchema Schematic File Version 4
LIBS:KyberBoard-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 6
Title ""
Date ""
Rev "1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Marion Anderson"
$EndDescr
Wire Wire Line
	4600 4100 4600 4150
Wire Wire Line
	4600 4500 4600 4450
$Comp
L Device:C C?
U 1 1 60AC96BF
P 4600 4300
AR Path="/60835C4F/60AC96BF" Ref="C?"  Part="1" 
AR Path="/60AC96BF" Ref="C?"  Part="1" 
AR Path="/60AC9516/60AC96BF" Ref="C17"  Part="1" 
F 0 "C17" H 4485 4254 50  0000 R CNN
F 1 "100n" H 4485 4345 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4638 4150 50  0001 C CNN
F 3 "~" H 4600 4300 50  0001 C CNN
	1    4600 4300
	1    0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 60AC96C6
P 6450 4050
AR Path="/60835C4F/60AC96C6" Ref="C?"  Part="1" 
AR Path="/60AC96C6" Ref="C?"  Part="1" 
AR Path="/60AC9516/60AC96C6" Ref="C15"  Part="1" 
F 0 "C15" H 6335 4004 50  0000 R CNN
F 1 "100n" H 6335 4095 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6488 3900 50  0001 C CNN
F 3 "~" H 6450 4050 50  0001 C CNN
	1    6450 4050
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 60AC96CD
P 6850 4050
AR Path="/60835C4F/60AC96CD" Ref="C?"  Part="1" 
AR Path="/60AC96CD" Ref="C?"  Part="1" 
AR Path="/60AC9516/60AC96CD" Ref="C16"  Part="1" 
F 0 "C16" H 6735 4004 50  0000 R CNN
F 1 "4u7" H 6735 4095 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6888 3900 50  0001 C CNN
F 3 "~" H 6850 4050 50  0001 C CNN
	1    6850 4050
	-1   0    0    1   
$EndComp
Wire Wire Line
	6450 4200 6450 4250
Wire Wire Line
	6850 4250 6850 4200
Wire Wire Line
	6650 4250 6650 4300
$Comp
L power:GND #PWR?
U 1 1 60AC96D7
P 6650 4300
AR Path="/60835C4F/60AC96D7" Ref="#PWR?"  Part="1" 
AR Path="/60AC96D7" Ref="#PWR?"  Part="1" 
AR Path="/60AC9516/60AC96D7" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 6650 4050 50  0001 C CNN
F 1 "GND" H 6655 4127 50  0000 C CNN
F 2 "" H 6650 4300 50  0001 C CNN
F 3 "" H 6650 4300 50  0001 C CNN
	1    6650 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3900 6450 3850
Wire Wire Line
	6850 3850 6850 3900
Wire Wire Line
	6650 3850 6650 3800
$Comp
L power:+3V3 #PWR?
U 1 1 60AC96E0
P 6650 3800
AR Path="/60835C4F/60AC96E0" Ref="#PWR?"  Part="1" 
AR Path="/60AC96E0" Ref="#PWR?"  Part="1" 
AR Path="/60AC9516/60AC96E0" Ref="#PWR032"  Part="1" 
F 0 "#PWR032" H 6650 3650 50  0001 C CNN
F 1 "+3V3" H 6665 3973 50  0000 C CNN
F 2 "" H 6650 3800 50  0001 C CNN
F 3 "" H 6650 3800 50  0001 C CNN
	1    6650 3800
	1    0    0    -1  
$EndComp
Text Notes 5350 5150 0    50   ~ 0
Pin 14   - 4u7 vcc (C16)\nPin 5,10 - directly to gnd\nPin 12   - 4u7 gnd (C16)
Wire Wire Line
	6450 4250 6650 4250
Wire Wire Line
	6450 3850 6650 3850
$Comp
L Device:R R?
U 1 1 60AC96F6
P 5650 4300
AR Path="/60835C4F/60AC96F6" Ref="R?"  Part="1" 
AR Path="/60AC96F6" Ref="R?"  Part="1" 
AR Path="/60AC9516/60AC96F6" Ref="R20"  Part="1" 
F 0 "R20" H 5720 4346 50  0000 L CNN
F 1 "1k" H 5720 4255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5580 4300 50  0001 C CNN
F 3 "~" H 5650 4300 50  0001 C CNN
	1    5650 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4450 5650 4500
Wire Wire Line
	5600 4100 5650 4100
Wire Wire Line
	5650 4100 5650 4150
Wire Wire Line
	4650 4100 4600 4100
NoConn ~ 4650 3900
NoConn ~ 4650 4000
$Comp
L power:+3V3 #PWR?
U 1 1 60AC9706
P 5150 3450
AR Path="/60835C4F/60AC9706" Ref="#PWR?"  Part="1" 
AR Path="/60AC9706" Ref="#PWR?"  Part="1" 
AR Path="/60AC9516/60AC9706" Ref="#PWR031"  Part="1" 
F 0 "#PWR031" H 5150 3300 50  0001 C CNN
F 1 "+3V3" H 5165 3623 50  0000 C CNN
F 2 "" H 5150 3450 50  0001 C CNN
F 3 "" H 5150 3450 50  0001 C CNN
	1    5150 3450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5150 3450 5150 3500
Wire Wire Line
	5150 3500 5200 3500
Wire Wire Line
	5200 3500 5200 3550
Wire Wire Line
	5150 3500 5100 3500
Wire Wire Line
	5100 3500 5100 3550
Connection ~ 5150 3500
Text HLabel 5650 3900 2    50   BiDi ~ 0
SDA
Text HLabel 5650 4000 2    50   Input ~ 0
SCL
Wire Wire Line
	5650 3900 5600 3900
Wire Wire Line
	5650 4000 5600 4000
$Comp
L KyberBoard:MMA8452Q U4
U 1 1 609F046F
P 5100 3550
AR Path="/609F046F" Ref="U4"  Part="1" 
AR Path="/60AC9516/609F046F" Ref="U4"  Part="1" 
F 0 "U4" H 5300 3600 50  0000 C CNN
F 1 "MMA8452Q" H 5450 3500 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-16-1EP_3x3mm_P0.5mm_EP1.8x1.8mm" H 5100 3550 50  0001 C CNN
F 3 "${KIPRJMOD}/symbol-datasheets/MMA8452Q-rev8.1.pdf" H 5100 3550 50  0001 C CNN
	1    5100 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 4450 5050 4500
Wire Wire Line
	5050 4500 5150 4500
Wire Wire Line
	5250 4450 5250 4500
Wire Wire Line
	5250 4500 5650 4500
Wire Wire Line
	5150 4450 5150 4500
Connection ~ 5150 4500
Wire Wire Line
	5150 4500 5250 4500
Wire Wire Line
	5050 4500 4600 4500
Connection ~ 5050 4500
$Comp
L power:GND #PWR0101
U 1 1 609F26EC
P 5150 4550
F 0 "#PWR0101" H 5150 4300 50  0001 C CNN
F 1 "GND" H 5155 4377 50  0000 C CNN
F 2 "" H 5150 4550 50  0001 C CNN
F 3 "" H 5150 4550 50  0001 C CNN
	1    5150 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 4500 5150 4550
Connection ~ 5250 4500
Connection ~ 6650 4250
Wire Wire Line
	6650 4250 6850 4250
Connection ~ 6650 3850
Wire Wire Line
	6650 3850 6850 3850
$EndSCHEMATC
