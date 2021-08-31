EESchema Schematic File Version 4
LIBS:KyberBoard-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 6
Title "KyberBoard"
Date ""
Rev "1"
Comp ""
Comment1 "2021"
Comment2 "Marion Anderson"
Comment3 ""
Comment4 "HBridge Subcircuit"
$EndDescr
Text HLabel 5450 3550 2    50   Output ~ 0
MOT+
Text HLabel 6200 3550 0    50   Output ~ 0
MOT-
Text HLabel 3950 2850 0    50   Input ~ 0
PWM_MTR
Text HLabel 3950 3050 0    50   Input ~ 0
INA
Text HLabel 3950 3250 0    50   Input ~ 0
INB
Wire Wire Line
	3950 2850 4000 2850
Wire Wire Line
	3950 3050 4000 3050
Wire Wire Line
	3950 3250 4000 3250
$Comp
L Device:R R?
U 1 1 60946834
P 5050 4550
AR Path="/60835C30/60946834" Ref="R?"  Part="1" 
AR Path="/609455AB/60946834" Ref="R12"  Part="1" 
F 0 "R12" H 5120 4596 50  0000 L CNN
F 1 "10k" H 5120 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4980 4550 50  0001 C CNN
F 3 "~" H 5050 4550 50  0001 C CNN
	1    5050 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 4150 5000 4150
$Comp
L Device:R R?
U 1 1 6094683C
P 6600 4550
AR Path="/60835C30/6094683C" Ref="R?"  Part="1" 
AR Path="/609455AB/6094683C" Ref="R13"  Part="1" 
F 0 "R13" H 6670 4596 50  0000 L CNN
F 1 "10k" H 6670 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6530 4550 50  0001 C CNN
F 3 "~" H 6600 4550 50  0001 C CNN
	1    6600 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 4150 6650 4150
Text HLabel 3950 4300 0    50   Output ~ 0
imtr
Wire Wire Line
	3950 3800 4000 3800
$Comp
L power:+3V3 #PWR?
U 1 1 6094684E
P 3850 3550
AR Path="/60835C30/6094684E" Ref="#PWR?"  Part="1" 
AR Path="/609455AB/6094684E" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 3850 3400 50  0001 C CNN
F 1 "+3V3" H 3865 3723 50  0000 C CNN
F 2 "" H 3850 3550 50  0001 C CNN
F 3 "" H 3850 3550 50  0001 C CNN
	1    3850 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3550 3850 3600
Text HLabel 3950 3800 0    50   Input ~ 0
INA
Text Notes 2350 4050 0    50   ~ 0
Able to have separate logic return\n\nAlways current monitoring mode \nwhen SEL0=INA,SEL1=0,MS_EN=1\n\n(datasheet p.22,table12)
Wire Wire Line
	5600 2200 5500 2200
Wire Wire Line
	5050 4150 5050 4400
Wire Wire Line
	6600 4150 6600 4400
Text Notes 4550 2450 0    50   ~ 0
Rds(on) < 16/3 mOhms\n(datasheet p.30, sec.7)
Text HLabel 3300 5050 0    118  Input ~ 0
BATT-
Text HLabel 3300 2200 0    118  Input ~ 0
BATT+
Wire Wire Line
	5800 2500 5800 2550
Wire Wire Line
	6100 2200 6100 2550
Wire Wire Line
	5500 2550 5500 2200
$Comp
L Device:D_Schottky D4
U 1 1 60B3B341
P 3550 6450
F 0 "D4" V 3504 6529 50  0000 L CNN
F 1 "SDM2U30CSP-7" V 3595 6529 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3550 6450 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/SDM2U30CSP.pdf" H 3550 6450 50  0001 C CNN
	1    3550 6450
	0    -1   1    0   
$EndComp
Text Notes 5650 1750 0    50   ~ 0
HBridge
Wire Wire Line
	3550 7100 3550 7150
Wire Wire Line
	4450 7150 4450 7100
Wire Wire Line
	3550 6300 3550 6250
Text HLabel 3500 6700 0    50   Output ~ 0
MOT+
Text HLabel 4500 6700 2    50   Output ~ 0
MOT-
Wire Wire Line
	4500 6700 4450 6700
Connection ~ 4450 6700
Wire Wire Line
	4450 6700 4450 6800
Wire Wire Line
	6600 5050 7650 5050
Connection ~ 6600 5050
Wire Wire Line
	3850 4000 3850 4050
$Comp
L power:GND #PWR022
U 1 1 60C4B8BF
P 3850 4050
F 0 "#PWR022" H 3850 3800 50  0001 C CNN
F 1 "GND" H 3855 3877 50  0000 C CNN
F 2 "" H 3850 4050 50  0001 C CNN
F 3 "" H 3850 4050 50  0001 C CNN
	1    3850 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 6600 3550 6700
Wire Wire Line
	3550 6700 3500 6700
Connection ~ 3550 6700
Wire Wire Line
	3550 6700 3550 6800
$Comp
L Device:C C8
U 1 1 60C5AE4E
P 7650 4500
F 0 "C8" H 7765 4546 50  0000 L CNN
F 1 "100n" H 7765 4455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7688 4350 50  0001 C CNN
F 3 "~" H 7650 4500 50  0001 C CNN
	1    7650 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 4350 7650 4300
Wire Wire Line
	7650 4300 7600 4300
Wire Wire Line
	3550 7150 3800 7150
Wire Wire Line
	5050 4700 5050 5050
Wire Wire Line
	7650 4650 7650 5050
Wire Wire Line
	6600 4700 6600 5050
$Comp
L Device:CP1 C6
U 1 1 609A9AD8
P 8050 3550
F 0 "C6" H 8165 3596 50  0000 L CNN
F 1 "200u" H 8165 3505 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_8x10.5" H 8050 3550 50  0001 C CNN
F 3 "~" H 8050 3550 50  0001 C CNN
	1    8050 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 609B97B2
P 4000 6700
F 0 "C9" V 3748 6700 50  0000 C CNN
F 1 "10n" V 3839 6700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4038 6550 50  0001 C CNN
F 3 "~" H 4000 6700 50  0001 C CNN
	1    4000 6700
	0    1    1    0   
$EndComp
$Comp
L Device:C C10
U 1 1 609BFA9B
P 3800 6950
F 0 "C10" H 3850 7050 50  0000 L CNN
F 1 "10n" H 3800 6850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3838 6800 50  0001 C CNN
F 3 "~" H 3800 6950 50  0001 C CNN
	1    3800 6950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 609BFB29
P 4200 6950
F 0 "C11" H 4250 7050 50  0000 L CNN
F 1 "10n" H 4200 6850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4238 6800 50  0001 C CNN
F 3 "~" H 4200 6950 50  0001 C CNN
	1    4200 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 6700 3800 6700
Wire Wire Line
	3800 6700 3800 6800
Connection ~ 3800 6700
Wire Wire Line
	3800 6700 3850 6700
Wire Wire Line
	3800 7100 3800 7150
Connection ~ 3800 7150
Wire Wire Line
	4200 7150 4200 7100
Connection ~ 4200 7150
Wire Wire Line
	4200 7150 4450 7150
Wire Wire Line
	4150 6700 4200 6700
Wire Wire Line
	4200 6800 4200 6700
Connection ~ 4200 6700
Wire Wire Line
	4200 6700 4450 6700
Wire Wire Line
	3550 6250 4000 6250
$Comp
L Device:C C7
U 1 1 609AA368
P 8500 3550
F 0 "C7" H 8615 3596 50  0000 L CNN
F 1 "100n" H 8615 3505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8538 3400 50  0001 C CNN
F 3 "~" H 8500 3550 50  0001 C CNN
	1    8500 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 3700 8050 5050
Wire Wire Line
	8500 3700 8500 5050
Wire Wire Line
	8500 5050 8050 5050
Wire Wire Line
	8050 2200 8050 3400
Wire Wire Line
	8050 2200 8500 2200
Text HLabel 4000 7200 3    50   Input ~ 0
BATT-
Wire Wire Line
	4000 6200 4000 6250
Connection ~ 4000 6250
Wire Wire Line
	4000 6250 4450 6250
Wire Wire Line
	3800 7150 4000 7150
Wire Wire Line
	4000 7200 4000 7150
Connection ~ 4000 7150
Wire Wire Line
	4000 7150 4200 7150
Text Notes 3700 5900 0    50   ~ 0
Motor Protections
Wire Wire Line
	8500 2200 8500 3400
Wire Wire Line
	8050 5050 7650 5050
Connection ~ 8050 5050
Connection ~ 7650 5050
Wire Wire Line
	6100 2200 8050 2200
Connection ~ 8050 2200
Wire Wire Line
	3300 2200 5500 2200
Connection ~ 5500 2200
Wire Wire Line
	3300 5050 5050 5050
Connection ~ 5050 5050
Text Notes 7550 2150 0    50   ~ 0
UV protections can be after hbridge\nb/c PWM/INA/INB are after UV protections,\nso they will go low and turn off hbridge
Wire Wire Line
	3950 4300 4000 4300
Wire Wire Line
	4450 6250 4450 6300
Wire Wire Line
	4450 6600 4450 6700
$Comp
L KyberBoard-rescue:VNHD7008AY-KyberBoard U?
U 1 1 609467F4
P 3600 2950
AR Path="/60835C30/609467F4" Ref="U?"  Part="1" 
AR Path="/609455AB/609467F4" Ref="U2"  Part="1" 
F 0 "U2" H 7050 3400 50  0000 C CNN
F 1 "VNHD7008AY" H 7250 3300 50  0000 C CNN
F 2 "Package_SO:ST_PowerSSO-36_SlugDown_ThermalVias" H 3600 2950 50  0001 C CNN
F 3 "${KIPRJMOD}/symbol-datasheets/vnhd7008ay.pdf" H 3600 2950 50  0001 C CNN
	1    3600 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 4000 4000 4000
Wire Wire Line
	3850 3600 4000 3600
$Comp
L KyberBoard-rescue:STL120N4F6AG-KyberBoard Q1
U 1 1 60998AA7
P 5800 2300
F 0 "Q1" V 6150 2250 50  0000 L CNN
F 1 "STL120N4F6AG" V 6050 2000 50  0000 L CNN
F 2 "STL120N4F6AG:STL120N4F6AG" H 6000 2400 50  0001 C CNN
F 3 "${KIPRJMOD}/symbol-datasheets/stl120n4f6ag.pdf" H 5800 2300 50  0001 C CNN
	1    5800 2300
	0    1    -1   0   
$EndComp
Wire Wire Line
	5000 3550 5400 3550
Wire Wire Line
	5400 3600 5400 3550
Connection ~ 5400 3550
Wire Wire Line
	5400 3550 5450 3550
Wire Wire Line
	5050 5050 5400 5050
Wire Wire Line
	5400 4000 5400 4050
Connection ~ 5400 5050
Wire Wire Line
	5400 5050 6250 5050
Wire Wire Line
	5000 4050 5400 4050
Connection ~ 5400 4050
Wire Wire Line
	5400 4050 5400 5050
Connection ~ 6250 5050
Wire Wire Line
	6250 5050 6600 5050
Wire Wire Line
	6250 4000 6250 4050
Wire Wire Line
	6250 4050 6650 4050
Connection ~ 6250 4050
Wire Wire Line
	6250 4050 6250 5050
Wire Wire Line
	6200 3550 6250 3550
Wire Wire Line
	6250 3550 6250 3600
Connection ~ 6250 3550
Wire Wire Line
	6250 3550 6650 3550
$Comp
L Device:D_Schottky D6
U 1 1 60EDFB2E
P 3550 6950
F 0 "D6" V 3504 7029 50  0000 L CNN
F 1 "SDM2U30CSP-7" V 3595 7029 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3550 6950 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/SDM2U30CSP.pdf" H 3550 6950 50  0001 C CNN
	1    3550 6950
	0    -1   1    0   
$EndComp
$Comp
L Device:D_Schottky D7
U 1 1 60EE22CC
P 4450 6950
F 0 "D7" V 4404 7029 50  0000 L CNN
F 1 "SDM2U30CSP-7" V 4495 7029 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4450 6950 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/SDM2U30CSP.pdf" H 4450 6950 50  0001 C CNN
	1    4450 6950
	0    1    1    0   
$EndComp
$Comp
L Device:D_Schottky D5
U 1 1 60EE71EA
P 4450 6450
F 0 "D5" V 4404 6529 50  0000 L CNN
F 1 "SDM2U30CSP-7" V 4495 6529 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4450 6450 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/SDM2U30CSP.pdf" H 4450 6450 50  0001 C CNN
	1    4450 6450
	0    1    1    0   
$EndComp
Text Label 6700 2200 0    50   ~ 0
VCC
Text Label 4000 6200 1    50   ~ 0
VCC
Wire Wire Line
	5000 3800 5100 3800
Wire Wire Line
	6550 3800 6650 3800
$Comp
L KyberBoard-rescue:STL76DN4LF7AG-KyberBoard Q4
U 1 1 60B389D1
P 5300 3800
F 0 "Q4" H 5500 3750 50  0000 L CNN
F 1 "STL76DN4LF7AG" H 5500 3650 50  0000 L CNN
F 2 "STL76DN4LF7AG:STL76DN4LF7AG" H 5500 3800 50  0001 C CNN
F 3 "${KIPRJMOD}/symbol-datasheets/stl76dn4lf7ag-1.pdf" H 5500 3800 50  0001 C CNN
	1    5300 3800
	1    0    0    -1  
$EndComp
$Comp
L KyberBoard-rescue:STL76DN4LF7AG-KyberBoard Q4
U 2 1 60B38B38
P 6350 3800
F 0 "Q4" H 6550 3950 50  0000 L CNN
F 1 "STL76DN4LF7AG" H 6550 3850 50  0000 L CNN
F 2 "STL76DN4LF7AG:STL76DN4LF7AG" H 6550 3800 50  0001 C CNN
F 3 "${KIPRJMOD}/symbol-datasheets/stl76dn4lf7ag-1.pdf" H 6550 3800 50  0001 C CNN
	2    6350 3800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6100 2200 6000 2200
Connection ~ 6100 2200
Wire Wire Line
	8500 2200 9700 2200
Connection ~ 8500 2200
Text HLabel 9700 2200 2    118  Input ~ 0
V_UNSAFE
$EndSCHEMATC
