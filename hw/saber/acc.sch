EESchema Schematic File Version 4
LIBS:saber-cache
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
$Comp
L saber:MMA8452Q U?
U 1 1 60AC96A8
P 5150 3550
AR Path="/60835C4F/60AC96A8" Ref="U?"  Part="1" 
AR Path="/60AC96A8" Ref="U?"  Part="1" 
AR Path="/60AC9516/60AC96A8" Ref="U4"  Part="1" 
F 0 "U4" H 5050 3600 50  0000 C CNN
F 1 "MMA8452Q" H 4900 3500 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-16-1EP_3x3mm_P0.5mm_EP1.8x1.8mm" H 5150 3550 50  0001 C CNN
F 3 "https://www.nxp.com/docs/en/data-sheet/MMA8452Q.pdf" H 5150 3550 50  0001 C CNN
	1    5150 3550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5100 4500 5100 4550
$Comp
L power:GND #PWR?
U 1 1 60AC96B0
P 5100 4550
AR Path="/60835C4F/60AC96B0" Ref="#PWR?"  Part="1" 
AR Path="/60AC96B0" Ref="#PWR?"  Part="1" 
AR Path="/60AC9516/60AC96B0" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 5100 4300 50  0001 C CNN
F 1 "GND" H 5105 4377 50  0000 C CNN
F 2 "" H 5100 4550 50  0001 C CNN
F 3 "" H 5100 4550 50  0001 C CNN
	1    5100 4550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4600 4100 4600 4150
Wire Wire Line
	4600 4500 4600 4450
Wire Wire Line
	5200 4500 5200 4450
Wire Wire Line
	5000 4500 5000 4450
Wire Wire Line
	5200 4500 5100 4500
Wire Wire Line
	5100 4450 5100 4500
Connection ~ 5100 4500
Wire Wire Line
	5100 4500 5000 4500
Connection ~ 5200 4500
$Comp
L Device:C C?
U 1 1 60AC96BF
P 5650 4300
AR Path="/60835C4F/60AC96BF" Ref="C?"  Part="1" 
AR Path="/60AC96BF" Ref="C?"  Part="1" 
AR Path="/60AC9516/60AC96BF" Ref="C14"  Part="1" 
F 0 "C14" H 5535 4254 50  0000 R CNN
F 1 "100n" H 5535 4345 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5688 4150 50  0001 C CNN
F 3 "~" H 5650 4300 50  0001 C CNN
	1    5650 4300
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 60AC96C6
P 6700 4050
AR Path="/60835C4F/60AC96C6" Ref="C?"  Part="1" 
AR Path="/60AC96C6" Ref="C?"  Part="1" 
AR Path="/60AC9516/60AC96C6" Ref="C16"  Part="1" 
F 0 "C16" H 6585 4004 50  0000 R CNN
F 1 "100n" H 6585 4095 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6738 3900 50  0001 C CNN
F 3 "~" H 6700 4050 50  0001 C CNN
	1    6700 4050
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 60AC96CD
P 7100 4050
AR Path="/60835C4F/60AC96CD" Ref="C?"  Part="1" 
AR Path="/60AC96CD" Ref="C?"  Part="1" 
AR Path="/60AC9516/60AC96CD" Ref="C17"  Part="1" 
F 0 "C17" H 6985 4004 50  0000 R CNN
F 1 "4u7" H 6985 4095 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7138 3900 50  0001 C CNN
F 3 "~" H 7100 4050 50  0001 C CNN
	1    7100 4050
	-1   0    0    1   
$EndComp
Wire Wire Line
	6700 4200 6700 4250
Wire Wire Line
	7100 4250 7100 4200
Wire Wire Line
	6700 4250 6700 4300
$Comp
L power:GND #PWR?
U 1 1 60AC96D7
P 6700 4300
AR Path="/60835C4F/60AC96D7" Ref="#PWR?"  Part="1" 
AR Path="/60AC96D7" Ref="#PWR?"  Part="1" 
AR Path="/60AC9516/60AC96D7" Ref="#PWR035"  Part="1" 
F 0 "#PWR035" H 6700 4050 50  0001 C CNN
F 1 "GND" H 6705 4127 50  0000 C CNN
F 2 "" H 6700 4300 50  0001 C CNN
F 3 "" H 6700 4300 50  0001 C CNN
	1    6700 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3900 6700 3850
Wire Wire Line
	7100 3850 7100 3900
Wire Wire Line
	6700 3850 6700 3800
$Comp
L power:+3V3 #PWR?
U 1 1 60AC96E0
P 6700 3800
AR Path="/60835C4F/60AC96E0" Ref="#PWR?"  Part="1" 
AR Path="/60AC96E0" Ref="#PWR?"  Part="1" 
AR Path="/60AC9516/60AC96E0" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 6700 3650 50  0001 C CNN
F 1 "+3V3" H 6715 3973 50  0000 C CNN
F 2 "" H 6700 3800 50  0001 C CNN
F 3 "" H 6700 3800 50  0001 C CNN
	1    6700 3800
	1    0    0    -1  
$EndComp
Text Notes 6500 4800 2    50   ~ 0
connect 4u7 cap to VDD
$Comp
L Device:C C?
U 1 1 60AC96E7
P 6300 4050
AR Path="/60835C4F/60AC96E7" Ref="C?"  Part="1" 
AR Path="/60AC96E7" Ref="C?"  Part="1" 
AR Path="/60AC9516/60AC96E7" Ref="C15"  Part="1" 
F 0 "C15" H 6185 4004 50  0000 R CNN
F 1 "100n" H 6185 4095 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6338 3900 50  0001 C CNN
F 3 "~" H 6300 4050 50  0001 C CNN
	1    6300 4050
	-1   0    0    1   
$EndComp
Wire Wire Line
	6300 3900 6300 3850
Wire Wire Line
	6300 3850 6700 3850
Connection ~ 6700 3850
Wire Wire Line
	6300 4200 6300 4250
Wire Wire Line
	6300 4250 6700 4250
Connection ~ 6700 4250
Wire Wire Line
	6700 4250 7100 4250
Wire Wire Line
	6700 3850 7100 3850
$Comp
L Device:R R?
U 1 1 60AC96F6
P 4600 4300
AR Path="/60835C4F/60AC96F6" Ref="R?"  Part="1" 
AR Path="/60AC96F6" Ref="R?"  Part="1" 
AR Path="/60AC9516/60AC96F6" Ref="R19"  Part="1" 
F 0 "R19" H 4670 4346 50  0000 L CNN
F 1 "1k" H 4670 4255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4530 4300 50  0001 C CNN
F 3 "~" H 4600 4300 50  0001 C CNN
	1    4600 4300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5650 4450 5650 4500
Wire Wire Line
	5650 4500 5200 4500
Wire Wire Line
	5600 4100 5650 4100
Wire Wire Line
	5650 4100 5650 4150
Wire Wire Line
	4650 4100 4600 4100
Wire Wire Line
	5000 4500 4600 4500
Connection ~ 5000 4500
NoConn ~ 5600 3900
NoConn ~ 5600 4000
$Comp
L power:+3V3 #PWR?
U 1 1 60AC9706
P 5100 3450
AR Path="/60835C4F/60AC9706" Ref="#PWR?"  Part="1" 
AR Path="/60AC9706" Ref="#PWR?"  Part="1" 
AR Path="/60AC9516/60AC9706" Ref="#PWR032"  Part="1" 
F 0 "#PWR032" H 5100 3300 50  0001 C CNN
F 1 "+3V3" H 5115 3623 50  0000 C CNN
F 2 "" H 5100 3450 50  0001 C CNN
F 3 "" H 5100 3450 50  0001 C CNN
	1    5100 3450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5100 3450 5100 3500
Wire Wire Line
	5100 3500 5150 3500
Wire Wire Line
	5150 3500 5150 3550
Wire Wire Line
	5100 3500 5050 3500
Wire Wire Line
	5050 3500 5050 3550
Connection ~ 5100 3500
Text HLabel 4600 3900 0    50   BiDi ~ 0
SDA
Text HLabel 4600 4000 0    50   Input ~ 0
SCL
Wire Wire Line
	4600 3900 4650 3900
Wire Wire Line
	4600 4000 4650 4000
$EndSCHEMATC
