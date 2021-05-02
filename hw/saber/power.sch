EESchema Schematic File Version 4
LIBS:saber-cache
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
	4050 4050 4050 4100
$Comp
L Device:LED D?
U 1 1 60A05B02
P 4050 4250
AR Path="/60835C0E/60A05B02" Ref="D?"  Part="1" 
AR Path="/60A05B02" Ref="D?"  Part="1" 
AR Path="/60A0541C/60A05B02" Ref="D10"  Part="1" 
F 0 "D10" V 4088 4133 50  0000 R CNN
F 1 "150060AS75000" V 3997 4133 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4050 4250 50  0001 C CNN
F 3 "https://www.we-online.com/catalog/datasheet/150060AS75000.pdf" H 4050 4250 50  0001 C CNN
	1    4050 4250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 60A05B09
P 4050 3900
AR Path="/60835C0E/60A05B09" Ref="R?"  Part="1" 
AR Path="/60A05B09" Ref="R?"  Part="1" 
AR Path="/60A0541C/60A05B09" Ref="R17"  Part="1" 
F 0 "R17" H 4120 3946 50  0000 L CNN
F 1 "10k" H 4120 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3980 3900 50  0001 C CNN
F 3 "~" H 4050 3900 50  0001 C CNN
	1    4050 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Small JP?
U 1 1 60A05B37
P 4050 3600
AR Path="/609455AB/60A05B37" Ref="JP?"  Part="1" 
AR Path="/60A05B37" Ref="JP?"  Part="1" 
AR Path="/60A0541C/60A05B37" Ref="JP6"  Part="1" 
F 0 "JP6" V 4004 3674 50  0000 L CNN
F 1 "Jumper_NC_Small" V 4095 3674 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4050 3600 50  0001 C CNN
F 3 "~" H 4050 3600 50  0001 C CNN
	1    4050 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 3700 4050 3750
$Comp
L Regulator_Linear:AZ1117-3.3 U?
U 1 1 60A12C8F
P 6450 3900
AR Path="/60835C0E/60A12C8F" Ref="U?"  Part="1" 
AR Path="/60A12C8F" Ref="U?"  Part="1" 
AR Path="/60A0541C/60A12C8F" Ref="U3"  Part="1" 
F 0 "U3" H 6450 4142 50  0000 C CNN
F 1 "AZ1117IH-3.3TRG1" H 6450 4051 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 6450 4150 50  0001 C CIN
F 3 "https://www.diodes.com/assets/Datasheets/AZ1117I.pdf" H 6450 3900 50  0001 C CNN
	1    6450 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60A12C96
P 6000 4100
AR Path="/60835C0E/60A12C96" Ref="C?"  Part="1" 
AR Path="/60A12C96" Ref="C?"  Part="1" 
AR Path="/60A0541C/60A12C96" Ref="C12"  Part="1" 
F 0 "C12" H 5885 4054 50  0000 R CNN
F 1 "10u" H 5885 4145 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6038 3950 50  0001 C CNN
F 3 "~" H 6000 4100 50  0001 C CNN
	1    6000 4100
	1    0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 60A12C9D
P 6900 4100
AR Path="/60835C0E/60A12C9D" Ref="C?"  Part="1" 
AR Path="/60A12C9D" Ref="C?"  Part="1" 
AR Path="/60A0541C/60A12C9D" Ref="C13"  Part="1" 
F 0 "C13" H 6785 4146 50  0000 R CNN
F 1 "22u" H 6785 4055 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6938 3950 50  0001 C CNN
F 3 "~" H 6900 4100 50  0001 C CNN
	1    6900 4100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6450 4200 6450 4300
Connection ~ 6450 4300
$Comp
L Device:R R?
U 1 1 60A12CA7
P 7500 4450
AR Path="/60835C0E/60A12CA7" Ref="R?"  Part="1" 
AR Path="/60A12CA7" Ref="R?"  Part="1" 
AR Path="/60A0541C/60A12CA7" Ref="R18"  Part="1" 
F 0 "R18" H 7570 4496 50  0000 L CNN
F 1 "1k" H 7570 4405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7430 4450 50  0001 C CNN
F 3 "~" H 7500 4450 50  0001 C CNN
	1    7500 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 4600 7500 4650
Connection ~ 6000 3900
Wire Wire Line
	6000 3950 6000 3900
Wire Wire Line
	6000 3900 6150 3900
Wire Wire Line
	6000 4250 6000 4300
Wire Wire Line
	6000 4300 6450 4300
Wire Wire Line
	6900 4300 6900 4250
Wire Wire Line
	6900 3900 6900 3950
Connection ~ 6900 3900
Text Notes 6350 3150 0    50   ~ 0
3V3 Reg + Indicators
$Comp
L Device:LED D?
U 1 1 60A12CDB
P 7500 4800
AR Path="/60835C0E/60A12CDB" Ref="D?"  Part="1" 
AR Path="/60A12CDB" Ref="D?"  Part="1" 
AR Path="/60A0541C/60A12CDB" Ref="D11"  Part="1" 
F 0 "D11" V 7538 4683 50  0000 R CNN
F 1 "150060AS75000" V 7447 4683 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7500 4800 50  0001 C CNN
F 3 "https://www.we-online.com/catalog/datasheet/150060AS75000.pdf" H 7500 4800 50  0001 C CNN
	1    7500 4800
	0    -1   -1   0   
$EndComp
$Comp
L Device:Jumper_NC_Small JP?
U 1 1 60A12CE2
P 7500 4150
AR Path="/609455AB/60A12CE2" Ref="JP?"  Part="1" 
AR Path="/60A12CE2" Ref="JP?"  Part="1" 
AR Path="/60A0541C/60A12CE2" Ref="JP7"  Part="1" 
F 0 "JP7" V 7454 4224 50  0000 L CNN
F 1 "Jumper_NC_Small" V 7545 4224 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7500 4150 50  0001 C CNN
F 3 "~" H 7500 4150 50  0001 C CNN
	1    7500 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	7500 4250 7500 4300
Wire Wire Line
	6900 3600 6900 3900
$Comp
L pspice:INDUCTOR L?
U 1 1 60A16B37
P 5150 2400
AR Path="/60835C0E/60A16B37" Ref="L?"  Part="1" 
AR Path="/60A16B37" Ref="L?"  Part="1" 
AR Path="/60A0541C/60A16B37" Ref="L1"  Part="1" 
F 0 "L1" H 5150 2615 50  0000 C CNN
F 1 "PCS125MT180" H 5150 2524 50  0000 C CNN
F 2 "" H 5150 2400 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/viking-tech/PCS125MT180/12141892" H 5150 2400 50  0001 C CNN
	1    5150 2400
	-1   0    0    -1  
$EndComp
Text Notes 4850 2100 0    50   ~ 0
surge suppression
Text HLabel 3600 2400 0    118  Input ~ 0
Vs
Text HLabel 3600 5400 0    118  Input ~ 0
GNDPWR
Text HLabel 8000 2400 2    118  Output ~ 0
12C
Text HLabel 8000 3600 2    118  Output ~ 0
3V3
Wire Wire Line
	6000 2400 6000 3900
Wire Wire Line
	6750 3900 6900 3900
Wire Wire Line
	6450 4300 6900 4300
Wire Wire Line
	6900 3600 7500 3600
Text HLabel 8000 5400 2    118  Output ~ 0
GND
Wire Wire Line
	6450 5400 7500 5400
Wire Wire Line
	6450 4300 6450 5400
Wire Wire Line
	7500 4950 7500 5400
Connection ~ 7500 5400
Wire Wire Line
	7500 5400 8000 5400
Wire Wire Line
	7500 4050 7500 3600
Connection ~ 7500 3600
Wire Wire Line
	7500 3600 8000 3600
Wire Wire Line
	7500 3500 7500 3600
$Comp
L Connector:TestPoint TP11
U 1 1 60A8568B
P 7500 3500
F 0 "TP11" H 7558 3620 50  0000 L CNN
F 1 "TestPoint" H 7558 3529 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x01_P1.27mm_Vertical" H 7700 3500 50  0001 C CNN
F 3 "~" H 7700 3500 50  0001 C CNN
	1    7500 3500
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP10
U 1 1 60B7B28C
P 7500 2300
F 0 "TP10" H 7558 2420 50  0000 L CNN
F 1 "TestPoint" H 7558 2329 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x01_P1.27mm_Vertical" H 7700 2300 50  0001 C CNN
F 3 "~" H 7700 2300 50  0001 C CNN
	1    7500 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 2300 7500 2400
Wire Wire Line
	8000 2400 7500 2400
Connection ~ 7500 2400
Wire Wire Line
	7500 2400 6000 2400
Wire Wire Line
	4050 5400 6450 5400
Wire Wire Line
	4050 4400 4050 5400
Connection ~ 6450 5400
Wire Wire Line
	3600 5400 4050 5400
Connection ~ 4050 5400
Wire Wire Line
	5400 2400 6000 2400
Connection ~ 6000 2400
Connection ~ 4050 2400
Wire Wire Line
	4050 2400 4900 2400
Wire Wire Line
	4050 2400 4050 3500
Wire Wire Line
	3600 2400 4050 2400
$Comp
L power:PWR_FLAG #FLG04
U 1 1 60CB89E2
P 6000 2400
F 0 "#FLG04" H 6000 2475 50  0001 C CNN
F 1 "PWR_FLAG" H 6000 2574 50  0000 C CNN
F 2 "" H 6000 2400 50  0001 C CNN
F 3 "~" H 6000 2400 50  0001 C CNN
	1    6000 2400
	1    0    0    -1  
$EndComp
$EndSCHEMATC
