EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 6
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
	7750 4050 7750 4100
$Comp
L Device:LED D?
U 1 1 60A05B02
P 7750 4250
AR Path="/60835C0E/60A05B02" Ref="D?"  Part="1" 
AR Path="/60A05B02" Ref="D?"  Part="1" 
AR Path="/60A0541C/60A05B02" Ref="D10"  Part="1" 
F 0 "D10" V 7788 4133 50  0000 R CNN
F 1 "150060AS75000" V 7697 4133 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7750 4250 50  0001 C CNN
F 3 "https://www.we-online.com/catalog/datasheet/150060AS75000.pdf" H 7750 4250 50  0001 C CNN
	1    7750 4250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 60A05B09
P 7750 3900
AR Path="/60835C0E/60A05B09" Ref="R?"  Part="1" 
AR Path="/60A05B09" Ref="R?"  Part="1" 
AR Path="/60A0541C/60A05B09" Ref="R18"  Part="1" 
F 0 "R18" H 7820 3946 50  0000 L CNN
F 1 "10k" H 7820 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7680 3900 50  0001 C CNN
F 3 "~" H 7750 3900 50  0001 C CNN
	1    7750 3900
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AZ1117-3.3 U?
U 1 1 60A12C8F
P 5450 3900
AR Path="/60835C0E/60A12C8F" Ref="U?"  Part="1" 
AR Path="/60A12C8F" Ref="U?"  Part="1" 
AR Path="/60A0541C/60A12C8F" Ref="U3"  Part="1" 
F 0 "U3" H 5450 4142 50  0000 C CNN
F 1 "AZ1117IH-3.3TRG1" H 5450 4051 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 5450 4150 50  0001 C CIN
F 3 "https://www.diodes.com/assets/Datasheets/AZ1117I.pdf" H 5450 3900 50  0001 C CNN
	1    5450 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60A12C96
P 5000 4100
AR Path="/60835C0E/60A12C96" Ref="C?"  Part="1" 
AR Path="/60A12C96" Ref="C?"  Part="1" 
AR Path="/60A0541C/60A12C96" Ref="C12"  Part="1" 
F 0 "C12" H 4885 4054 50  0000 R CNN
F 1 "10u" H 4885 4145 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5038 3950 50  0001 C CNN
F 3 "~" H 5000 4100 50  0001 C CNN
	1    5000 4100
	1    0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 60A12C9D
P 5900 4100
AR Path="/60835C0E/60A12C9D" Ref="C?"  Part="1" 
AR Path="/60A12C9D" Ref="C?"  Part="1" 
AR Path="/60A0541C/60A12C9D" Ref="C13"  Part="1" 
F 0 "C13" H 5785 4146 50  0000 R CNN
F 1 "22u" H 5785 4055 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5938 3950 50  0001 C CNN
F 3 "~" H 5900 4100 50  0001 C CNN
	1    5900 4100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5450 4200 5450 4300
Connection ~ 5450 4300
$Comp
L Device:R R?
U 1 1 60A12CA7
P 6500 4450
AR Path="/60835C0E/60A12CA7" Ref="R?"  Part="1" 
AR Path="/60A12CA7" Ref="R?"  Part="1" 
AR Path="/60A0541C/60A12CA7" Ref="R19"  Part="1" 
F 0 "R19" H 6570 4496 50  0000 L CNN
F 1 "1k" H 6570 4405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6430 4450 50  0001 C CNN
F 3 "~" H 6500 4450 50  0001 C CNN
	1    6500 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 4600 6500 4650
Connection ~ 5000 3900
Wire Wire Line
	5000 3950 5000 3900
Wire Wire Line
	5000 3900 5150 3900
Wire Wire Line
	5000 4250 5000 4300
Wire Wire Line
	5000 4300 5450 4300
Wire Wire Line
	5900 4300 5900 4250
Wire Wire Line
	5900 3900 5900 3950
Connection ~ 5900 3900
Text Notes 5350 3150 0    50   ~ 0
3V3 Reg + Indicators
$Comp
L Device:LED D?
U 1 1 60A12CDB
P 6500 4800
AR Path="/60835C0E/60A12CDB" Ref="D?"  Part="1" 
AR Path="/60A12CDB" Ref="D?"  Part="1" 
AR Path="/60A0541C/60A12CDB" Ref="D11"  Part="1" 
F 0 "D11" V 6538 4683 50  0000 R CNN
F 1 "150060AS75000" V 6447 4683 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6500 4800 50  0001 C CNN
F 3 "https://www.we-online.com/catalog/datasheet/150060AS75000.pdf" H 6500 4800 50  0001 C CNN
	1    6500 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5900 3600 5900 3900
$Comp
L pspice:INDUCTOR L?
U 1 1 60A16B37
P 4150 2400
AR Path="/60835C0E/60A16B37" Ref="L?"  Part="1" 
AR Path="/60A16B37" Ref="L?"  Part="1" 
AR Path="/60A0541C/60A16B37" Ref="L1"  Part="1" 
F 0 "L1" H 4150 2615 50  0000 C CNN
F 1 "CIGT201210UHR47MNE" H 4150 2524 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4150 2400 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/samsung-electro-mechanics/CIGT201210UHR47MNE/7041214" H 4150 2400 50  0001 C CNN
	1    4150 2400
	-1   0    0    -1  
$EndComp
Text Notes 3800 2100 0    50   ~ 0
surge suppression
Text HLabel 3600 2400 0    118  Input ~ 0
Vs
Text HLabel 3600 5400 0    118  Input ~ 0
GNDPWR
Text HLabel 8050 2400 2    118  Output ~ 0
12C
Text HLabel 7000 3600 2    118  Output ~ 0
3V3
Wire Wire Line
	5000 2400 5000 3900
Wire Wire Line
	5750 3900 5900 3900
Wire Wire Line
	5450 4300 5900 4300
Text HLabel 8050 5400 2    118  Output ~ 0
GND
Wire Wire Line
	5450 5400 6500 5400
Wire Wire Line
	5450 4300 5450 5400
Wire Wire Line
	6500 4950 6500 5400
Connection ~ 6500 5400
Wire Wire Line
	7750 4400 7750 5400
Connection ~ 5000 2400
$Comp
L power:PWR_FLAG #FLG04
U 1 1 60CB89E2
P 5000 2300
F 0 "#FLG04" H 5000 2375 50  0001 C CNN
F 1 "PWR_FLAG" H 5000 2474 50  0000 C CNN
F 2 "" H 5000 2300 50  0001 C CNN
F 3 "~" H 5000 2300 50  0001 C CNN
	1    5000 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2300 5000 2400
Wire Wire Line
	6500 3600 6500 4300
Wire Wire Line
	7750 2400 7750 3750
Wire Wire Line
	6500 3600 7000 3600
Wire Wire Line
	5900 3600 6500 3600
Connection ~ 6500 3600
Wire Wire Line
	4400 2400 5000 2400
Wire Wire Line
	3900 2400 3600 2400
Wire Wire Line
	5450 5400 3600 5400
Connection ~ 5450 5400
Wire Wire Line
	6500 5400 7750 5400
Connection ~ 7750 5400
Wire Wire Line
	7750 5400 8050 5400
Wire Wire Line
	5000 2400 7750 2400
Connection ~ 7750 2400
Wire Wire Line
	7750 2400 8050 2400
$EndSCHEMATC
