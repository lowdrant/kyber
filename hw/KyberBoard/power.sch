EESchema Schematic File Version 4
LIBS:KyberBoard-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 6
Title "KyberBoard"
Date ""
Rev "1"
Comp ""
Comment1 "2021"
Comment2 "Marion Anderson"
Comment3 ""
Comment4 "Power Regulation"
$EndDescr
Wire Wire Line
	9700 3650 9700 3700
$Comp
L Device:LED D?
U 1 1 60A05B02
P 9700 3850
AR Path="/60835C0E/60A05B02" Ref="D?"  Part="1" 
AR Path="/60A05B02" Ref="D?"  Part="1" 
AR Path="/60A0541C/60A05B02" Ref="D10"  Part="1" 
F 0 "D10" V 9738 3733 50  0000 R CNN
F 1 "150060AS75000" V 9647 3733 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9700 3850 50  0001 C CNN
F 3 "https://www.we-online.com/catalog/datasheet/150060AS75000.pdf" H 9700 3850 50  0001 C CNN
	1    9700 3850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 60A05B09
P 9700 3500
AR Path="/60835C0E/60A05B09" Ref="R?"  Part="1" 
AR Path="/60A05B09" Ref="R?"  Part="1" 
AR Path="/60A0541C/60A05B09" Ref="R18"  Part="1" 
F 0 "R18" H 9770 3546 50  0000 L CNN
F 1 "10k" H 9770 3455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9630 3500 50  0001 C CNN
F 3 "~" H 9700 3500 50  0001 C CNN
	1    9700 3500
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AZ1117-3.3 U?
U 1 1 60A12C8F
P 7650 3900
AR Path="/60835C0E/60A12C8F" Ref="U?"  Part="1" 
AR Path="/60A12C8F" Ref="U?"  Part="1" 
AR Path="/60A0541C/60A12C8F" Ref="U3"  Part="1" 
F 0 "U3" H 7650 4142 50  0000 C CNN
F 1 "AZ1117IH-3.3TRG1" H 7650 4051 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 7650 4150 50  0001 C CIN
F 3 "https://www.diodes.com/assets/Datasheets/AZ1117I.pdf" H 7650 3900 50  0001 C CNN
	1    7650 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60A12C96
P 7200 4100
AR Path="/60835C0E/60A12C96" Ref="C?"  Part="1" 
AR Path="/60A12C96" Ref="C?"  Part="1" 
AR Path="/60A0541C/60A12C96" Ref="C12"  Part="1" 
F 0 "C12" H 7085 4054 50  0000 R CNN
F 1 "10u" H 7085 4145 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7238 3950 50  0001 C CNN
F 3 "~" H 7200 4100 50  0001 C CNN
	1    7200 4100
	1    0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 60A12C9D
P 8100 4100
AR Path="/60835C0E/60A12C9D" Ref="C?"  Part="1" 
AR Path="/60A12C9D" Ref="C?"  Part="1" 
AR Path="/60A0541C/60A12C9D" Ref="C13"  Part="1" 
F 0 "C13" H 7985 4146 50  0000 R CNN
F 1 "22u" H 7985 4055 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8138 3950 50  0001 C CNN
F 3 "~" H 8100 4100 50  0001 C CNN
	1    8100 4100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7650 4200 7650 4300
Connection ~ 7650 4300
$Comp
L Device:R R?
U 1 1 60A12CA7
P 8500 4450
AR Path="/60835C0E/60A12CA7" Ref="R?"  Part="1" 
AR Path="/60A12CA7" Ref="R?"  Part="1" 
AR Path="/60A0541C/60A12CA7" Ref="R19"  Part="1" 
F 0 "R19" H 8570 4496 50  0000 L CNN
F 1 "1k" H 8570 4405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8430 4450 50  0001 C CNN
F 3 "~" H 8500 4450 50  0001 C CNN
	1    8500 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 4600 8500 4650
Connection ~ 7200 3900
Wire Wire Line
	7200 3950 7200 3900
Wire Wire Line
	7200 3900 7350 3900
Wire Wire Line
	7200 4250 7200 4300
Wire Wire Line
	7200 4300 7650 4300
Wire Wire Line
	8100 4300 8100 4250
Wire Wire Line
	8100 3900 8100 3950
Text Notes 7500 1900 0    50   ~ 0
3V3 Reg
$Comp
L Device:LED D?
U 1 1 60A12CDB
P 8500 4800
AR Path="/60835C0E/60A12CDB" Ref="D?"  Part="1" 
AR Path="/60A12CDB" Ref="D?"  Part="1" 
AR Path="/60A0541C/60A12CDB" Ref="D11"  Part="1" 
F 0 "D11" V 8538 4683 50  0000 R CNN
F 1 "150060AS75000" V 8447 4683 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8500 4800 50  0001 C CNN
F 3 "https://www.we-online.com/catalog/datasheet/150060AS75000.pdf" H 8500 4800 50  0001 C CNN
	1    8500 4800
	0    -1   -1   0   
$EndComp
$Comp
L pspice:INDUCTOR L?
U 1 1 60A16B37
P 5800 2400
AR Path="/60835C0E/60A16B37" Ref="L?"  Part="1" 
AR Path="/60A16B37" Ref="L?"  Part="1" 
AR Path="/60A0541C/60A16B37" Ref="L1"  Part="1" 
F 0 "L1" H 5800 2615 50  0000 C CNN
F 1 "CIGT201210UHR47MNE" H 5800 2524 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5800 2400 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/samsung-electro-mechanics/CIGT201210UHR47MNE/7041214" H 5800 2400 50  0001 C CNN
	1    5800 2400
	-1   0    0    -1  
$EndComp
Text Notes 5450 1900 0    50   ~ 0
Surge Suppression
Text HLabel 1250 2400 0    118  Input ~ 0
Vs
Text HLabel 1550 5400 0    118  Input ~ 0
GNDPWR
Text HLabel 10250 2400 2    118  Output ~ 0
12C
Text HLabel 8850 3900 2    118  Output ~ 0
3V3
Wire Wire Line
	7200 2400 7200 3900
Wire Wire Line
	7950 3900 8100 3900
Wire Wire Line
	7650 4300 8100 4300
Text HLabel 10250 5400 2    118  Output ~ 0
GND
Wire Wire Line
	7650 5400 8500 5400
Wire Wire Line
	7650 4300 7650 5400
Wire Wire Line
	8500 4950 8500 5400
$Comp
L Device:D_Zener D?
U 1 1 60C2EEC7
P 2100 2650
AR Path="/60835C0E/60C2EEC7" Ref="D?"  Part="1" 
AR Path="/60C2EEC7" Ref="D?"  Part="1" 
AR Path="/609455AB/60C2EEC7" Ref="D?"  Part="1" 
AR Path="/60A0541C/60C2EEC7" Ref="D2"  Part="1" 
F 0 "D2" V 2054 2729 50  0000 L CNN
F 1 "BZT52C8V2S-7-F" V 2145 2729 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 2100 2650 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Diodes%20PDFs/BZT52C2V0S-BZT52C39S.pdf" H 2100 2650 50  0001 C CNN
	1    2100 2650
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 60C2EECE
P 2450 2650
AR Path="/60835C0E/60C2EECE" Ref="R?"  Part="1" 
AR Path="/60C2EECE" Ref="R?"  Part="1" 
AR Path="/609455AB/60C2EECE" Ref="R?"  Part="1" 
AR Path="/60A0541C/60C2EECE" Ref="R8"  Part="1" 
F 0 "R8" H 2520 2696 50  0000 L CNN
F 1 "10k" H 2520 2605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2380 2650 50  0001 C CNN
F 3 "~" H 2450 2650 50  0001 C CNN
	1    2450 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60C2EED5
P 2100 3000
AR Path="/60835C0E/60C2EED5" Ref="R?"  Part="1" 
AR Path="/60C2EED5" Ref="R?"  Part="1" 
AR Path="/609455AB/60C2EED5" Ref="R?"  Part="1" 
AR Path="/60A0541C/60C2EED5" Ref="R9"  Part="1" 
F 0 "R9" H 2031 2954 50  0000 R CNN
F 1 "0" H 2031 3045 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2030 3000 50  0001 C CNN
F 3 "~" H 2100 3000 50  0001 C CNN
	1    2100 3000
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 60C2EEDC
P 2100 3400
AR Path="/60835C0E/60C2EEDC" Ref="R?"  Part="1" 
AR Path="/60C2EEDC" Ref="R?"  Part="1" 
AR Path="/609455AB/60C2EEDC" Ref="R?"  Part="1" 
AR Path="/60A0541C/60C2EEDC" Ref="R10"  Part="1" 
F 0 "R10" H 2031 3354 50  0000 R CNN
F 1 "1k" H 2031 3445 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2030 3400 50  0001 C CNN
F 3 "~" H 2100 3400 50  0001 C CNN
	1    2100 3400
	1    0    0    1   
$EndComp
Wire Wire Line
	2100 2800 2100 2850
Wire Wire Line
	2100 3150 2100 3200
Connection ~ 2100 3200
Wire Wire Line
	2100 3200 2100 3250
Wire Wire Line
	2100 2400 2100 2500
Wire Wire Line
	2150 3200 2100 3200
Wire Wire Line
	2450 2800 2450 2900
Wire Wire Line
	2450 2400 2450 2500
Wire Wire Line
	2450 2900 2750 2900
Connection ~ 2450 2900
Wire Wire Line
	2450 2900 2450 3000
Text Notes 1650 5800 0    50   ~ 0
divider allows bring-up tuning of\ncut-out voltage. sims indicate\nnot needed for BZT52C8V2S-7-F
$Comp
L Device:R R?
U 1 1 60C2EEF6
P 4400 3450
AR Path="/609455AB/60C2EEF6" Ref="R?"  Part="1" 
AR Path="/60A0541C/60C2EEF6" Ref="R11"  Part="1" 
F 0 "R11" H 4470 3496 50  0000 L CNN
F 1 "0" H 4470 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4330 3450 50  0001 C CNN
F 3 "~" H 4400 3450 50  0001 C CNN
	1    4400 3450
	1    0    0    -1  
$EndComp
Text Notes 3900 1900 0    50   ~ 0
Undervoltage-On Indicator
Wire Wire Line
	2100 5400 2450 5400
Wire Wire Line
	2550 2400 2450 2400
Connection ~ 2450 2400
Wire Wire Line
	2450 2400 2100 2400
$Comp
L Device:Q_NMOS_GSD Q?
U 1 1 60C2EF08
P 2350 3200
AR Path="/60835C30/60C2EF08" Ref="Q?"  Part="1" 
AR Path="/609455AB/60C2EF08" Ref="Q?"  Part="1" 
AR Path="/60A0541C/60C2EF08" Ref="Q3"  Part="1" 
F 0 "Q3" H 2556 3246 50  0000 L CNN
F 1 "SSM3K337R" H 2556 3155 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2550 3300 50  0001 C CNN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=14758&prodName=SSM3K337R" H 2350 3200 50  0001 C CNN
	1    2350 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2700 2750 2900
$Comp
L KyberBoard:SIS413DN-T1-GE3 Q?
U 1 1 60C2EF11
P 2750 2500
AR Path="/609455AB/60C2EF11" Ref="Q?"  Part="1" 
AR Path="/60A0541C/60C2EF11" Ref="Q2"  Part="1" 
F 0 "Q2" V 3093 2500 50  0000 C CNN
F 1 "SIS413DN-T1-GE3" V 3002 2500 50  0000 C CNN
F 2 "Package_SO:Vishay_PowerPAK_1212-8_Single" H 2950 2600 50  0001 C CNN
F 3 "https://www.vishay.com/docs/63262/sis413dn.pdf" H 2750 2500 50  0001 C CNN
	1    2750 2500
	0    1    -1   0   
$EndComp
Wire Wire Line
	4400 3600 4400 3700
Text Notes 3750 5800 0    50   ~ 0
PMOS pullup does current limiting\nUse 0-ohm for layout aesthetics
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 60C4D9CC
P 9700 2350
F 0 "#FLG0101" H 9700 2425 50  0001 C CNN
F 1 "PWR_FLAG" H 9700 2524 50  0000 C CNN
F 2 "" H 9700 2350 50  0001 C CNN
F 3 "~" H 9700 2350 50  0001 C CNN
	1    9700 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3400 2450 5400
Wire Wire Line
	2100 3550 2100 5400
Text HLabel 10250 2100 2    118  Output ~ 0
12V
Text Notes 2050 1900 0    50   ~ 0
Undervoltage Protection
Wire Wire Line
	4400 2400 4400 3300
Connection ~ 7650 5400
Wire Wire Line
	2950 2400 4400 2400
Wire Wire Line
	8500 4300 8500 3900
$Comp
L Device:LED D?
U 1 1 60C813CE
P 4400 3850
AR Path="/60835C0E/60C813CE" Ref="D?"  Part="1" 
AR Path="/60C813CE" Ref="D?"  Part="1" 
AR Path="/60A0541C/60C813CE" Ref="D3"  Part="1" 
F 0 "D3" V 4438 3733 50  0000 R CNN
F 1 "150060RS75020" V 4347 3733 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4400 3850 50  0001 C CNN
F 3 "https://www.we-online.com/catalog/datasheet/150060AS75000.pdf" H 4400 3850 50  0001 C CNN
	1    4400 3850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4400 4000 4400 5400
Connection ~ 4400 5400
Wire Wire Line
	4400 5400 7650 5400
Wire Wire Line
	2450 5400 4400 5400
Connection ~ 2450 5400
Wire Wire Line
	6050 2400 7200 2400
Connection ~ 7200 2400
Wire Wire Line
	7200 2400 9700 2400
Wire Wire Line
	4400 2400 5550 2400
Connection ~ 4400 2400
Wire Wire Line
	4400 2100 4400 2400
Wire Wire Line
	9700 4000 9700 5400
Connection ~ 9700 5400
Wire Wire Line
	9700 5400 10250 5400
Connection ~ 9700 2400
Wire Wire Line
	9700 2400 10250 2400
Wire Wire Line
	9700 2400 9700 3350
Connection ~ 8500 3900
Wire Wire Line
	9700 2350 9700 2400
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 60C921EF
P 9700 2050
F 0 "#FLG0102" H 9700 2125 50  0001 C CNN
F 1 "PWR_FLAG" H 9700 2224 50  0000 C CNN
F 2 "" H 9700 2050 50  0001 C CNN
F 3 "~" H 9700 2050 50  0001 C CNN
	1    9700 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 2050 9700 2100
Wire Wire Line
	9700 2100 10250 2100
Wire Wire Line
	9700 2100 4400 2100
Connection ~ 9700 2100
Connection ~ 8500 5400
Wire Wire Line
	8500 5400 9700 5400
Wire Wire Line
	8500 3900 8100 3900
Connection ~ 8100 3900
Wire Wire Line
	8500 3900 8850 3900
Wire Wire Line
	2100 2400 1250 2400
Connection ~ 2100 2400
Wire Wire Line
	2100 5400 1550 5400
Connection ~ 2100 5400
$EndSCHEMATC
