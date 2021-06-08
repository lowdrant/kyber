EESchema Schematic File Version 4
LIBS:KyberBoard-cache
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
Text HLabel 3550 3550 2    50   Output ~ 0
MOT+
Text HLabel 4300 3550 0    50   Output ~ 0
MOT-
Text HLabel 2050 2850 0    50   Input ~ 0
PWM_MTR
Text HLabel 2050 3050 0    50   Input ~ 0
INA
Text HLabel 2050 3250 0    50   Input ~ 0
INB
Wire Wire Line
	2050 2850 2100 2850
Wire Wire Line
	2050 3050 2100 3050
Wire Wire Line
	2050 3250 2100 3250
$Comp
L Device:R R?
U 1 1 60946834
P 3150 4550
AR Path="/60835C30/60946834" Ref="R?"  Part="1" 
AR Path="/609455AB/60946834" Ref="R12"  Part="1" 
F 0 "R12" H 3220 4596 50  0000 L CNN
F 1 "10k" H 3220 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3080 4550 50  0001 C CNN
F 3 "~" H 3150 4550 50  0001 C CNN
	1    3150 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 4150 3100 4150
$Comp
L Device:R R?
U 1 1 6094683C
P 4700 4550
AR Path="/60835C30/6094683C" Ref="R?"  Part="1" 
AR Path="/609455AB/6094683C" Ref="R13"  Part="1" 
F 0 "R13" H 4770 4596 50  0000 L CNN
F 1 "10k" H 4770 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4630 4550 50  0001 C CNN
F 3 "~" H 4700 4550 50  0001 C CNN
	1    4700 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4150 4750 4150
Text HLabel 2050 4300 0    50   Output ~ 0
imtr
Wire Wire Line
	2050 3800 2100 3800
$Comp
L power:+3V3 #PWR?
U 1 1 6094684E
P 1950 3550
AR Path="/60835C30/6094684E" Ref="#PWR?"  Part="1" 
AR Path="/609455AB/6094684E" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 1950 3400 50  0001 C CNN
F 1 "+3V3" H 1965 3723 50  0000 C CNN
F 2 "" H 1950 3550 50  0001 C CNN
F 3 "" H 1950 3550 50  0001 C CNN
	1    1950 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 3550 1950 3600
Text HLabel 2050 3800 0    50   Input ~ 0
INA
Text Notes 1150 4900 0    50   ~ 0
Prepared to have separate logic return if needed\n\nAlways current monitoring mode \nwhen SEL0=INA,SEL1=0,MS_EN=1\n\n(datasheet p.22,table12)
Wire Wire Line
	3700 2200 3600 2200
Wire Wire Line
	3150 4150 3150 4400
Wire Wire Line
	4700 4150 4700 4400
Text Notes 2650 2450 0    50   ~ 0
Rds(on) < 16/3 mOhms\n(datasheet p.30, sec.7)
Text HLabel 1400 5050 0    118  Input ~ 0
BATT-
Text HLabel 1400 2200 0    118  Input ~ 0
BATT+
Text HLabel 10600 2200 2    118  Output ~ 0
Vs
$Comp
L Device:D_Zener D?
U 1 1 60A0C7BB
P 8450 2450
AR Path="/60835C0E/60A0C7BB" Ref="D?"  Part="1" 
AR Path="/60A0C7BB" Ref="D?"  Part="1" 
AR Path="/609455AB/60A0C7BB" Ref="D2"  Part="1" 
F 0 "D2" V 8404 2529 50  0000 L CNN
F 1 "BZT52C8V2S-7-F" V 8495 2529 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 8450 2450 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Diodes%20PDFs/BZT52C2V0S-BZT52C39S.pdf" H 8450 2450 50  0001 C CNN
	1    8450 2450
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 60A0C7C9
P 8800 2450
AR Path="/60835C0E/60A0C7C9" Ref="R?"  Part="1" 
AR Path="/60A0C7C9" Ref="R?"  Part="1" 
AR Path="/609455AB/60A0C7C9" Ref="R8"  Part="1" 
F 0 "R8" H 8870 2496 50  0000 L CNN
F 1 "10k" H 8870 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8730 2450 50  0001 C CNN
F 3 "~" H 8800 2450 50  0001 C CNN
	1    8800 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60A0C7D0
P 8450 2800
AR Path="/60835C0E/60A0C7D0" Ref="R?"  Part="1" 
AR Path="/60A0C7D0" Ref="R?"  Part="1" 
AR Path="/609455AB/60A0C7D0" Ref="R9"  Part="1" 
F 0 "R9" H 8381 2754 50  0000 R CNN
F 1 "0" H 8381 2845 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8380 2800 50  0001 C CNN
F 3 "~" H 8450 2800 50  0001 C CNN
	1    8450 2800
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 60A0C7D7
P 8450 3200
AR Path="/60835C0E/60A0C7D7" Ref="R?"  Part="1" 
AR Path="/60A0C7D7" Ref="R?"  Part="1" 
AR Path="/609455AB/60A0C7D7" Ref="R10"  Part="1" 
F 0 "R10" H 8381 3154 50  0000 R CNN
F 1 "1k" H 8381 3245 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8380 3200 50  0001 C CNN
F 3 "~" H 8450 3200 50  0001 C CNN
	1    8450 3200
	1    0    0    1   
$EndComp
Wire Wire Line
	8450 2600 8450 2650
Text Notes 8500 1750 0    50   ~ 0
Undervoltage Protection
Wire Wire Line
	8450 2950 8450 3000
Connection ~ 8450 3000
Wire Wire Line
	8450 3000 8450 3050
Wire Wire Line
	8450 2200 8450 2300
Wire Wire Line
	8500 3000 8450 3000
Wire Wire Line
	8800 2600 8800 2700
Wire Wire Line
	8800 2200 8800 2300
Wire Wire Line
	8800 2700 9100 2700
Connection ~ 8800 2700
Wire Wire Line
	8800 2700 8800 2800
Wire Wire Line
	3900 2500 3900 2550
Wire Wire Line
	4200 2200 4200 2550
Wire Wire Line
	3600 2550 3600 2200
Text Notes 7050 3600 0    50   ~ 0
divider allows bring-up tuning of\ncut-out voltage. sims indicate\nnot needed for BZT52C8V2S-7-F
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
Text Notes 3750 1750 0    50   ~ 0
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
L Device:LED D3
U 1 1 60BFEEFB
P 9500 3950
F 0 "D3" V 9538 4028 50  0000 L CNN
F 1 "150060RS75020" V 9447 4028 50  0000 L CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9500 3950 50  0001 C CNN
F 3 "https://www.we-online.de/katalog/datasheet/150060RS75000.pdf" H 9500 3950 50  0001 C CNN
	1    9500 3950
	0    1    -1   0   
$EndComp
$Comp
L Device:R R11
U 1 1 60BFF003
P 9500 3550
F 0 "R11" H 9570 3596 50  0000 L CNN
F 1 "0" H 9570 3505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9430 3550 50  0001 C CNN
F 3 "~" H 9500 3550 50  0001 C CNN
	1    9500 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 5050 5750 5050
Connection ~ 4700 5050
Wire Wire Line
	1950 4000 1950 4050
$Comp
L power:GND #PWR022
U 1 1 60C4B8BF
P 1950 4050
F 0 "#PWR022" H 1950 3800 50  0001 C CNN
F 1 "GND" H 1955 3877 50  0000 C CNN
F 2 "" H 1950 4050 50  0001 C CNN
F 3 "" H 1950 4050 50  0001 C CNN
	1    1950 4050
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
P 5750 4500
F 0 "C8" H 5865 4546 50  0000 L CNN
F 1 "100n" H 5865 4455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5788 4350 50  0001 C CNN
F 3 "~" H 5750 4500 50  0001 C CNN
	1    5750 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 4350 5750 4300
Wire Wire Line
	5750 4300 5700 4300
Wire Wire Line
	3550 7150 3800 7150
Wire Wire Line
	3150 4700 3150 5050
Wire Wire Line
	5750 4650 5750 5050
Wire Wire Line
	4700 4700 4700 5050
Wire Wire Line
	8800 3200 8800 5050
Wire Wire Line
	8450 3350 8450 5050
Text Notes 9650 3200 0    50   ~ 0
Undervoltage-On Indicator
$Comp
L Device:CP1 C6
U 1 1 609A9AD8
P 6150 3550
F 0 "C6" H 6265 3596 50  0000 L CNN
F 1 "200u" H 6265 3505 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_8x10.5" H 6150 3550 50  0001 C CNN
F 3 "~" H 6150 3550 50  0001 C CNN
	1    6150 3550
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
P 6600 3550
F 0 "C7" H 6715 3596 50  0000 L CNN
F 1 "100n" H 6715 3505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6638 3400 50  0001 C CNN
F 3 "~" H 6600 3550 50  0001 C CNN
	1    6600 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 3700 6150 5050
Wire Wire Line
	6600 3700 6600 5050
Wire Wire Line
	6600 5050 6150 5050
Wire Wire Line
	6150 2200 6150 3400
Wire Wire Line
	6150 2200 6600 2200
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
	6600 2200 6600 3400
Wire Wire Line
	6150 5050 5750 5050
Connection ~ 6150 5050
Connection ~ 5750 5050
Wire Wire Line
	4200 2200 6150 2200
Connection ~ 6150 2200
Wire Wire Line
	1400 2200 3600 2200
Connection ~ 3600 2200
Wire Wire Line
	1400 5050 3150 5050
Connection ~ 3150 5050
Connection ~ 8450 5050
Wire Wire Line
	8450 5050 8800 5050
Wire Wire Line
	8900 2200 8800 2200
Connection ~ 8800 2200
Wire Wire Line
	8800 2200 8450 2200
Connection ~ 8450 2200
Text Notes 5650 2150 0    50   ~ 0
UV protections can be after hbridge\nb/c PWM/INA/INB are after UV protections,\nso they will go low and turn off hbridge
Wire Wire Line
	6600 2200 8450 2200
Connection ~ 6600 2200
Wire Wire Line
	6600 5050 8450 5050
Connection ~ 6600 5050
$Comp
L Device:Q_NMOS_GSD Q?
U 1 1 609BEA8B
P 8700 3000
AR Path="/60835C30/609BEA8B" Ref="Q?"  Part="1" 
AR Path="/609455AB/609BEA8B" Ref="Q3"  Part="1" 
F 0 "Q3" H 8906 3046 50  0000 L CNN
F 1 "SSM3K337R" H 8906 2955 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8900 3100 50  0001 C CNN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=14758&prodName=SSM3K337R" H 8700 3000 50  0001 C CNN
	1    8700 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 4300 2100 4300
$Comp
L power:PWR_FLAG #FLG03
U 1 1 60CB92AA
P 10450 2200
F 0 "#FLG03" H 10450 2275 50  0001 C CNN
F 1 "PWR_FLAG" H 10450 2374 50  0000 C CNN
F 2 "" H 10450 2200 50  0001 C CNN
F 3 "~" H 10450 2200 50  0001 C CNN
	1    10450 2200
	1    0    0    -1  
$EndComp
Connection ~ 10450 2200
Wire Wire Line
	10450 2200 10600 2200
Wire Wire Line
	9300 2200 10450 2200
Wire Wire Line
	4450 6250 4450 6300
Wire Wire Line
	4450 6600 4450 6700
$Comp
L KyberBoard:VNHD7008AY U?
U 1 1 609467F4
P 1700 2950
AR Path="/60835C30/609467F4" Ref="U?"  Part="1" 
AR Path="/609455AB/609467F4" Ref="U2"  Part="1" 
F 0 "U2" H 5150 3400 50  0000 C CNN
F 1 "VNHD7008AY" H 5350 3300 50  0000 C CNN
F 2 "Package_SO:ST_PowerSSO-36_SlugDown_ThermalVias" H 1700 2950 50  0001 C CNN
F 3 "${KIPRJMOD}/symbol-datasheets/vnhd7008ay.pdf" H 1700 2950 50  0001 C CNN
	1    1700 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 4000 2100 4000
Wire Wire Line
	1950 3600 2100 3600
Wire Wire Line
	9100 2500 9100 2700
$Comp
L KyberBoard:STL120N4F6AG Q1
U 1 1 60998AA7
P 3900 2300
F 0 "Q1" V 4250 2250 50  0000 L CNN
F 1 "STL120N4F6AG" V 4150 2000 50  0000 L CNN
F 2 "STL120N4F6AG:STL120N4F6AG" H 4100 2400 50  0001 C CNN
F 3 "${KIPRJMOD}/symbol-datasheets/stl120n4f6ag.pdf" H 3900 2300 50  0001 C CNN
	1    3900 2300
	0    1    -1   0   
$EndComp
Wire Wire Line
	3100 3550 3500 3550
Wire Wire Line
	3500 3600 3500 3550
Connection ~ 3500 3550
Wire Wire Line
	3500 3550 3550 3550
Wire Wire Line
	3150 5050 3500 5050
Wire Wire Line
	3500 4000 3500 4050
Connection ~ 3500 5050
Wire Wire Line
	3500 5050 4350 5050
Wire Wire Line
	3100 4050 3500 4050
Connection ~ 3500 4050
Wire Wire Line
	3500 4050 3500 5050
Connection ~ 4350 5050
Wire Wire Line
	4350 5050 4700 5050
Wire Wire Line
	4350 4000 4350 4050
Wire Wire Line
	4350 4050 4750 4050
Connection ~ 4350 4050
Wire Wire Line
	4350 4050 4350 5050
Wire Wire Line
	4300 3550 4350 3550
Wire Wire Line
	4350 3550 4350 3600
Connection ~ 4350 3550
Wire Wire Line
	4350 3550 4750 3550
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
Text Label 4800 2200 0    50   ~ 0
VCC
$Comp
L KyberBoard:SIS413DN-T1-GE3 Q2
U 1 1 60B5EB73
P 9100 2300
F 0 "Q2" V 9443 2300 50  0000 C CNN
F 1 "SIS413DN-T1-GE3" V 9352 2300 50  0000 C CNN
F 2 "Package_SO:Vishay_PowerPAK_1212-8_Single" H 9300 2400 50  0001 C CNN
F 3 "https://www.vishay.com/docs/63262/sis413dn.pdf" H 9100 2300 50  0001 C CNN
	1    9100 2300
	0    1    -1   0   
$EndComp
Wire Wire Line
	9500 2700 9100 2700
Connection ~ 9100 2700
Text Label 4000 6200 1    50   ~ 0
VCC
Wire Wire Line
	3100 3800 3200 3800
Wire Wire Line
	4650 3800 4750 3800
$Comp
L KyberBoard:STL76DN4LF7AG Q4
U 1 1 60B389D1
P 3400 3800
F 0 "Q4" H 3600 3750 50  0000 L CNN
F 1 "STL76DN4LF7AG" H 3600 3650 50  0000 L CNN
F 2 "STL76DN4LF7AG:STL76DN4LF7AG" H 3600 3800 50  0001 C CNN
F 3 "${KIPRJMOD}/symbol-datasheets/stl76dn4lf7ag-1.pdf" H 3600 3800 50  0001 C CNN
	1    3400 3800
	1    0    0    -1  
$EndComp
$Comp
L KyberBoard:STL76DN4LF7AG Q4
U 2 1 60B38B38
P 4450 3800
F 0 "Q4" H 4650 3950 50  0000 L CNN
F 1 "STL76DN4LF7AG" H 4650 3850 50  0000 L CNN
F 2 "STL76DN4LF7AG:STL76DN4LF7AG" H 4650 3800 50  0001 C CNN
F 3 "${KIPRJMOD}/symbol-datasheets/stl76dn4lf7ag-1.pdf" H 4650 3800 50  0001 C CNN
	2    4450 3800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4200 2200 4100 2200
Connection ~ 4200 2200
Wire Wire Line
	9500 3700 9500 3800
Wire Wire Line
	8800 5050 9500 5050
Wire Wire Line
	9500 5050 9500 4100
Connection ~ 8800 5050
Wire Wire Line
	9500 2700 9500 3400
Text Notes 9700 3800 0    50   ~ 0
PMOS pullup does current limiting\nUse 0-ohm for layout aesthetics
$EndSCHEMATC
