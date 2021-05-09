EESchema Schematic File Version 4
LIBS:saber-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 6
Title ""
Date ""
Rev "1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Marion Anderson"
$EndDescr
Text HLabel 3650 3550 2    50   Output ~ 0
MOT+
Text HLabel 4400 3550 0    50   Output ~ 0
MOT-
Text HLabel 2150 2850 0    50   Input ~ 0
PWM_MTR
Text HLabel 2150 3050 0    50   Input ~ 0
INA
Text HLabel 2150 3250 0    50   Input ~ 0
INB
Wire Wire Line
	2150 2850 2200 2850
Wire Wire Line
	2150 3050 2200 3050
Wire Wire Line
	2150 3250 2200 3250
$Comp
L Device:R R?
U 1 1 60946834
P 3250 4550
AR Path="/60835C30/60946834" Ref="R?"  Part="1" 
AR Path="/609455AB/60946834" Ref="R8"  Part="1" 
F 0 "R8" H 3320 4596 50  0000 L CNN
F 1 "10k" H 3320 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3180 4550 50  0001 C CNN
F 3 "~" H 3250 4550 50  0001 C CNN
	1    3250 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 4150 3200 4150
$Comp
L Device:R R?
U 1 1 6094683C
P 4800 4550
AR Path="/60835C30/6094683C" Ref="R?"  Part="1" 
AR Path="/609455AB/6094683C" Ref="R9"  Part="1" 
F 0 "R9" H 4870 4596 50  0000 L CNN
F 1 "10k" H 4870 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4730 4550 50  0001 C CNN
F 3 "~" H 4800 4550 50  0001 C CNN
	1    4800 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4150 4850 4150
Text HLabel 2150 4300 0    50   Output ~ 0
imtr
Wire Wire Line
	2150 3800 2200 3800
$Comp
L power:+3V3 #PWR?
U 1 1 6094684E
P 2050 3550
AR Path="/60835C30/6094684E" Ref="#PWR?"  Part="1" 
AR Path="/609455AB/6094684E" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 2050 3400 50  0001 C CNN
F 1 "+3V3" H 2065 3723 50  0000 C CNN
F 2 "" H 2050 3550 50  0001 C CNN
F 3 "" H 2050 3550 50  0001 C CNN
	1    2050 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 3550 2050 3600
Text HLabel 2150 3800 0    50   Input ~ 0
INA
Text Notes 1550 4950 0    50   ~ 0
Separate logic return for time being\n\nAlways current monitoring mode \nwhen SEL0=INA,SEL1=0,MS_EN=1\n\n(datasheet p.22,table12)
Wire Wire Line
	3800 2200 3700 2200
Wire Wire Line
	3250 4150 3250 4400
Wire Wire Line
	4800 4150 4800 4400
Text Notes 2750 2450 0    50   ~ 0
Rds(on) < 16/3 mOhms\n(datasheet p.30, sec.7)
Text HLabel 1500 5050 0    118  Input ~ 0
BATT-
Text HLabel 1500 2200 0    118  Input ~ 0
BATT+
Text HLabel 10700 2200 2    118  Output ~ 0
Vs
$Comp
L Device:D_Zener D?
U 1 1 60A0C7BB
P 8550 2450
AR Path="/60835C0E/60A0C7BB" Ref="D?"  Part="1" 
AR Path="/60A0C7BB" Ref="D?"  Part="1" 
AR Path="/609455AB/60A0C7BB" Ref="D6"  Part="1" 
F 0 "D6" V 8504 2529 50  0000 L CNN
F 1 "BZT52C8V2S-7-F" V 8595 2529 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 8550 2450 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Diodes%20PDFs/BZT52C2V0S-BZT52C39S.pdf" H 8550 2450 50  0001 C CNN
	1    8550 2450
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 60A0C7C9
P 8900 2450
AR Path="/60835C0E/60A0C7C9" Ref="R?"  Part="1" 
AR Path="/60A0C7C9" Ref="R?"  Part="1" 
AR Path="/609455AB/60A0C7C9" Ref="R12"  Part="1" 
F 0 "R12" H 8970 2496 50  0000 L CNN
F 1 "1k" H 8970 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8830 2450 50  0001 C CNN
F 3 "~" H 8900 2450 50  0001 C CNN
	1    8900 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60A0C7D0
P 8550 2800
AR Path="/60835C0E/60A0C7D0" Ref="R?"  Part="1" 
AR Path="/60A0C7D0" Ref="R?"  Part="1" 
AR Path="/609455AB/60A0C7D0" Ref="R10"  Part="1" 
F 0 "R10" H 8481 2754 50  0000 R CNN
F 1 "0" H 8481 2845 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8480 2800 50  0001 C CNN
F 3 "~" H 8550 2800 50  0001 C CNN
	1    8550 2800
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 60A0C7D7
P 8550 3200
AR Path="/60835C0E/60A0C7D7" Ref="R?"  Part="1" 
AR Path="/60A0C7D7" Ref="R?"  Part="1" 
AR Path="/609455AB/60A0C7D7" Ref="R11"  Part="1" 
F 0 "R11" H 8481 3154 50  0000 R CNN
F 1 "1k" H 8481 3245 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8480 3200 50  0001 C CNN
F 3 "~" H 8550 3200 50  0001 C CNN
	1    8550 3200
	1    0    0    1   
$EndComp
Wire Wire Line
	8550 2600 8550 2650
Text Notes 8600 1750 0    50   ~ 0
Undervoltage Protection
$Comp
L Device:Q_PMOS_GDS Q?
U 1 1 60A0C7E1
P 9200 2300
AR Path="/60835C0E/60A0C7E1" Ref="Q?"  Part="1" 
AR Path="/60A0C7E1" Ref="Q?"  Part="1" 
AR Path="/609455AB/60A0C7E1" Ref="Q4"  Part="1" 
F 0 "Q4" V 9543 2300 50  0000 C CNN
F 1 "SIS413DN-T1-GE3" V 9452 2300 50  0000 C CNN
F 2 "Package_SO:Vishay_PowerPAK_1212-8_Single" H 9400 2400 50  0001 C CNN
F 3 "https://www.vishay.com/docs/63262/sis413dn.pdf" H 9200 2300 50  0001 C CNN
	1    9200 2300
	0    1    -1   0   
$EndComp
Wire Wire Line
	8550 2950 8550 3000
Connection ~ 8550 3000
Wire Wire Line
	8550 3000 8550 3050
Wire Wire Line
	8550 2200 8550 2300
Wire Wire Line
	8600 3000 8550 3000
Wire Wire Line
	8900 2600 8900 2700
Wire Wire Line
	8900 2200 8900 2300
Wire Wire Line
	8900 2700 9200 2700
Connection ~ 8900 2700
Wire Wire Line
	8900 2700 8900 2800
Wire Wire Line
	4000 2500 4000 2550
Wire Wire Line
	4200 2200 4300 2200
Wire Wire Line
	4300 2200 4300 2550
Wire Wire Line
	3700 2550 3700 2200
Text Notes 7150 3600 0    50   ~ 0
divider allows bring-up tuning of\ncut-out voltage. sims indicate\nnot needed for BZT52C8V2S-7-F
$Comp
L Device:D_Schottky D2
U 1 1 60B3B341
P 3550 6450
F 0 "D2" V 3504 6529 50  0000 L CNN
F 1 "CDSW4448-G" V 3595 6529 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 3550 6450 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/comchip-technology/CDSW4448-G/3308609" H 3550 6450 50  0001 C CNN
	1    3550 6450
	0    -1   1    0   
$EndComp
Text Notes 3850 1750 0    50   ~ 0
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
$Comp
L Device:LED D7
U 1 1 60BFEEFB
P 9900 4050
F 0 "D7" V 9938 4128 50  0000 L CNN
F 1 "150060RS75020" V 9847 4128 50  0000 L CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9900 4050 50  0001 C CNN
F 3 "https://www.we-online.de/katalog/datasheet/150060RS75000.pdf" H 9900 4050 50  0001 C CNN
	1    9900 4050
	0    1    -1   0   
$EndComp
$Comp
L Device:R R13
U 1 1 60BFF003
P 9900 3700
F 0 "R13" H 9970 3746 50  0000 L CNN
F 1 "1K" H 9970 3655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9830 3700 50  0001 C CNN
F 3 "~" H 9900 3700 50  0001 C CNN
	1    9900 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 5050 5850 5050
Connection ~ 4800 5050
Wire Wire Line
	2050 4000 2050 4050
$Comp
L power:GND #PWR022
U 1 1 60C4B8BF
P 2050 4050
F 0 "#PWR022" H 2050 3800 50  0001 C CNN
F 1 "GND" H 2055 3877 50  0000 C CNN
F 2 "" H 2050 4050 50  0001 C CNN
F 3 "" H 2050 4050 50  0001 C CNN
	1    2050 4050
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
L Device:C C9
U 1 1 60C5AE4E
P 5850 4500
F 0 "C9" H 5965 4546 50  0000 L CNN
F 1 "100n" H 5965 4455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5888 4350 50  0001 C CNN
F 3 "~" H 5850 4500 50  0001 C CNN
	1    5850 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 4350 5850 4300
Wire Wire Line
	5850 4300 5800 4300
Wire Wire Line
	3550 7150 3800 7150
Wire Wire Line
	3250 4700 3250 5050
Wire Wire Line
	5850 4650 5850 5050
Wire Wire Line
	4800 4700 4800 5050
Wire Wire Line
	8900 3200 8900 5050
Wire Wire Line
	8550 3350 8550 5050
Wire Wire Line
	9900 3850 9900 3900
Text Notes 9950 3000 0    50   ~ 0
Undervoltage-On Indicator
$Comp
L Device:CP1 C10
U 1 1 609A9AD8
P 6250 3550
F 0 "C10" H 6365 3596 50  0000 L CNN
F 1 "470u" H 6365 3505 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_16x17.5" H 6250 3550 50  0001 C CNN
F 3 "~" H 6250 3550 50  0001 C CNN
	1    6250 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 609B97B2
P 4000 6700
F 0 "C7" V 3748 6700 50  0000 C CNN
F 1 "10n" V 3839 6700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4038 6550 50  0001 C CNN
F 3 "~" H 4000 6700 50  0001 C CNN
	1    4000 6700
	0    1    1    0   
$EndComp
$Comp
L Device:C C6
U 1 1 609BFA9B
P 3800 6950
F 0 "C6" H 3850 7050 50  0000 L CNN
F 1 "10n" H 3800 6850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3838 6800 50  0001 C CNN
F 3 "~" H 3800 6950 50  0001 C CNN
	1    3800 6950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 609BFB29
P 4200 6950
F 0 "C8" H 4250 7050 50  0000 L CNN
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
L Device:C C11
U 1 1 609AA368
P 6700 3550
F 0 "C11" H 6815 3596 50  0000 L CNN
F 1 "100n" H 6815 3505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6738 3400 50  0001 C CNN
F 3 "~" H 6700 3550 50  0001 C CNN
	1    6700 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 3700 6250 5050
Wire Wire Line
	6700 3700 6700 5050
Wire Wire Line
	6700 5050 6250 5050
Wire Wire Line
	6250 2200 6250 3400
Wire Wire Line
	6250 2200 6700 2200
Text HLabel 4000 6200 1    50   Input ~ 0
BATT+
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
Text Notes 3700 5800 0    50   ~ 0
Motor Protections
Wire Wire Line
	6700 2200 6700 3400
Wire Wire Line
	9200 2700 9900 2700
Connection ~ 9200 2700
Wire Wire Line
	6250 5050 5850 5050
Connection ~ 6250 5050
Connection ~ 5850 5050
Wire Wire Line
	4300 2200 6250 2200
Connection ~ 4300 2200
Connection ~ 6250 2200
Wire Wire Line
	1500 2200 3700 2200
Connection ~ 3700 2200
Wire Wire Line
	1500 5050 3250 5050
Connection ~ 3250 5050
Connection ~ 8550 5050
Wire Wire Line
	8550 5050 8900 5050
Connection ~ 8900 5050
Wire Wire Line
	8900 5050 9900 5050
Wire Wire Line
	9000 2200 8900 2200
Connection ~ 8900 2200
Wire Wire Line
	8900 2200 8550 2200
Connection ~ 8550 2200
Text Notes 5750 2150 0    50   ~ 0
UV protections can be after hbridge\nb/c PWM/INA/INB are after UV protections,\nso they will go low and turn off hbridge
Wire Wire Line
	9900 5050 9900 4200
Wire Wire Line
	6700 2200 8550 2200
Connection ~ 6700 2200
Wire Wire Line
	6700 5050 8550 5050
Connection ~ 6700 5050
$Comp
L Device:Q_NMOS_GSD Q?
U 1 1 609BEA8B
P 8800 3000
AR Path="/60835C30/609BEA8B" Ref="Q?"  Part="1" 
AR Path="/609455AB/609BEA8B" Ref="Q3"  Part="1" 
F 0 "Q3" H 9006 3046 50  0000 L CNN
F 1 "SSM3K337R" H 9006 2955 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9000 3100 50  0001 C CNN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=14758&prodName=SSM3K337R" H 8800 3000 50  0001 C CNN
	1    8800 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 4300 2200 4300
$Comp
L power:PWR_FLAG #FLG03
U 1 1 60CB92AA
P 10550 2200
F 0 "#FLG03" H 10550 2275 50  0001 C CNN
F 1 "PWR_FLAG" H 10550 2374 50  0000 C CNN
F 2 "" H 10550 2200 50  0001 C CNN
F 3 "~" H 10550 2200 50  0001 C CNN
	1    10550 2200
	1    0    0    -1  
$EndComp
Connection ~ 10550 2200
Wire Wire Line
	10550 2200 10700 2200
Wire Wire Line
	9400 2200 10550 2200
Wire Wire Line
	4450 6250 4450 6300
Wire Wire Line
	4450 6600 4450 6700
$Comp
L saber:STL76DN4LF7AG Q1
U 2 1 609AF43E
P 4550 3800
F 0 "Q1" H 4750 3950 50  0000 L CNN
F 1 "STL76DN4LF7AG" H 4750 3850 50  0000 L CNN
F 2 "STL76DN4LF7AG:STL76DN4LF7AG" H 4750 3800 50  0001 C CNN
F 3 "${KIPRJMOD}/symbol-datasheets/stl76dn4lf7ag-1.pdf" H 4750 3800 50  0001 C CNN
	2    4550 3800
	-1   0    0    -1  
$EndComp
$Comp
L saber:STL76DN4LF7AG Q1
U 1 1 609AF58B
P 3500 3800
F 0 "Q1" H 3650 3700 50  0000 L CNN
F 1 "STL76DN4LF7AG" H 3650 3600 50  0000 L CNN
F 2 "STL76DN4LF7AG:STL76DN4LF7AG" H 3700 3800 50  0001 C CNN
F 3 "${KIPRJMOD}/symbol-datasheets/stl76dn4lf7ag-1.pdf" H 3700 3800 50  0001 C CNN
	1    3500 3800
	1    0    0    -1  
$EndComp
$Comp
L saber:VNHD7008AY U?
U 1 1 609467F4
P 1800 2950
AR Path="/60835C30/609467F4" Ref="U?"  Part="1" 
AR Path="/609455AB/609467F4" Ref="U2"  Part="1" 
F 0 "U2" H 5250 3400 50  0000 C CNN
F 1 "VNHD7008AY" H 5450 3300 50  0000 C CNN
F 2 "Package_SO:ST_PowerSSO-36_SlugDown_ThermalVias" H 1800 2950 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/vnhd7008ay.pdf" H 1800 2950 50  0001 C CNN
	1    1800 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 4000 2200 4000
Wire Wire Line
	2050 3600 2200 3600
$Comp
L Connector:TestPoint TP9
U 1 1 60A28ADA
P 8200 3000
F 0 "TP9" V 8395 3074 50  0000 C CNN
F 1 "TestPoint" V 8304 3074 50  0000 C CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x01_P1.00mm_Vertical" H 8400 3000 50  0001 C CNN
F 3 "~" H 8400 3000 50  0001 C CNN
	1    8200 3000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8200 3000 8550 3000
$Comp
L Connector:TestPoint TP10
U 1 1 60A2BC73
P 9900 2700
F 0 "TP10" H 9842 2820 50  0000 R CNN
F 1 "TestPoint" H 9842 2729 50  0000 R CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x01_P1.00mm_Vertical" H 10100 2700 50  0001 C CNN
F 3 "~" H 10100 2700 50  0001 C CNN
	1    9900 2700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9200 2500 9200 2700
Connection ~ 9900 2700
$Comp
L saber:STL120N4F6AG Q2
U 1 1 60998AA7
P 4000 2300
F 0 "Q2" V 4350 2250 50  0000 L CNN
F 1 "STL120N4F6AG" V 4250 2000 50  0000 L CNN
F 2 "STL120N4F6AG:STL120N4F6AG" H 4200 2400 50  0001 C CNN
F 3 "${KIPRJMOD}/symbol-datasheets/stl120n4f6ag.pdf" H 4000 2300 50  0001 C CNN
	1    4000 2300
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP7
U 1 1 609B37CF
P 3250 3850
F 0 "TP7" H 3192 3877 50  0000 R CNN
F 1 "TestPoint" H 3192 3968 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x01_P1.27mm_Vertical" H 3450 3850 50  0001 C CNN
F 3 "~" H 3450 3850 50  0001 C CNN
	1    3250 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	3200 3800 3250 3800
Wire Wire Line
	3250 3850 3250 3800
Connection ~ 3250 3800
Wire Wire Line
	3250 3800 3300 3800
Wire Wire Line
	3200 3550 3600 3550
Wire Wire Line
	3600 3600 3600 3550
Connection ~ 3600 3550
Wire Wire Line
	3600 3550 3650 3550
Wire Wire Line
	3250 5050 3600 5050
Wire Wire Line
	3600 4000 3600 4050
Connection ~ 3600 5050
Wire Wire Line
	3600 5050 4450 5050
Wire Wire Line
	3200 4050 3600 4050
Connection ~ 3600 4050
Wire Wire Line
	3600 4050 3600 5050
Connection ~ 4450 5050
Wire Wire Line
	4450 5050 4800 5050
Wire Wire Line
	4450 4000 4450 4050
Wire Wire Line
	4450 4050 4850 4050
Connection ~ 4450 4050
Wire Wire Line
	4450 4050 4450 5050
Wire Wire Line
	4400 3550 4450 3550
Wire Wire Line
	4450 3550 4450 3600
Connection ~ 4450 3550
Wire Wire Line
	4450 3550 4850 3550
$Comp
L Connector:TestPoint TP8
U 1 1 609CF496
P 4800 3750
F 0 "TP8" H 4742 3870 50  0000 R CNN
F 1 "TestPoint" H 4742 3779 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x01_P1.27mm_Vertical" H 5000 3750 50  0001 C CNN
F 3 "~" H 5000 3750 50  0001 C CNN
	1    4800 3750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4750 3800 4800 3800
Wire Wire Line
	4800 3750 4800 3800
Connection ~ 4800 3800
Wire Wire Line
	4800 3800 4850 3800
$Comp
L Device:D_Schottky D3
U 1 1 60EDFB2E
P 3550 6950
F 0 "D3" V 3504 7029 50  0000 L CNN
F 1 "CDSW4448-G" V 3595 7029 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 3550 6950 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/comchip-technology/CDSW4448-G/3308609" H 3550 6950 50  0001 C CNN
	1    3550 6950
	0    -1   1    0   
$EndComp
$Comp
L Device:D_Schottky D5
U 1 1 60EE22CC
P 4450 6950
F 0 "D5" V 4404 7029 50  0000 L CNN
F 1 "CDSW4448-G" V 4495 7029 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 4450 6950 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/comchip-technology/CDSW4448-G/3308609" H 4450 6950 50  0001 C CNN
	1    4450 6950
	0    1    1    0   
$EndComp
$Comp
L Device:D_Schottky D4
U 1 1 60EE71EA
P 4450 6450
F 0 "D4" V 4404 6529 50  0000 L CNN
F 1 "CDSW4448-G" V 4495 6529 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 4450 6450 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/comchip-technology/CDSW4448-G/3308609" H 4450 6450 50  0001 C CNN
	1    4450 6450
	0    1    1    0   
$EndComp
Wire Wire Line
	9900 2700 9900 3550
$EndSCHEMATC
