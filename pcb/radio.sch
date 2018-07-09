EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title "Jerboa Radio Schematics"
Date "2018-06-12"
Rev "1.2"
Comp "Cambridge University Spaceflight"
Comment1 "Greg Brooks"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L agg-kicad:Si4460 IC3
U 1 1 5A68AEFA
P 2450 1900
F 0 "IC3" H 2150 2600 50  0000 L CNN
F 1 "Si4460" H 2150 1200 50  0000 L CNN
F 2 "agg:QFN-20-EP-SI" H 2150 1100 50  0001 L CNN
F 3 "" H 2050 2500 50  0001 C CNN
F 4 "2462635" H 2150 1000 50  0001 L CNN "Farnell"
	1    2450 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 2100 2050 2100
Wire Wire Line
	1900 2200 2050 2200
Wire Wire Line
	1900 2300 2050 2300
Wire Wire Line
	1900 2400 2050 2400
$Comp
L agg-kicad:GND #PWR032
U 1 1 5A68B038
P 1850 1650
F 0 "#PWR032" H 1720 1690 50  0001 L CNN
F 1 "GND" H 1850 1550 50  0000 C CNN
F 2 "" H 1850 1650 60  0000 C CNN
F 3 "" H 1850 1650 60  0000 C CNN
	1    1850 1650
	1    0    0    -1  
$EndComp
NoConn ~ 2850 1800
NoConn ~ 2850 1900
NoConn ~ 2850 2000
NoConn ~ 2850 2100
Wire Wire Line
	2850 2200 2950 2200
Text Label 4950 1600 0    60   ~ 0
RADIO_TX_144
Wire Wire Line
	1900 2500 2050 2500
$Comp
L agg-kicad:C C18
U 1 1 5A68B322
P 1650 1500
F 0 "C18" H 1700 1570 50  0000 C CNN
F 1 "100nF" H 1700 1430 50  0000 C CNN
F 2 "agg:0402" H 1650 1500 50  0001 C CNN
F 3 "" H 1650 1500 50  0001 C CNN
F 4 "2533923" H -200 -100 50  0001 C CNN "Farnell"
	1    1650 1500
	0    -1   -1   0   
$EndComp
$Comp
L agg-kicad:C C17
U 1 1 5A68B351
P 1400 1500
F 0 "C17" H 1450 1570 50  0000 C CNN
F 1 "100pF" H 1450 1430 50  0000 C CNN
F 2 "agg:0402" H 1400 1500 50  0001 C CNN
F 3 "" H 1400 1500 50  0001 C CNN
F 4 "2496792" H 1400 1500 50  0001 C CNN "Farnell"
	1    1400 1500
	0    -1   -1   0   
$EndComp
$Comp
L agg-kicad:C C19
U 1 1 5A68B3B6
P 1850 1500
F 0 "C19" H 1900 1570 50  0000 C CNN
F 1 "1uF" H 1900 1430 50  0000 C CNN
F 2 "agg:0402" H 1850 1500 50  0001 C CNN
F 3 "" H 1850 1500 50  0001 C CNN
F 4 "1758879" H 1850 1500 60  0001 C CNN "Farnell"
	1    1850 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1650 1600 1650 1500
Connection ~ 1850 1600
Wire Wire Line
	1400 1600 1400 1500
Connection ~ 1650 1600
Wire Wire Line
	1850 1500 1850 1600
Wire Wire Line
	2050 1500 1950 1500
Wire Wire Line
	1950 1500 1950 1600
Connection ~ 1950 1600
Wire Wire Line
	2050 1400 1950 1400
Wire Wire Line
	1950 1400 1950 1300
Wire Wire Line
	1400 1200 1400 1300
Wire Wire Line
	1650 1300 1650 1400
Connection ~ 1400 1300
Wire Wire Line
	1400 1300 1400 1400
Wire Wire Line
	2850 1500 3050 1500
Wire Wire Line
	3050 1400 2850 1400
Wire Wire Line
	2850 1300 3050 1300
NoConn ~ 2850 1600
$Comp
L agg-kicad:COAX P3
U 1 1 5A68BF1C
P 10100 1400
F 0 "P3" H 10100 1500 50  0000 C CNN
F 1 "144MHz" H 10100 1250 50  0000 C CNN
F 2 "Jerboa:GND_PLANE_ANT" H 10100 1190 50  0001 C CNN
F 3 "" H 10200 1300 50  0001 C CNN
	1    10100 1400
	1    0    0    -1  
$EndComp
Text Label 6550 1300 2    60   ~ 0
RADIO_TX_144
Wire Wire Line
	10000 1500 10000 1600
NoConn ~ 2050 1800
Text HLabel 1900 2100 0    60   Input ~ 0
RADIO_SDN
Text HLabel 1900 2200 0    60   Input ~ 0
RADIO_SCLK
Text HLabel 1900 2300 0    60   Input ~ 0
RADIO_SDO
Text HLabel 1900 2400 0    60   Input ~ 0
RADIO_SDI
Text HLabel 1900 2500 0    60   Input ~ 0
RADIO_nSEL
Text HLabel 2950 2200 2    60   Input ~ 0
RADIO_nIRQ
Wire Wire Line
	1400 1600 1650 1600
Wire Wire Line
	1850 1600 1950 1600
Wire Wire Line
	1650 1600 1850 1600
Wire Wire Line
	1950 1600 2050 1600
Wire Wire Line
	1950 1300 2050 1300
Wire Wire Line
	1400 1300 1650 1300
Wire Wire Line
	1850 1400 1850 1300
Wire Wire Line
	1850 1300 1950 1300
Connection ~ 1950 1300
Wire Wire Line
	1650 1300 1850 1300
Connection ~ 1650 1300
Connection ~ 1850 1300
$Comp
L agg-kicad:GND #PWR040
U 1 1 5B25FF17
P 8000 1650
F 0 "#PWR040" H 7870 1690 50  0001 L CNN
F 1 "GND" H 8000 1550 50  0000 C CNN
F 2 "" H 8000 1650 60  0000 C CNN
F 3 "" H 8000 1650 60  0000 C CNN
	1    8000 1650
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:GND #PWR042
U 1 1 5B25FF40
P 8300 1650
F 0 "#PWR042" H 8170 1690 50  0001 L CNN
F 1 "GND" H 8300 1550 50  0000 C CNN
F 2 "" H 8300 1650 60  0000 C CNN
F 3 "" H 8300 1650 60  0000 C CNN
	1    8300 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 1300 9900 1400
Wire Wire Line
	9900 1400 10000 1400
$Comp
L agg-kicad:GND #PWR044
U 1 1 5B261E77
P 10000 1800
F 0 "#PWR044" H 9870 1840 50  0001 L CNN
F 1 "GND" H 10000 1700 50  0000 C CNN
F 2 "" H 10000 1800 60  0000 C CNN
F 3 "" H 10000 1800 60  0000 C CNN
	1    10000 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 1550 8000 1650
Wire Wire Line
	8300 1550 8300 1650
Text Notes 3800 5150 0    60   ~ 0
\n
Text Notes 5300 3150 0    60   ~ 0
Si4460\n\n
Text Notes 9500 3050 0    60   ~ 0
Si4460 Antenna Matching - 169MHz
Text Notes 5950 2900 0    50   ~ 0
https://www.silabs.com/documents/public/application-notes/AN627.pdf\n169MHz matching (Direct Tie CLE)
$Comp
L agg-kicad:L L2
U 1 1 5B22AA33
P 3600 1600
F 0 "L2" V 3600 1300 50  0000 L CNN
F 1 "250nH" V 3700 1300 50  0000 L CNN
F 2 "agg:0603" H 3600 1600 50  0001 C CNN
F 3 "" H 3600 1600 50  0001 C CNN
F 4 "81-LQW18ANR22J8ZD" V 3600 1600 50  0001 C CNN "Mouser"
	1    3600 1600
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:C C23
U 1 1 5B22ACC2
P 7050 1300
F 0 "C23" H 7050 1500 50  0000 C CNN
F 1 "39pF" H 7050 1400 50  0000 C CNN
F 2 "agg:0402" H 7050 1300 50  0001 C CNN
F 3 "" H 7050 1300 50  0001 C CNN
F 4 "2524782" H 7050 1300 50  0001 C CNN "Farnell"
	1    7050 1300
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:L L6
U 1 1 5B22ADF8
P 7200 1300
F 0 "L6" H 7250 1478 50  0000 C CNN
F 1 "22nH" H 7250 1387 50  0000 C CNN
F 2 "agg:0402" H 7200 1300 50  0001 C CNN
F 3 "" H 7200 1300 50  0001 C CNN
F 4 "2840114" H 7200 1300 50  0001 C CNN "Farnell"
	1    7200 1300
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:C C26
U 1 1 5B22AE86
P 7350 1350
F 0 "C26" V 7354 1408 50  0000 L CNN
F 1 "6.8pF" V 7445 1408 50  0000 L CNN
F 2 "agg:0402" H 7350 1350 50  0001 C CNN
F 3 "" H 7350 1350 50  0001 C CNN
F 4 "2310317" H 350 -200 50  0001 C CNN "Farnell"
	1    7350 1350
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:GND #PWR038
U 1 1 5B22AFE6
P 7350 1500
F 0 "#PWR038" H 7220 1540 50  0001 L CNN
F 1 "GND" H 7350 1400 50  0000 C CNN
F 2 "" H 7350 1500 60  0000 C CNN
F 3 "" H 7350 1500 60  0000 C CNN
	1    7350 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1300 7200 1300
Wire Wire Line
	7300 1300 7350 1300
Wire Wire Line
	7350 1350 7350 1300
Connection ~ 7350 1300
Wire Wire Line
	7350 1500 7350 1450
$Comp
L agg-kicad:C C28
U 1 1 5B283320
P 8000 1450
F 0 "C28" V 8004 1508 50  0000 L CNN
F 1 "18pF" V 8095 1508 50  0000 L CNN
F 2 "agg:0402" H 8000 1450 50  0001 C CNN
F 3 "" H 8000 1450 50  0001 C CNN
F 4 "2522556" H 350 -200 50  0001 C CNN "Farnell"
	1    8000 1450
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:L L11
U 1 1 5B28CE00
P 8100 1300
F 0 "L11" H 8150 1478 50  0000 C CNN
F 1 "68nH" H 8150 1387 50  0000 C CNN
F 2 "agg:0402" H 8100 1300 50  0001 C CNN
F 3 "" H 8100 1300 50  0001 C CNN
F 4 "1669641" H 8100 1300 50  0001 C CNN "Farnell"
	1    8100 1300
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:C C29
U 1 1 5B28CFFB
P 8100 1000
F 0 "C29" H 8150 1195 50  0000 C CNN
F 1 "3pF" H 8150 1104 50  0000 C CNN
F 2 "agg:0402" H 8100 1000 50  0001 C CNN
F 3 "" H 8100 1000 50  0001 C CNN
F 4 "1758933" H 8100 1000 50  0001 C CNN "Farnell"
	1    8100 1000
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:L L12
U 1 1 5B28D27C
P 8400 1300
F 0 "L12" H 8450 1478 50  0000 C CNN
F 1 "47nH" H 8450 1387 50  0000 C CNN
F 2 "agg:0402" H 8400 1300 50  0001 C CNN
F 3 "" H 8400 1300 50  0001 C CNN
F 4 "1343090" H 350 -200 50  0001 C CNN "Farnell"
	1    8400 1300
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:C C33
U 1 1 5B28D3E1
P 8700 1300
F 0 "C33" H 8750 1495 50  0000 C CNN
F 1 "470pF" H 8750 1404 50  0000 C CNN
F 2 "agg:0402" H 8700 1300 50  0001 C CNN
F 3 "" H 8700 1300 50  0001 C CNN
F 4 "1327654" H 8700 1300 50  0001 C CNN "Farnell"
	1    8700 1300
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:C C32
U 1 1 5B28D543
P 8400 1000
F 0 "C32" H 8450 1195 50  0000 C CNN
F 1 "2pF" H 8450 1104 50  0000 C CNN
F 2 "agg:0402" H 8400 1000 50  0001 C CNN
F 3 "" H 8400 1000 50  0001 C CNN
F 4 "1758932" H 8400 1000 50  0001 C CNN "Farnell"
	1    8400 1000
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:C C31
U 1 1 5B28D68A
P 8300 1450
F 0 "C31" V 8304 1508 50  0000 L CNN
F 1 "18pF" V 8395 1508 50  0000 L CNN
F 2 "agg:0402" H 8300 1450 50  0001 C CNN
F 3 "" H 8300 1450 50  0001 C CNN
F 4 "2522556" H 350 -200 50  0001 C CNN "Farnell"
	1    8300 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	8700 1300 8600 1300
Wire Wire Line
	8100 1300 8000 1300
Wire Wire Line
	8000 1450 8000 1300
Connection ~ 8000 1300
Wire Wire Line
	8300 1450 8300 1300
Wire Wire Line
	8200 1300 8300 1300
Connection ~ 8300 1300
Wire Wire Line
	8300 1300 8400 1300
Wire Wire Line
	8100 1000 8000 1000
Wire Wire Line
	8000 1000 8000 1300
Wire Wire Line
	8200 1000 8300 1000
Wire Wire Line
	8300 1000 8300 1300
Wire Wire Line
	8400 1000 8300 1000
Connection ~ 8300 1000
Wire Wire Line
	8600 1000 8600 1300
Connection ~ 8600 1300
Wire Wire Line
	8600 1300 8500 1300
Wire Wire Line
	8500 1000 8600 1000
Text Notes 3900 2650 0    50   ~ 0
Antenna GND plane pass through
$Comp
L agg-kicad:TESTPAD TP1
U 1 1 5B23257E
P 4350 2700
F 0 "TP1" H 4447 2700 50  0000 L CNN
F 1 "TESTPAD" H 4350 2625 50  0001 L CNN
F 2 "Jerboa:ANT_GND_PASSTHROUGH" H 4350 2550 50  0001 L CNN
F 3 "" H 4350 2700 50  0001 C CNN
F 4 "https://www.ebay.co.uk/itm/Ernie-Ball-Custom-Gauge-Guitar-Single-Strings-Electric-or-Acoustic-Pack-6-13-/360959212478" H 4350 2700 50  0001 C CNN "Ebay"
	1    4350 2700
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:GND #PWR033
U 1 1 5B232690
P 4300 2750
F 0 "#PWR033" H 4170 2790 50  0001 L CNN
F 1 "GND" H 4300 2650 50  0000 C CNN
F 2 "" H 4300 2750 60  0000 C CNN
F 3 "" H 4300 2750 60  0000 C CNN
	1    4300 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 2750 4300 2700
Wire Wire Line
	4300 2700 4350 2700
Wire Wire Line
	3050 1800 3050 1500
Text Label 4950 1500 0    60   ~ 0
RADIO_TX_434
$Comp
L agg-kicad:GND #PWR035
U 1 1 5B29AF16
P 4000 1600
F 0 "#PWR035" H 3870 1640 50  0001 L CNN
F 1 "GND" V 4000 1450 50  0000 C CNN
F 2 "" H 4000 1600 60  0000 C CNN
F 3 "" H 4000 1600 60  0000 C CNN
	1    4000 1600
	1    0    0    -1  
$EndComp
Text HLabel 4950 1300 2    50   Input ~ 0
FREQ_CTRL
$Comp
L agg-kicad:ESD_DIODE D3
U 1 1 5B2C48DB
P 9700 1450
F 0 "D3" V 9700 1508 50  0000 L CNN
F 1 "ESD_DIODE" H 9650 1350 50  0001 L CNN
F 2 "agg:0402" H 9650 1250 50  0001 L CNN
F 3 "" H 9600 1450 50  0001 C CNN
F 4 "2368169" H 9650 1150 50  0001 L CNN "Farnell"
	1    9700 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	9700 1550 9700 1600
Wire Wire Line
	9700 1600 10000 1600
Connection ~ 10000 1600
Wire Wire Line
	10000 1600 10000 1800
Wire Wire Line
	9700 1350 9700 1300
Wire Wire Line
	9700 1300 9900 1300
Text Label 6600 4000 2    60   ~ 0
RADIO_TX_434
Text Notes 9500 3250 0    60   ~ 0
Si4460 Antenna Matching - 434MHz
Text Notes 6200 3700 0    50   ~ 0
https://www.silabs.com/documents/public/application-notes/AN627.pdf\n434MHz matching (Split Tx CLE)
$Comp
L agg-kicad:C C21
U 1 1 5B2CF91C
P 7100 4000
F 0 "C21" H 7150 4195 50  0000 C CNN
F 1 "18pF" H 7150 4104 50  0000 C CNN
F 2 "agg:0402" H 7100 4000 50  0001 C CNN
F 3 "" H 7100 4000 50  0001 C CNN
F 4 "2522556" H 900 0   50  0001 C CNN "Farnell"
	1    7100 4000
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:C C25
U 1 1 5B2CFB81
P 7900 4100
F 0 "C25" V 7904 4158 50  0000 L CNN
F 1 "8.2pF" V 7995 4158 50  0000 L CNN
F 2 "agg:0402" H 7900 4100 50  0001 C CNN
F 3 "" H 7900 4100 50  0001 C CNN
F 4 "1865418" V 7900 4100 50  0001 C CNN "Farnell"
	1    7900 4100
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:L L7
U 1 1 5B2CFEFA
P 8100 4000
F 0 "L7" H 8150 4178 50  0000 C CNN
F 1 "18nH" H 8150 4087 50  0000 C CNN
F 2 "agg:0402" H 8100 4000 50  0001 C CNN
F 3 "" H 8100 4000 50  0001 C CNN
F 4 "1762622" H 8100 4000 50  0001 C CNN "Farnell"
	1    8100 4000
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:C C27
U 1 1 5B2CFF74
P 8400 4100
F 0 "C27" V 8404 4158 50  0000 L CNN
F 1 "15pF" V 8495 4158 50  0000 L CNN
F 2 "agg:0402" H 8400 4100 50  0001 C CNN
F 3 "" H 8400 4100 50  0001 C CNN
F 4 "2520723" H 8400 4100 50  0001 C CNN "Farnell"
	1    8400 4100
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:COAX P2
U 1 1 5B2D02F9
P 10250 4100
F 0 "P2" H 10250 4200 50  0000 C CNN
F 1 "434MHz" H 10250 3950 50  0000 C CNN
F 2 "Jerboa:GND_PLANE_ANT" H 10250 3890 50  0001 C CNN
F 3 "" H 10350 4000 50  0001 C CNN
	1    10250 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 4200 10150 4300
Wire Wire Line
	10050 4000 10050 4100
Wire Wire Line
	10050 4100 10150 4100
$Comp
L agg-kicad:GND #PWR043
U 1 1 5B2D0303
P 10150 4500
F 0 "#PWR043" H 10020 4540 50  0001 L CNN
F 1 "GND" H 10150 4400 50  0000 C CNN
F 2 "" H 10150 4500 60  0000 C CNN
F 3 "" H 10150 4500 60  0000 C CNN
	1    10150 4500
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:ESD_DIODE D2
U 1 1 5B2D030B
P 9850 4150
F 0 "D2" V 9850 4208 50  0000 L CNN
F 1 "ESD_DIODE" H 9800 4050 50  0001 L CNN
F 2 "agg:0402" H 9800 3950 50  0001 L CNN
F 3 "" H 9750 4150 50  0001 C CNN
F 4 "2368169" H 9800 3850 50  0001 L CNN "Farnell"
	1    9850 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	9850 4300 10150 4300
Connection ~ 10150 4300
Wire Wire Line
	10150 4300 10150 4500
Wire Wire Line
	9850 4000 10050 4000
$Comp
L agg-kicad:C C20
U 1 1 5B2E011E
P 3800 1800
F 0 "C20" H 3850 1995 50  0000 C CNN
F 1 "10nF" H 3850 1904 50  0000 C CNN
F 2 "agg:0402" H 3800 1800 50  0001 C CNN
F 3 "" H 3800 1800 50  0001 C CNN
F 4 "2332514" H 3800 1800 50  0001 C CNN "Farnell"
	1    3800 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1600 3600 1500
Wire Wire Line
	3600 1700 3600 1800
Wire Wire Line
	3600 1800 3050 1800
Wire Wire Line
	3900 1800 4100 1800
Wire Wire Line
	3800 1800 3600 1800
Connection ~ 3600 1800
Wire Wire Line
	7050 1300 6550 1300
$Comp
L agg-kicad:GND #PWR037
U 1 1 5B2FE065
P 7900 4300
F 0 "#PWR037" H 7770 4340 50  0001 L CNN
F 1 "GND" H 7900 4200 50  0000 C CNN
F 2 "" H 7900 4300 60  0000 C CNN
F 3 "" H 7900 4300 60  0000 C CNN
	1    7900 4300
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:GND #PWR039
U 1 1 5B2FE12E
P 8400 4300
F 0 "#PWR039" H 8270 4340 50  0001 L CNN
F 1 "GND" H 8400 4200 50  0000 C CNN
F 2 "" H 8400 4300 60  0000 C CNN
F 3 "" H 8400 4300 60  0000 C CNN
	1    8400 4300
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:GND #PWR041
U 1 1 5B2FE181
P 8900 4300
F 0 "#PWR041" H 8770 4340 50  0001 L CNN
F 1 "GND" H 8900 4200 50  0000 C CNN
F 2 "" H 8900 4300 60  0000 C CNN
F 3 "" H 8900 4300 60  0000 C CNN
	1    8900 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 4300 7900 4200
Wire Wire Line
	8400 4200 8400 4300
Wire Wire Line
	8900 4200 8900 4300
Wire Wire Line
	8900 4100 8900 4000
Wire Wire Line
	8900 4000 8700 4000
Wire Wire Line
	8600 4000 8400 4000
Wire Wire Line
	8400 4000 8400 4100
Wire Wire Line
	8400 4000 8200 4000
Connection ~ 8400 4000
Connection ~ 8900 4000
Wire Wire Line
	8100 4000 7900 4000
Wire Wire Line
	7900 4000 7900 4100
Wire Wire Line
	7900 4000 7700 4000
Connection ~ 7900 4000
Wire Wire Line
	7600 4000 7200 4000
Wire Wire Line
	7100 4000 6600 4000
$Comp
L agg-kicad:L L4
U 1 1 5B31F00C
P 7600 4000
F 0 "L4" H 7700 4200 50  0000 C CNN
F 1 "56nH" H 7700 4100 50  0000 C CNN
F 2 "agg:0603" H 7600 4000 50  0001 C CNN
F 3 "" H 7600 4000 50  0001 C CNN
F 4 "1711807" H 7600 4000 50  0001 C CNN "Farnell"
	1    7600 4000
	1    0    0    -1  
$EndComp
Text Notes 3900 1900 0    50   ~ 0
Large
$Comp
L agg-kicad:L L10
U 1 1 5B32AA64
P 8600 4000
F 0 "L10" H 8650 4178 50  0000 C CNN
F 1 "18nH" H 8650 4087 50  0000 C CNN
F 2 "agg:0402" H 8600 4000 50  0001 C CNN
F 3 "" H 8600 4000 50  0001 C CNN
F 4 "1762622" H 8600 4000 50  0001 C CNN "Farnell"
	1    8600 4000
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:C C30
U 1 1 5B32DFF3
P 8900 4100
F 0 "C30" V 8904 4158 50  0000 L CNN
F 1 "8.2pF" V 8995 4158 50  0000 L CNN
F 2 "agg:0402" H 8900 4100 50  0001 C CNN
F 3 "" H 8900 4100 50  0001 C CNN
F 4 "1865418" V 8900 4100 50  0001 C CNN "Farnell"
	1    8900 4100
	0    1    1    0   
$EndComp
Text Notes 6200 3450 0    50   ~ 0
See also http://tt7hab.blogspot.com/2017/05/the-tt7f-v15-revision.html
Text Notes 5750 4950 0    50   ~ 0
Zload = (0.2815)/(2 * pi * 434MHz * 1.25pF)  *  e^j * 49.0524degrees\nZload = 54.12 + 62.38j ohm at 434MHz
Text Notes 5750 5250 0    50   ~ 0
Vdd = sqrt(0.02/ (2*pi^2 * 434MHz * 1.25pF) ) = 1.37V\nIdd = 2 * pi^2 * 434MHz * 1.25pF * Vdd = 0.0146A\nRdc = (3.3V - Vdd) / Idd = 132.1ohm (set PA_PWR_LVL register appropriately)\n
$Comp
L agg-kicad:C C35
U 1 1 5B267FE0
P 9300 4100
F 0 "C35" V 9304 4158 50  0000 L CNN
F 1 "C" V 9395 4158 50  0000 L CNN
F 2 "agg:0603" H 9300 4100 50  0001 C CNN
F 3 "" H 9300 4100 50  0001 C CNN
	1    9300 4100
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:L L14
U 1 1 5B26813B
P 9550 4000
F 0 "L14" H 9600 4178 50  0000 C CNN
F 1 "L" H 9600 4087 50  0000 C CNN
F 2 "agg:0603" H 9550 4000 50  0001 C CNN
F 3 "" H 9550 4000 50  0001 C CNN
	1    9550 4000
	1    0    0    -1  
$EndComp
Text Notes 9350 3750 0    50   ~ 0
Impedance matching\n(match to 50ohms as filter matches to Zload)\nValues unknown
$Comp
L agg-kicad:GND #PWR0101
U 1 1 5B268E54
P 9300 4300
F 0 "#PWR0101" H 9170 4340 50  0001 L CNN
F 1 "GND" H 9300 4200 50  0000 C CNN
F 2 "" H 9300 4300 60  0000 C CNN
F 3 "" H 9300 4300 60  0000 C CNN
	1    9300 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 4000 9300 4000
Wire Wire Line
	9300 4200 9300 4300
Wire Wire Line
	9850 4300 9850 4250
Wire Wire Line
	9850 4050 9850 4000
Wire Notes Line
	7850 3750 7850 4550
Wire Notes Line
	7850 4550 9200 4550
Wire Notes Line
	9200 4550 9200 3750
Wire Notes Line
	9200 3750 7850 3750
Text Notes 8600 4550 0    50   ~ 0
Low pass filter
Text Notes 7050 4150 0    50   ~ 0
LC resonant tank
$Comp
L agg-kicad:C C34
U 1 1 5B288A1A
P 9200 1400
F 0 "C34" V 9204 1458 50  0000 L CNN
F 1 "C" V 9295 1458 50  0000 L CNN
F 2 "agg:0603" H 9200 1400 50  0001 C CNN
F 3 "" H 9200 1400 50  0001 C CNN
	1    9200 1400
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:L L13
U 1 1 5B288A21
P 9400 1300
F 0 "L13" H 9450 1478 50  0000 C CNN
F 1 "L" H 9450 1387 50  0000 C CNN
F 2 "agg:0603" H 9400 1300 50  0001 C CNN
F 3 "" H 9400 1300 50  0001 C CNN
	1    9400 1300
	1    0    0    -1  
$EndComp
Text Notes 9250 1050 0    50   ~ 0
Impedance matching\n(match to 50ohms as filter matches to Zload)\nValues unknown
$Comp
L agg-kicad:GND #PWR0102
U 1 1 5B288A29
P 9200 1600
F 0 "#PWR0102" H 9070 1640 50  0001 L CNN
F 1 "GND" H 9200 1500 50  0000 C CNN
F 2 "" H 9200 1600 60  0000 C CNN
F 3 "" H 9200 1600 60  0000 C CNN
	1    9200 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 1300 9200 1400
Wire Wire Line
	9200 1500 9200 1600
Wire Wire Line
	8800 1300 9200 1300
Text Notes 7950 2150 0    50   ~ 0
Zload = (0.2815)/(2 * pi * 144MHz * 1.25pF)  *  e^j * 49.0524degrees\nZload = 163.1 + 188.0j ohm at 144MHz
Text Notes 7950 2500 0    50   ~ 0
Vdd = sqrt(0.01/ (2*pi^2 * 144MHz * 1.25pF) ) = 1.68V\nIdd = 2 * pi^2 * 144MHz * 1.25pF * Vdd = 0.00596A\nRdc = (3.3V - Vdd) / Idd = 272.2ohm (set PA_PWR_LVL register appropriately)\n
Wire Notes Line
	9050 1850 9050 650 
Wire Notes Line
	7650 650  7650 1850
Text Notes 8450 1850 0    50   ~ 0
Low pass filter
Text Notes 3250 1300 0    50   ~ 0
Inductor sets DC bias,\nswitch can only pass RF \n(not DC)
Wire Wire Line
	9300 4100 9300 4000
Wire Wire Line
	9550 4000 9300 4000
Connection ~ 9300 4000
Wire Wire Line
	9650 4000 9850 4000
Connection ~ 9850 4000
Wire Wire Line
	9400 1300 9200 1300
Connection ~ 9200 1300
Wire Wire Line
	9500 1300 9700 1300
Connection ~ 9700 1300
$Comp
L agg-kicad:BGS12AL7 IC4
U 1 1 5B2DFFAE
P 4500 1500
F 0 "IC4" H 4500 985 50  0000 C CNN
F 1 "BGS12AL7" H 4500 1076 50  0000 C CNN
F 2 "agg:TSLP7-4" H 4200 1000 50  0001 L CNN
F 3 "http://www.infineon.com/dgdl/Infineon-BGS12AL7_4-DS-v01_03-en.pdf?fileId=db3a30431b3e89eb011b458d7a767d88" H 4200 900 50  0001 L CNN
F 4 "2480594" H 4200 800 50  0001 L CNN "Farnell"
	1    4500 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	4000 1600 4100 1600
Wire Wire Line
	4100 1500 4000 1500
Wire Wire Line
	4000 1500 4000 1600
Connection ~ 4000 1600
Wire Wire Line
	4950 1500 4900 1500
Wire Wire Line
	4950 1600 4900 1600
Wire Wire Line
	4900 1300 4950 1300
Wire Wire Line
	4900 1800 4950 1800
$Comp
L agg-kicad:GND #PWR0104
U 1 1 5B30B360
P 3150 1400
F 0 "#PWR0104" H 3020 1440 50  0001 L CNN
F 1 "GND" H 3150 1300 50  0000 C CNN
F 2 "" H 3150 1400 60  0000 C CNN
F 3 "" H 3150 1400 60  0000 C CNN
	1    3150 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1400 3050 1300
Wire Wire Line
	3150 1400 3150 1300
Wire Wire Line
	3150 1300 3050 1300
Connection ~ 3050 1300
$Comp
L agg-kicad:L L3
U 1 1 5B314416
P 7600 1300
F 0 "L3" H 7650 1478 50  0000 C CNN
F 1 "100nH" H 7650 1387 50  0000 C CNN
F 2 "agg:0402" H 7600 1300 50  0001 C CNN
F 3 "" H 7600 1300 50  0001 C CNN
F 4 "1762632" H 7600 1300 50  0001 C CNN "Farnell"
	1    7600 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 1300 8000 1300
Wire Wire Line
	7350 1300 7600 1300
Wire Notes Line
	7650 650  9050 650 
Wire Notes Line
	7650 1850 9050 1850
$Comp
L 3v3_switched:3v3_switched #PWR?
U 1 1 5B455DF5
P 1400 1200
F 0 "#PWR?" H 1400 1310 50  0001 L CNN
F 1 "3v3_switched" H 1400 1324 50  0000 C CNN
F 2 "" H 1400 1200 50  0001 C CNN
F 3 "" H 1400 1200 50  0001 C CNN
	1    1400 1200
	1    0    0    -1  
$EndComp
$Comp
L 3v3_switched:3v3_switched #PWR?
U 1 1 5B456116
P 3600 1500
F 0 "#PWR?" H 3600 1610 50  0001 L CNN
F 1 "3v3_switched" H 3600 1624 50  0000 C CNN
F 2 "" H 3600 1500 50  0001 C CNN
F 3 "" H 3600 1500 50  0001 C CNN
	1    3600 1500
	1    0    0    -1  
$EndComp
$Comp
L 3v3_switched:3v3_switched #PWR?
U 1 1 5B456364
P 5100 1800
F 0 "#PWR?" H 5100 1910 50  0001 L CNN
F 1 "3v3_switched" H 5100 1924 50  0000 C CNN
F 2 "" H 5100 1800 50  0001 C CNN
F 3 "" H 5100 1800 50  0001 C CNN
	1    5100 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1800 5100 1850
Wire Wire Line
	5100 1850 4950 1850
Wire Wire Line
	4950 1850 4950 1800
Wire Notes Line
	5700 500  5700 5400
$Comp
L agg-kicad:TCXO Y?
U 1 1 5B4A0C26
P 1450 1900
F 0 "Y?" H 1450 2125 50  0000 C CNN
F 1 "TCXO" H 1450 2034 50  0000 C CNN
F 2 "agg:TG-5006CG" H 1250 1900 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1804153.pdf" H 1250 1900 50  0001 C CNN
F 4 "2405785" H 1250 1600 50  0001 L CNN "Farnell"
	1    1450 1900
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:C C?
U 1 1 5B4A15A9
P 1000 2000
F 0 "C?" H 1050 2195 50  0000 C CNN
F 1 "10nF" H 1050 2104 50  0000 C CNN
F 2 "agg:0402" H 1000 2000 50  0001 C CNN
F 3 "" H 1000 2000 50  0001 C CNN
F 4 "2332514" H 1000 2000 50  0001 C CNN "Farnell"
	1    1000 2000
	0    -1   -1   0   
$EndComp
$Comp
L agg-kicad:GND #PWR?
U 1 1 5B4A1958
P 1000 2050
F 0 "#PWR?" H 870 2090 50  0001 L CNN
F 1 "GND" H 1000 1950 50  0000 C CNN
F 2 "" H 1000 2050 60  0000 C CNN
F 3 "" H 1000 2050 60  0000 C CNN
	1    1000 2050
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:1v8 #PWR?
U 1 1 5B4A19DA
P 1000 1850
F 0 "#PWR?" H 1000 1960 50  0001 L CNN
F 1 "1v8" H 1000 1974 50  0000 C CNN
F 2 "" H 1000 1850 50  0001 C CNN
F 3 "" H 1000 1850 50  0001 C CNN
	1    1000 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 1900 1150 1900
Wire Wire Line
	1000 1900 1000 1850
Connection ~ 1000 1900
Wire Wire Line
	1000 2000 1000 2050
Wire Wire Line
	1000 2000 1150 2000
Connection ~ 1000 2000
$Comp
L agg-kicad:C C?
U 1 1 5B4AF076
P 1850 1900
F 0 "C?" H 1900 1970 50  0000 C CNN
F 1 "100pF" H 1900 1830 50  0000 C CNN
F 2 "agg:0402" H 1850 1900 50  0001 C CNN
F 3 "" H 1850 1900 50  0001 C CNN
F 4 "2496792" H 1850 1900 50  0001 C CNN "Farnell"
	1    1850 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1650 1850 1600
Wire Wire Line
	1950 1900 2050 1900
Wire Wire Line
	1750 1900 1850 1900
Wire Notes Line
	500  3100 11200 3100
Wire Notes Line
	5700 5400 11200 5400
$EndSCHEMATC
