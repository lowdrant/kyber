EESchema Schematic File Version 4
LIBS:saber-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 6700 3550 2    50   Output ~ 0
MOT+
Text HLabel 7450 3550 0    50   Output ~ 0
MOT-
Text HLabel 5200 2850 0    50   Input ~ 0
PWM_MTR
Text HLabel 5200 3050 0    50   Input ~ 0
INA
Text HLabel 5200 3250 0    50   Input ~ 0
INB
Wire Wire Line
	6300 3800 6250 3800
Wire Wire Line
	6250 3550 6600 3550
Wire Wire Line
	6600 3550 6600 3600
Wire Wire Line
	6250 4050 6600 4050
Wire Wire Line
	6600 4050 6600 4000
Wire Wire Line
	5200 2850 5250 2850
Wire Wire Line
	5200 3050 5250 3050
Wire Wire Line
	5200 3250 5250 3250
Connection ~ 6600 3550
Wire Wire Line
	7550 3550 7550 3600
Wire Wire Line
	7550 4000 7550 4050
Wire Wire Line
	7550 4050 7900 4050
Wire Wire Line
	7850 3800 7900 3800
$Comp
L Device:R R?
U 1 1 6094682D
P 5150 4550
AR Path="/60835C30/6094682D" Ref="R?"  Part="1" 
AR Path="/609455AB/6094682D" Ref="R17"  Part="1" 
F 0 "R17" H 5220 4596 50  0000 L CNN
F 1 "1k5" H 5220 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5080 4550 50  0001 C CNN
F 3 "~" H 5150 4550 50  0001 C CNN
	1    5150 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60946834
P 6300 4550
AR Path="/60835C30/60946834" Ref="R?"  Part="1" 
AR Path="/609455AB/60946834" Ref="R18"  Part="1" 
F 0 "R18" H 6370 4596 50  0000 L CNN
F 1 "10k" H 6370 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6230 4550 50  0001 C CNN
F 3 "~" H 6300 4550 50  0001 C CNN
	1    6300 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 4150 6250 4150
$Comp
L Device:R R?
U 1 1 6094683C
P 7850 4550
AR Path="/60835C30/6094683C" Ref="R?"  Part="1" 
AR Path="/609455AB/6094683C" Ref="R19"  Part="1" 
F 0 "R19" H 7920 4596 50  0000 L CNN
F 1 "10k" H 7920 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7780 4550 50  0001 C CNN
F 3 "~" H 7850 4550 50  0001 C CNN
	1    7850 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 4150 7900 4150
Text HLabel 5050 4300 0    50   Output ~ 0
imtr
$Comp
L Device:R R?
U 1 1 60946845
P 5050 3600
AR Path="/60835C30/60946845" Ref="R?"  Part="1" 
AR Path="/609455AB/60946845" Ref="R15"  Part="1" 
F 0 "R15" V 5000 3400 50  0000 C CNN
F 1 "1k" V 5000 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4980 3600 50  0001 C CNN
F 3 "~" H 5050 3600 50  0001 C CNN
	1    5050 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 3800 5250 3800
Wire Wire Line
	5200 3600 5250 3600
$Comp
L power:+3V3 #PWR?
U 1 1 6094684E
P 4750 3550
AR Path="/60835C30/6094684E" Ref="#PWR?"  Part="1" 
AR Path="/609455AB/6094684E" Ref="#PWR027"  Part="1" 
F 0 "#PWR027" H 4750 3400 50  0001 C CNN
F 1 "+3V3" H 4765 3723 50  0000 C CNN
F 2 "" H 4750 3550 50  0001 C CNN
F 3 "" H 4750 3550 50  0001 C CNN
	1    4750 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3550 4750 3600
Wire Wire Line
	4750 3600 4900 3600
Text HLabel 5200 3800 0    50   Input ~ 0
INA
$Comp
L Device:R R?
U 1 1 60946857
P 5050 4000
AR Path="/60835C30/60946857" Ref="R?"  Part="1" 
AR Path="/609455AB/60946857" Ref="R16"  Part="1" 
F 0 "R16" V 5000 3800 50  0000 C CNN
F 1 "1k" V 5000 4150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4980 4000 50  0001 C CNN
F 3 "~" H 5050 4000 50  0001 C CNN
	1    5050 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 4000 5250 4000
Text Notes 4100 5700 0    50   ~ 0
Separate logic return for time being\n\nAlways current monitoring mode \nwhen SEL0=INA,SEL1=0,MS_EN=1\n\n(datasheet p.22,table12)
Wire Wire Line
	5050 4300 5150 4300
Wire Wire Line
	5150 4300 5150 4400
Connection ~ 5150 4300
Wire Wire Line
	5150 4300 5250 4300
Wire Wire Line
	7450 3550 7550 3550
Wire Wire Line
	6600 3550 6700 3550
Wire Wire Line
	6850 2200 6750 2200
Wire Wire Line
	6300 4150 6300 4400
Connection ~ 6600 5050
Connection ~ 7550 5050
Wire Wire Line
	7550 5050 6600 5050
Wire Wire Line
	7850 4150 7850 4400
Text Notes 5800 2450 0    50   ~ 0
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
P 2650 2450
AR Path="/60835C0E/60A0C7BB" Ref="D?"  Part="1" 
AR Path="/60A0C7BB" Ref="D?"  Part="1" 
AR Path="/609455AB/60A0C7BB" Ref="D5"  Part="1" 
F 0 "D5" V 2604 2529 50  0000 L CNN
F 1 "BZT52C8V2S-7-F" V 2695 2529 50  0000 L CNN
F 2 "" H 2650 2450 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Diodes%20PDFs/BZT52C2V0S-BZT52C39S.pdf" H 2650 2450 50  0001 C CNN
	1    2650 2450
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 60A0C7C9
P 3000 2450
AR Path="/60835C0E/60A0C7C9" Ref="R?"  Part="1" 
AR Path="/60A0C7C9" Ref="R?"  Part="1" 
AR Path="/609455AB/60A0C7C9" Ref="R11"  Part="1" 
F 0 "R11" H 3070 2496 50  0000 L CNN
F 1 "1k" H 3070 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2930 2450 50  0001 C CNN
F 3 "~" H 3000 2450 50  0001 C CNN
	1    3000 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60A0C7D0
P 2650 2800
AR Path="/60835C0E/60A0C7D0" Ref="R?"  Part="1" 
AR Path="/60A0C7D0" Ref="R?"  Part="1" 
AR Path="/609455AB/60A0C7D0" Ref="R12"  Part="1" 
F 0 "R12" H 2581 2754 50  0000 R CNN
F 1 "0" H 2581 2845 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2580 2800 50  0001 C CNN
F 3 "~" H 2650 2800 50  0001 C CNN
	1    2650 2800
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 60A0C7D7
P 2650 3200
AR Path="/60835C0E/60A0C7D7" Ref="R?"  Part="1" 
AR Path="/60A0C7D7" Ref="R?"  Part="1" 
AR Path="/609455AB/60A0C7D7" Ref="R14"  Part="1" 
F 0 "R14" H 2581 3154 50  0000 R CNN
F 1 "1k" H 2581 3245 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2580 3200 50  0001 C CNN
F 3 "~" H 2650 3200 50  0001 C CNN
	1    2650 3200
	1    0    0    1   
$EndComp
Wire Wire Line
	2650 2600 2650 2650
Text Notes 2600 1750 0    50   ~ 0
Undervoltage Protection
$Comp
L Device:Q_PMOS_GDS Q?
U 1 1 60A0C7E1
P 3300 2300
AR Path="/60835C0E/60A0C7E1" Ref="Q?"  Part="1" 
AR Path="/60A0C7E1" Ref="Q?"  Part="1" 
AR Path="/609455AB/60A0C7E1" Ref="Q1"  Part="1" 
F 0 "Q1" V 3643 2300 50  0000 C CNN
F 1 "DMP3028LK3-13" V 3552 2300 50  0000 C CNN
F 2 "" H 3500 2400 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/DMP3028LK3.pdf" H 3300 2300 50  0001 C CNN
	1    3300 2300
	0    1    -1   0   
$EndComp
Wire Wire Line
	2650 2950 2650 3000
Connection ~ 2650 3000
Wire Wire Line
	2650 3000 2650 3050
Wire Wire Line
	2650 2200 2650 2300
Wire Wire Line
	2700 3000 2650 3000
Wire Wire Line
	3000 2600 3000 2700
Wire Wire Line
	3100 2200 3000 2200
Wire Wire Line
	3000 2200 3000 2300
Wire Wire Line
	2650 2200 3000 2200
Connection ~ 3000 2200
Connection ~ 2650 2200
Wire Wire Line
	3000 2700 3300 2700
Wire Wire Line
	3300 2700 3300 2500
Connection ~ 3000 2700
Wire Wire Line
	3000 2700 3000 2800
Wire Wire Line
	7050 2500 7050 2550
Wire Wire Line
	7250 2200 7350 2200
Wire Wire Line
	7350 2200 7350 2550
Wire Wire Line
	6750 2550 6750 2200
Wire Wire Line
	2650 5050 3000 5050
Wire Wire Line
	2650 5050 1500 5050
Connection ~ 2650 5050
Wire Wire Line
	1500 2200 2650 2200
Text Notes 1200 3600 0    50   ~ 0
divider allows bring-up tuning of\ncut-out voltage. sims indicate\nnot needed for BZT52C8V2S-7-F
$Comp
L Device:D_Schottky D7
U 1 1 60B3B341
P 1850 6550
F 0 "D7" V 1804 6629 50  0000 L CNN
F 1 "SBR10E45P5-7" V 1895 6629 50  0000 L CNN
F 2 "" H 1850 6550 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/SBR10E45P5.pdf" H 1850 6550 50  0001 C CNN
	1    1850 6550
	0    -1   1    0   
$EndComp
Text Notes 6900 1750 0    50   ~ 0
HBridge
Wire Wire Line
	2750 6700 2750 6800
Wire Wire Line
	1850 7200 1850 7250
Wire Wire Line
	2750 7250 2750 7200
Wire Wire Line
	1850 6400 1850 6350
Wire Wire Line
	2750 6350 2750 6400
Text HLabel 1800 6800 0    50   Output ~ 0
MOT+
Text HLabel 2800 6800 2    50   Output ~ 0
MOT-
Wire Wire Line
	2800 6800 2750 6800
Connection ~ 2750 6800
Wire Wire Line
	2750 6800 2750 6900
Text Notes 9800 1750 0    50   ~ 0
Flyback Diodes
Wire Wire Line
	7550 5050 7850 5050
Connection ~ 6750 2200
$Comp
L Device:LED D6
U 1 1 60BFEEFB
P 4000 3500
F 0 "D6" V 4038 3578 50  0000 L CNN
F 1 "150060RS75000" V 3947 3578 50  0000 L CNN
F 2 "" H 4000 3500 50  0001 C CNN
F 3 "https://www.we-online.de/katalog/datasheet/150060RS75000.pdf" H 4000 3500 50  0001 C CNN
	1    4000 3500
	0    1    -1   0   
$EndComp
$Comp
L Device:R R13
U 1 1 60BFF003
P 4000 3150
F 0 "R13" H 4070 3196 50  0000 L CNN
F 1 "1K" H 4070 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3930 3150 50  0001 C CNN
F 3 "~" H 4000 3150 50  0001 C CNN
	1    4000 3150
	1    0    0    -1  
$EndComp
Connection ~ 3000 5050
Connection ~ 7350 2200
Wire Wire Line
	7850 5050 8900 5050
Connection ~ 7850 5050
Wire Wire Line
	7900 3550 7550 3550
Connection ~ 7550 3550
Wire Wire Line
	4900 4000 4750 4000
Wire Wire Line
	5150 4750 5150 4700
Wire Wire Line
	4750 4750 4750 4800
$Comp
L power:GND #PWR028
U 1 1 60C4B8BF
P 4750 4800
F 0 "#PWR028" H 4750 4550 50  0001 C CNN
F 1 "GND" H 4755 4627 50  0000 C CNN
F 2 "" H 4750 4800 50  0001 C CNN
F 3 "" H 4750 4800 50  0001 C CNN
	1    4750 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 6700 1850 6800
Wire Wire Line
	1850 6800 1800 6800
Connection ~ 1850 6800
Wire Wire Line
	1850 6800 1850 6900
$Comp
L Device:C C13
U 1 1 60C5AE4E
P 8900 4500
F 0 "C13" H 9015 4546 50  0000 L CNN
F 1 "100n" H 9015 4455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8938 4350 50  0001 C CNN
F 3 "~" H 8900 4500 50  0001 C CNN
	1    8900 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 4350 8900 4300
Wire Wire Line
	8900 4300 8850 4300
Wire Wire Line
	1850 7250 2100 7250
Wire Wire Line
	6300 4700 6300 5050
Connection ~ 6300 5050
Wire Wire Line
	6300 5050 6600 5050
Wire Wire Line
	6600 4050 6600 5050
Connection ~ 6600 4050
Wire Wire Line
	7550 4050 7550 5050
Connection ~ 7550 4050
Wire Wire Line
	8900 4650 8900 5050
Wire Wire Line
	7850 4700 7850 5050
Wire Wire Line
	3000 3200 3000 5050
Wire Wire Line
	2650 3350 2650 5050
Wire Wire Line
	3500 2200 4900 2200
Wire Wire Line
	4000 3300 4000 3350
Text Notes 3800 2650 0    50   ~ 0
Undervoltage-On LED
$Comp
L Device:Q_NMOS_GDS Q2
U 1 1 60E4E76B
P 7050 2300
F 0 "Q2" V 7393 2300 50  0000 C CNN
F 1 "PSMN3R0-30MLC,115" V 7302 2300 50  0000 C CNN
F 2 "" H 7250 2400 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/DMTH4005SK3Q.pdf" H 7050 2300 50  0001 C CNN
	1    7050 2300
	0    -1   -1   0   
$EndComp
$Comp
L saber:VNHD7008AY U?
U 1 1 609467F4
P 4850 2950
AR Path="/60835C30/609467F4" Ref="U?"  Part="1" 
AR Path="/609455AB/609467F4" Ref="U4"  Part="1" 
F 0 "U4" H 8300 3400 50  0000 C CNN
F 1 "VNHD7008AY" H 8500 3300 50  0000 C CNN
F 2 "Package_SO:ST_PowerSSO-36_SlugDown_ThermalVias" H 4850 2950 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/vnhd7008ay.pdf" H 4850 2950 50  0001 C CNN
	1    4850 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_GDS Q4
U 1 1 60E51F9A
P 6500 3800
F 0 "Q4" H 6700 3900 50  0000 L CNN
F 1 "PSMN3R0-30MLC,115" H 6700 3800 50  0000 L CNN
F 2 "" H 6700 3900 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/DMTH4005SK3Q.pdf" H 6500 3800 50  0001 C CNN
	1    6500 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_GDS Q5
U 1 1 60E59F39
P 7650 3800
F 0 "Q5" H 7850 3700 50  0000 L CNN
F 1 "PSMN3R0-30MLC,115" H 7850 3600 50  0000 L CNN
F 2 "" H 7850 3900 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/DMTH4005SK3Q.pdf" H 7650 3800 50  0001 C CNN
	1    7650 3800
	-1   0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_GSD Q?
U 1 1 60ECDA76
P 2900 3000
AR Path="/60835C30/60ECDA76" Ref="Q?"  Part="1" 
AR Path="/609455AB/60ECDA76" Ref="Q3"  Part="1" 
F 0 "Q3" H 3106 3046 50  0000 L CNN
F 1 "PSMN3R0-30MLC,115" H 3106 2955 50  0000 L CNN
F 2 "" H 3100 3100 50  0001 C CNN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=14758&prodName=SSM3K337R" H 2900 3000 50  0001 C CNN
	1    2900 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D9
U 1 1 60EDFB2E
P 1850 7050
F 0 "D9" V 1804 7129 50  0000 L CNN
F 1 "SBR10E45P5-7" V 1895 7129 50  0000 L CNN
F 2 "" H 1850 7050 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/SBR10E45P5.pdf" H 1850 7050 50  0001 C CNN
	1    1850 7050
	0    -1   1    0   
$EndComp
$Comp
L Device:D_Schottky D10
U 1 1 60EE22CC
P 2750 7050
F 0 "D10" V 2704 7129 50  0000 L CNN
F 1 "SBR10E45P5-7" V 2795 7129 50  0000 L CNN
F 2 "" H 2750 7050 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/SBR10E45P5.pdf" H 2750 7050 50  0001 C CNN
	1    2750 7050
	0    1    1    0   
$EndComp
$Comp
L Device:D_Schottky D8
U 1 1 60EE71EA
P 2750 6550
F 0 "D8" V 2704 6629 50  0000 L CNN
F 1 "SBR10E45P5-7" V 2795 6629 50  0000 L CNN
F 2 "" H 2750 6550 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/SBR10E45P5.pdf" H 2750 6550 50  0001 C CNN
	1    2750 6550
	0    1    1    0   
$EndComp
$Comp
L Device:Jumper_NC_Small JP5
U 1 1 60F24C08
P 4000 2850
F 0 "JP5" V 3954 2924 50  0000 L CNN
F 1 "pin header" V 4045 2924 50  0000 L CNN
F 2 "" H 4000 2850 50  0001 C CNN
F 3 "~" H 4000 2850 50  0001 C CNN
	1    4000 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 2750 4000 2700
Wire Wire Line
	4000 2950 4000 3000
Wire Wire Line
	4000 3650 4000 5050
Connection ~ 4750 4750
Wire Wire Line
	4750 4750 5150 4750
Wire Wire Line
	4750 4750 4750 4000
$Comp
L Device:CP1 C11
U 1 1 609A9AD8
P 9600 3550
F 0 "C11" H 9715 3596 50  0000 L CNN
F 1 "TODO" H 9715 3505 50  0000 L CNN
F 2 "" H 9600 3550 50  0001 C CNN
F 3 "~" H 9600 3550 50  0001 C CNN
	1    9600 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 609B97B2
P 2300 6800
F 0 "C14" V 2048 6800 50  0000 C CNN
F 1 "10n" V 2139 6800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2338 6650 50  0001 C CNN
F 3 "~" H 2300 6800 50  0001 C CNN
	1    2300 6800
	0    1    1    0   
$EndComp
$Comp
L Device:C C15
U 1 1 609BFA9B
P 2100 7050
F 0 "C15" H 2150 7150 50  0000 L CNN
F 1 "10n" H 2100 6950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2138 6900 50  0001 C CNN
F 3 "~" H 2100 7050 50  0001 C CNN
	1    2100 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C16
U 1 1 609BFB29
P 2500 7050
F 0 "C16" H 2550 7150 50  0000 L CNN
F 1 "10n" H 2500 6950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2538 6900 50  0001 C CNN
F 3 "~" H 2500 7050 50  0001 C CNN
	1    2500 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 6800 2100 6800
Wire Wire Line
	2100 6800 2100 6900
Connection ~ 2100 6800
Wire Wire Line
	2100 6800 2150 6800
Wire Wire Line
	2100 7200 2100 7250
Connection ~ 2100 7250
Wire Wire Line
	2500 7250 2500 7200
Connection ~ 2500 7250
Wire Wire Line
	2500 7250 2750 7250
Wire Wire Line
	2450 6800 2500 6800
Wire Wire Line
	2500 6900 2500 6800
Connection ~ 2500 6800
Wire Wire Line
	2500 6800 2750 6800
$Comp
L power:PWR_FLAG #FLG04
U 1 1 60A19C97
P 4900 2200
F 0 "#FLG04" H 4900 2275 50  0001 C CNN
F 1 "PWR_FLAG" H 4900 2374 50  0000 C CNN
F 2 "" H 4900 2200 50  0001 C CNN
F 3 "~" H 4900 2200 50  0001 C CNN
	1    4900 2200
	1    0    0    -1  
$EndComp
Connection ~ 4900 2200
Wire Wire Line
	4900 2200 6750 2200
Wire Wire Line
	1850 6350 2300 6350
Wire Wire Line
	7350 2200 9600 2200
$Comp
L Device:C C12
U 1 1 609AA368
P 10050 3550
F 0 "C12" H 10165 3596 50  0000 L CNN
F 1 "100n" H 10165 3505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10088 3400 50  0001 C CNN
F 3 "~" H 10050 3550 50  0001 C CNN
	1    10050 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 5050 8900 5050
Wire Wire Line
	9600 3700 9600 5050
Connection ~ 8900 5050
Wire Wire Line
	10050 3700 10050 5050
Wire Wire Line
	10050 5050 9600 5050
Connection ~ 9600 5050
Wire Wire Line
	9600 2200 9600 3400
Connection ~ 9600 2200
Wire Wire Line
	9600 2200 10050 2200
Connection ~ 10050 2200
Wire Wire Line
	10050 2200 10700 2200
Text HLabel 2300 6300 1    50   Input ~ 0
BATT+
Text HLabel 2300 7300 3    50   Input ~ 0
BATT-
Wire Wire Line
	2300 6300 2300 6350
Connection ~ 2300 6350
Wire Wire Line
	2300 6350 2750 6350
Wire Wire Line
	2100 7250 2300 7250
Wire Wire Line
	2300 7300 2300 7250
Connection ~ 2300 7250
Wire Wire Line
	2300 7250 2500 7250
Text Notes 1300 5900 0    50   ~ 0
Motor Protections
Wire Wire Line
	10050 2200 10050 3400
Connection ~ 4000 5050
Wire Wire Line
	4000 5050 6300 5050
Wire Wire Line
	3000 5050 4000 5050
Wire Wire Line
	3300 2700 4000 2700
Connection ~ 3300 2700
$EndSCHEMATC
