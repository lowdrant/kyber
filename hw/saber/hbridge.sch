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
Text HLabel 6600 4200 2    50   Output ~ 0
MOT+
Text HLabel 7350 4200 0    50   Output ~ 0
MOT-
Text HLabel 5100 3500 0    50   Input ~ 0
PWM_MTR
Text HLabel 5100 3700 0    50   Input ~ 0
INA
Text HLabel 5100 3900 0    50   Input ~ 0
INB
$Comp
L saber:VNHD7008AY U?
U 1 1 609467F4
P 4750 3600
AR Path="/60835C30/609467F4" Ref="U?"  Part="1" 
AR Path="/609455AB/609467F4" Ref="U?"  Part="1" 
F 0 "U?" H 8200 4050 50  0000 C CNN
F 1 "VNHD7008AY" H 8400 3950 50  0000 C CNN
F 2 "" H 4750 3600 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/vnhd7008ay.pdf" H 4750 3600 50  0001 C CNN
	1    4750 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_DGS Q?
U 1 1 609467FB
P 6400 4450
AR Path="/60835C30/609467FB" Ref="Q?"  Part="1" 
AR Path="/609455AB/609467FB" Ref="Q?"  Part="1" 
F 0 "Q?" H 6600 4350 50  0000 L CNN
F 1 "Q_NMOS_DGS" H 6600 4250 50  0000 L CNN
F 2 "" H 6600 4550 50  0001 C CNN
F 3 "~" H 6400 4450 50  0001 C CNN
	1    6400 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4450 6150 4450
Wire Wire Line
	6150 4200 6500 4200
Wire Wire Line
	6500 4200 6500 4250
Wire Wire Line
	6150 4700 6500 4700
Wire Wire Line
	6500 4700 6500 4650
$Comp
L Device:Q_NMOS_DGS Q?
U 1 1 60946807
P 7550 4450
AR Path="/60835C30/60946807" Ref="Q?"  Part="1" 
AR Path="/609455AB/60946807" Ref="Q?"  Part="1" 
F 0 "Q?" H 7750 4350 50  0000 L CNN
F 1 "Q_NMOS_DGS" H 7750 4450 50  0000 L CNN
F 2 "" H 7750 4550 50  0001 C CNN
F 3 "~" H 7550 4450 50  0001 C CNN
	1    7550 4450
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NMOS_DGS Q?
U 1 1 6094680E
P 6950 2950
AR Path="/60835C30/6094680E" Ref="Q?"  Part="1" 
AR Path="/609455AB/6094680E" Ref="Q?"  Part="1" 
F 0 "Q?" V 7293 2950 50  0000 C CNN
F 1 "Q_NMOS_DGS" V 7202 2950 50  0000 C CNN
F 2 "" H 7150 3050 50  0001 C CNN
F 3 "~" H 6950 2950 50  0001 C CNN
	1    6950 2950
	0    1    -1   0   
$EndComp
Wire Wire Line
	5100 3500 5150 3500
Wire Wire Line
	5100 3700 5150 3700
Wire Wire Line
	5100 3900 5150 3900
Connection ~ 6500 4200
Wire Wire Line
	7450 4200 7450 4250
Wire Wire Line
	7450 4650 7450 4700
Wire Wire Line
	7450 4700 7800 4700
Wire Wire Line
	7750 4450 7800 4450
$Comp
L Device:R R?
U 1 1 60946826
P 4800 4950
AR Path="/60835C30/60946826" Ref="R?"  Part="1" 
AR Path="/609455AB/60946826" Ref="R?"  Part="1" 
F 0 "R?" V 4593 4950 50  0000 C CNN
F 1 "10k" V 4684 4950 50  0000 C CNN
F 2 "" V 4730 4950 50  0001 C CNN
F 3 "~" H 4800 4950 50  0001 C CNN
	1    4800 4950
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 6094682D
P 5050 5200
AR Path="/60835C30/6094682D" Ref="R?"  Part="1" 
AR Path="/609455AB/6094682D" Ref="R?"  Part="1" 
F 0 "R?" H 5120 5246 50  0000 L CNN
F 1 "1k5" H 5120 5155 50  0000 L CNN
F 2 "" V 4980 5200 50  0001 C CNN
F 3 "~" H 5050 5200 50  0001 C CNN
	1    5050 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60946834
P 6200 5200
AR Path="/60835C30/60946834" Ref="R?"  Part="1" 
AR Path="/609455AB/60946834" Ref="R?"  Part="1" 
F 0 "R?" H 6270 5246 50  0000 L CNN
F 1 "10k" H 6270 5155 50  0000 L CNN
F 2 "" V 6130 5200 50  0001 C CNN
F 3 "~" H 6200 5200 50  0001 C CNN
	1    6200 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4800 6150 4800
$Comp
L Device:R R?
U 1 1 6094683C
P 7750 5200
AR Path="/60835C30/6094683C" Ref="R?"  Part="1" 
AR Path="/609455AB/6094683C" Ref="R?"  Part="1" 
F 0 "R?" H 7820 5246 50  0000 L CNN
F 1 "10k" H 7820 5155 50  0000 L CNN
F 2 "" V 7680 5200 50  0001 C CNN
F 3 "~" H 7750 5200 50  0001 C CNN
	1    7750 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 4800 7800 4800
Text HLabel 4350 4950 0    50   Output ~ 0
imtr
$Comp
L Device:R R?
U 1 1 60946845
P 4950 4250
AR Path="/60835C30/60946845" Ref="R?"  Part="1" 
AR Path="/609455AB/60946845" Ref="R?"  Part="1" 
F 0 "R?" V 4900 4050 50  0000 C CNN
F 1 "1k" V 4900 4400 50  0000 C CNN
F 2 "" V 4880 4250 50  0001 C CNN
F 3 "~" H 4950 4250 50  0001 C CNN
	1    4950 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 4450 5150 4450
Wire Wire Line
	5100 4250 5150 4250
$Comp
L power:+3V3 #PWR?
U 1 1 6094684E
P 4650 4200
AR Path="/60835C30/6094684E" Ref="#PWR?"  Part="1" 
AR Path="/609455AB/6094684E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4650 4050 50  0001 C CNN
F 1 "+3V3" H 4665 4373 50  0000 C CNN
F 2 "" H 4650 4200 50  0001 C CNN
F 3 "" H 4650 4200 50  0001 C CNN
	1    4650 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 4200 4650 4250
Wire Wire Line
	4650 4250 4800 4250
Text HLabel 5100 4450 0    50   Input ~ 0
INA
$Comp
L Device:R R?
U 1 1 60946857
P 4950 4650
AR Path="/60835C30/60946857" Ref="R?"  Part="1" 
AR Path="/609455AB/60946857" Ref="R?"  Part="1" 
F 0 "R?" V 4900 4450 50  0000 C CNN
F 1 "1k" V 4900 4800 50  0000 C CNN
F 2 "" V 4880 4650 50  0001 C CNN
F 3 "~" H 4950 4650 50  0001 C CNN
	1    4950 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 4650 5150 4650
Text Notes 4000 6350 0    50   ~ 0
Separate logic return for time being\n\nAlways current monitoring mode \nwhen SEL0=INA,SEL1=0,MS_EN=1\n\n(datasheet p.22,table12)
Wire Wire Line
	4950 4950 5050 4950
Wire Wire Line
	5050 4950 5050 5050
Connection ~ 5050 4950
Wire Wire Line
	5050 4950 5150 4950
Wire Wire Line
	7350 4200 7450 4200
Wire Wire Line
	6500 4200 6600 4200
Wire Wire Line
	6750 2850 6650 2850
$Comp
L Device:C C?
U 1 1 6094686E
P 4550 5200
AR Path="/60835C30/6094686E" Ref="C?"  Part="1" 
AR Path="/609455AB/6094686E" Ref="C?"  Part="1" 
F 0 "C?" H 4665 5246 50  0000 L CNN
F 1 "33n" H 4665 5155 50  0000 L CNN
F 2 "" H 4588 5050 50  0001 C CNN
F 3 "~" H 4550 5200 50  0001 C CNN
	1    4550 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4800 6200 5050
Connection ~ 6500 5700
Connection ~ 7450 5700
Wire Wire Line
	7450 5700 6500 5700
Wire Wire Line
	7750 4800 7750 5050
Text Notes 5700 3100 0    50   ~ 0
Rds(on) < 16/3 mOhms\n(datasheet p.30, sec.7)
Text HLabel 1400 5700 0    118  Input ~ 0
BATT-
Text HLabel 1400 2850 0    118  Input ~ 0
BATT+
Text HLabel 10600 2850 2    118  Output ~ 0
12V
$Comp
L Device:D_Zener D?
U 1 1 60A0C7BB
P 2550 3100
AR Path="/60835C0E/60A0C7BB" Ref="D?"  Part="1" 
AR Path="/60A0C7BB" Ref="D?"  Part="1" 
AR Path="/609455AB/60A0C7BB" Ref="D?"  Part="1" 
F 0 "D?" V 2504 3179 50  0000 L CNN
F 1 "BZT52C8V2S-7-F" V 2595 3179 50  0000 L CNN
F 2 "" H 2550 3100 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Diodes%20PDFs/BZT52C2V0S-BZT52C39S.pdf" H 2550 3100 50  0001 C CNN
	1    2550 3100
	0    -1   1    0   
$EndComp
$Comp
L Device:Q_NMOS_GDS Q?
U 1 1 60A0C7C2
P 2800 3650
AR Path="/60835C0E/60A0C7C2" Ref="Q?"  Part="1" 
AR Path="/60A0C7C2" Ref="Q?"  Part="1" 
AR Path="/609455AB/60A0C7C2" Ref="Q?"  Part="1" 
F 0 "Q?" H 3006 3696 50  0000 L CNN
F 1 "2N7002" H 3006 3605 50  0000 L CNN
F 2 "" H 3000 3750 50  0001 C CNN
F 3 "https://rocelec.widen.net/view/pdf/orqxwkxkq1/ONSM-S-A0003544006-1.pdf" H 2800 3650 50  0001 C CNN
	1    2800 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60A0C7C9
P 2900 3100
AR Path="/60835C0E/60A0C7C9" Ref="R?"  Part="1" 
AR Path="/60A0C7C9" Ref="R?"  Part="1" 
AR Path="/609455AB/60A0C7C9" Ref="R?"  Part="1" 
F 0 "R?" H 2970 3146 50  0000 L CNN
F 1 "1k" H 2970 3055 50  0000 L CNN
F 2 "" V 2830 3100 50  0001 C CNN
F 3 "~" H 2900 3100 50  0001 C CNN
	1    2900 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60A0C7D0
P 2550 3450
AR Path="/60835C0E/60A0C7D0" Ref="R?"  Part="1" 
AR Path="/60A0C7D0" Ref="R?"  Part="1" 
AR Path="/609455AB/60A0C7D0" Ref="R?"  Part="1" 
F 0 "R?" H 2481 3404 50  0000 R CNN
F 1 "FUTURE PROOFING" H 2481 3495 50  0000 R CNN
F 2 "" V 2480 3450 50  0001 C CNN
F 3 "~" H 2550 3450 50  0001 C CNN
	1    2550 3450
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 60A0C7D7
P 2550 3850
AR Path="/60835C0E/60A0C7D7" Ref="R?"  Part="1" 
AR Path="/60A0C7D7" Ref="R?"  Part="1" 
AR Path="/609455AB/60A0C7D7" Ref="R?"  Part="1" 
F 0 "R?" H 2481 3804 50  0000 R CNN
F 1 "1k" H 2481 3895 50  0000 R CNN
F 2 "" V 2480 3850 50  0001 C CNN
F 3 "~" H 2550 3850 50  0001 C CNN
	1    2550 3850
	1    0    0    1   
$EndComp
Wire Wire Line
	2550 3250 2550 3300
Text Notes 2500 2400 0    50   ~ 0
Undervoltage Protection
$Comp
L Device:Q_PMOS_GDS Q?
U 1 1 60A0C7E1
P 3200 2950
AR Path="/60835C0E/60A0C7E1" Ref="Q?"  Part="1" 
AR Path="/60A0C7E1" Ref="Q?"  Part="1" 
AR Path="/609455AB/60A0C7E1" Ref="Q?"  Part="1" 
F 0 "Q?" V 3543 2950 50  0000 C CNN
F 1 "DMP3028LK3-13" V 3452 2950 50  0000 C CNN
F 2 "" H 3400 3050 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/DMP3028LK3.pdf" H 3200 2950 50  0001 C CNN
	1    3200 2950
	0    1    -1   0   
$EndComp
Wire Wire Line
	2550 3600 2550 3650
Connection ~ 2550 3650
Wire Wire Line
	2550 3650 2550 3700
Wire Wire Line
	2550 2850 2550 2950
Wire Wire Line
	2600 3650 2550 3650
Wire Wire Line
	2900 3250 2900 3350
Wire Wire Line
	3000 2850 2900 2850
Wire Wire Line
	2900 2850 2900 2950
Wire Wire Line
	2550 2850 2900 2850
Connection ~ 2900 2850
Connection ~ 2550 2850
Wire Wire Line
	2900 3350 3200 3350
Wire Wire Line
	3200 3350 3200 3150
Connection ~ 2900 3350
Wire Wire Line
	2900 3350 2900 3450
Wire Wire Line
	6950 3150 6950 3200
Wire Wire Line
	7150 2850 7250 2850
Wire Wire Line
	7250 2850 7250 3200
Wire Wire Line
	6650 3200 6650 2850
Wire Wire Line
	2550 5700 2900 5700
Wire Wire Line
	2550 5700 1400 5700
Connection ~ 2550 5700
Wire Wire Line
	1400 2850 2550 2850
Text Notes 1100 4250 0    50   ~ 0
divider allows bring-up tuning of\ncut-out voltage. sims indicate\nnot needed for BZT52C8V2S-7-F
$Comp
L Device:D_Schottky D?
U 1 1 60B3B341
P 9750 4000
F 0 "D?" V 9704 4079 50  0000 L CNN
F 1 "D_Schottky" V 9795 4079 50  0000 L CNN
F 2 "" H 9750 4000 50  0001 C CNN
F 3 "~" H 9750 4000 50  0001 C CNN
	1    9750 4000
	0    -1   1    0   
$EndComp
$Comp
L Device:D_Schottky D?
U 1 1 60B3B4AF
P 9750 4500
F 0 "D?" V 9704 4579 50  0000 L CNN
F 1 "D_Schottky" V 9795 4579 50  0000 L CNN
F 2 "" H 9750 4500 50  0001 C CNN
F 3 "~" H 9750 4500 50  0001 C CNN
	1    9750 4500
	0    -1   1    0   
$EndComp
$Comp
L Device:D_Schottky D?
U 1 1 60B3CB15
P 10350 4000
F 0 "D?" V 10304 4079 50  0000 L CNN
F 1 "D_Schottky" V 10395 4079 50  0000 L CNN
F 2 "" H 10350 4000 50  0001 C CNN
F 3 "~" H 10350 4000 50  0001 C CNN
	1    10350 4000
	0    1    1    0   
$EndComp
$Comp
L Device:D_Schottky D?
U 1 1 60B3E159
P 10350 4500
F 0 "D?" V 10304 4579 50  0000 L CNN
F 1 "D_Schottky" V 10395 4579 50  0000 L CNN
F 2 "" H 10350 4500 50  0001 C CNN
F 3 "~" H 10350 4500 50  0001 C CNN
	1    10350 4500
	0    1    1    0   
$EndComp
Text Notes 6800 2400 0    50   ~ 0
HBridge
Wire Wire Line
	10350 4150 10350 4250
Wire Wire Line
	9750 4650 9750 4700
Wire Wire Line
	10350 4700 10350 4650
Wire Wire Line
	9750 3850 9750 3800
Wire Wire Line
	9750 3800 10050 3800
Wire Wire Line
	10350 3800 10350 3850
Connection ~ 10050 3800
Wire Wire Line
	10050 3800 10350 3800
Text HLabel 9700 4250 0    50   Output ~ 0
MOT+
Text HLabel 10400 4250 2    50   Output ~ 0
MOT-
Wire Wire Line
	10400 4250 10350 4250
Connection ~ 10350 4250
Wire Wire Line
	10350 4250 10350 4350
Text Notes 9700 2400 0    50   ~ 0
Flyback Diodes
Wire Wire Line
	10050 2850 10050 3800
Wire Wire Line
	7450 5700 7750 5700
Wire Wire Line
	10600 2850 10050 2850
Connection ~ 6650 2850
$Comp
L Device:LED D?
U 1 1 60BFEEFB
P 3450 4000
F 0 "D?" V 3488 4078 50  0000 L CNN
F 1 "LED" V 3397 4078 50  0000 L CNN
F 2 "" H 3450 4000 50  0001 C CNN
F 3 "~" H 3450 4000 50  0001 C CNN
	1    3450 4000
	0    1    -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 60BFF003
P 3450 3650
F 0 "R?" H 3520 3696 50  0000 L CNN
F 1 "1K" H 3520 3605 50  0000 L CNN
F 2 "" V 3380 3650 50  0001 C CNN
F 3 "~" H 3450 3650 50  0001 C CNN
	1    3450 3650
	1    0    0    -1  
$EndComp
Connection ~ 2900 5700
Wire Wire Line
	4350 4950 4550 4950
Wire Wire Line
	4550 4950 4550 5050
Connection ~ 4550 4950
Wire Wire Line
	4550 4950 4650 4950
Wire Wire Line
	7250 2850 10050 2850
Connection ~ 7250 2850
Connection ~ 10050 2850
Wire Wire Line
	7750 5700 8800 5700
Connection ~ 7750 5700
Wire Wire Line
	7800 4200 7450 4200
Connection ~ 7450 4200
Wire Wire Line
	4800 4650 4050 4650
Wire Wire Line
	4050 4650 4050 5400
Wire Wire Line
	4050 5400 4550 5400
Wire Wire Line
	5050 5400 5050 5350
Wire Wire Line
	4550 5400 4550 5350
Connection ~ 4550 5400
Wire Wire Line
	4550 5400 5050 5400
Wire Wire Line
	4550 5400 4550 5450
$Comp
L power:GND #PWR?
U 1 1 60C4B8BF
P 4550 5450
F 0 "#PWR?" H 4550 5200 50  0001 C CNN
F 1 "GND" H 4555 5277 50  0000 C CNN
F 2 "" H 4550 5450 50  0001 C CNN
F 3 "" H 4550 5450 50  0001 C CNN
	1    4550 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 4150 9750 4250
Wire Wire Line
	9750 4250 9700 4250
Connection ~ 9750 4250
Wire Wire Line
	9750 4250 9750 4350
$Comp
L Device:C C?
U 1 1 60C5AE4E
P 8800 5150
F 0 "C?" H 8915 5196 50  0000 L CNN
F 1 "100n" H 8915 5105 50  0000 L CNN
F 2 "" H 8838 5000 50  0001 C CNN
F 3 "~" H 8800 5150 50  0001 C CNN
	1    8800 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 5000 8800 4950
Wire Wire Line
	8800 4950 8750 4950
Connection ~ 8800 5700
Wire Wire Line
	8800 5700 10050 5700
Wire Wire Line
	9750 4700 10050 4700
Wire Wire Line
	6200 5350 6200 5700
Connection ~ 6200 5700
Wire Wire Line
	6200 5700 6500 5700
Wire Wire Line
	6500 4700 6500 5700
Connection ~ 6500 4700
Wire Wire Line
	7450 4700 7450 5700
Connection ~ 7450 4700
Wire Wire Line
	8800 5300 8800 5700
Wire Wire Line
	7750 5350 7750 5700
Wire Wire Line
	10050 4700 10050 5700
Connection ~ 10050 4700
Wire Wire Line
	10050 4700 10350 4700
Wire Wire Line
	2900 3850 2900 5700
Wire Wire Line
	2550 4000 2550 5700
Wire Wire Line
	3400 2850 6650 2850
Wire Wire Line
	3200 3350 3450 3350
Connection ~ 3200 3350
Connection ~ 3450 5700
Wire Wire Line
	3450 5700 6200 5700
Wire Wire Line
	2900 5700 3450 5700
Wire Wire Line
	3450 3500 3450 3350
Wire Wire Line
	3450 4150 3450 5700
Wire Wire Line
	3450 3800 3450 3850
Text Notes 3500 3500 0    50   ~ 0
Undervoltage-On LED
$EndSCHEMATC
