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
P 1750 1950
F 0 "IC3" H 1450 2650 50  0000 L CNN
F 1 "Si4460" H 1450 1250 50  0000 L CNN
F 2 "agg:QFN-20-EP-SI" H 1450 1150 50  0001 L CNN
F 3 "" H 1350 2550 50  0001 C CNN
F 4 "2462635" H 1450 1050 50  0001 L CNN "Farnell"
	1    1750 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 2150 1350 2150
Wire Wire Line
	1200 2250 1350 2250
Wire Wire Line
	1200 2350 1350 2350
Wire Wire Line
	1200 2450 1350 2450
$Comp
L agg-kicad:GND #PWR032
U 1 1 5A68B038
P 1150 1750
F 0 "#PWR032" H 1020 1790 50  0001 L CNN
F 1 "GND" H 1150 1650 50  0000 C CNN
F 2 "" H 1150 1750 60  0000 C CNN
F 3 "" H 1150 1750 60  0000 C CNN
	1    1150 1750
	1    0    0    -1  
$EndComp
NoConn ~ 2150 1850
NoConn ~ 2150 1950
NoConn ~ 2150 2050
NoConn ~ 2150 2150
Wire Wire Line
	2150 2250 2250 2250
Text Label 4250 1650 0    60   ~ 0
RADIO_TX_144
Wire Wire Line
	1200 2550 1350 2550
$Comp
L agg-kicad:C C18
U 1 1 5A68B322
P 950 1550
F 0 "C18" H 1000 1620 50  0000 C CNN
F 1 "100nF" H 1000 1480 50  0000 C CNN
F 2 "agg:0402" H 950 1550 50  0001 C CNN
F 3 "" H 950 1550 50  0001 C CNN
F 4 "2533923" H -900 -50 50  0001 C CNN "Farnell"
	1    950  1550
	0    -1   -1   0   
$EndComp
$Comp
L agg-kicad:C C17
U 1 1 5A68B351
P 700 1550
F 0 "C17" H 750 1620 50  0000 C CNN
F 1 "100pF" H 750 1480 50  0000 C CNN
F 2 "agg:0402" H 700 1550 50  0001 C CNN
F 3 "" H 700 1550 50  0001 C CNN
F 4 "2496792" H 700 1550 50  0001 C CNN "Farnell"
	1    700  1550
	0    -1   -1   0   
$EndComp
$Comp
L agg-kicad:C C19
U 1 1 5A68B3B6
P 1150 1550
F 0 "C19" H 1200 1620 50  0000 C CNN
F 1 "1uF" H 1200 1480 50  0000 C CNN
F 2 "agg:0402" H 1150 1550 50  0001 C CNN
F 3 "" H 1150 1550 50  0001 C CNN
F 4 "1758879" H 1150 1550 60  0001 C CNN "Farnell"
	1    1150 1550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	950  1650 950  1550
Connection ~ 1150 1650
Wire Wire Line
	700  1650 700  1550
Connection ~ 950  1650
Wire Wire Line
	1150 1550 1150 1650
Wire Wire Line
	1350 1550 1250 1550
Wire Wire Line
	1250 1550 1250 1650
Connection ~ 1250 1650
Wire Wire Line
	1350 1450 1250 1450
Wire Wire Line
	1250 1450 1250 1350
Wire Wire Line
	700  1250 700  1350
Wire Wire Line
	950  1350 950  1450
Connection ~ 700  1350
Wire Wire Line
	700  1350 700  1450
Wire Wire Line
	2150 1550 2350 1550
Wire Wire Line
	2350 1450 2150 1450
Wire Wire Line
	2150 1350 2350 1350
NoConn ~ 2150 1650
$Comp
L agg-kicad:COAX P3
U 1 1 5A68BF1C
P 9150 1450
F 0 "P3" H 9150 1550 50  0000 C CNN
F 1 "144MHz" H 9150 1300 50  0000 C CNN
F 2 "Jerboa:GND_PLANE_ANT" H 9150 1240 50  0001 C CNN
F 3 "" H 9250 1350 50  0001 C CNN
	1    9150 1450
	1    0    0    -1  
$EndComp
Text Label 5600 1350 2    60   ~ 0
RADIO_TX_144
Wire Wire Line
	9050 1550 9050 1650
Wire Notes Line
	500  3100 11200 3100
NoConn ~ 1350 1850
Text HLabel 1200 2150 0    60   Input ~ 0
RADIO_SDN
Text HLabel 1200 2250 0    60   Input ~ 0
RADIO_SCLK
Text HLabel 1200 2350 0    60   Input ~ 0
RADIO_SDO
Text HLabel 1200 2450 0    60   Input ~ 0
RADIO_SDI
Text HLabel 1200 2550 0    60   Input ~ 0
RADIO_nSEL
Text HLabel 2250 2250 2    60   Input ~ 0
RADIO_nIRQ
Wire Wire Line
	700  1650 950  1650
Wire Wire Line
	1150 1650 1150 1750
Wire Wire Line
	1150 1650 1250 1650
Wire Wire Line
	950  1650 1150 1650
Wire Wire Line
	1250 1650 1350 1650
Wire Wire Line
	1250 1350 1350 1350
Wire Wire Line
	700  1350 950  1350
Wire Wire Line
	1150 1450 1150 1350
Wire Wire Line
	1150 1350 1250 1350
Connection ~ 1250 1350
Wire Wire Line
	950  1350 1150 1350
Connection ~ 950  1350
Connection ~ 1150 1350
Text HLabel 1200 1950 0    60   Input ~ 0
SI4460_XIN
Wire Wire Line
	1200 1950 1350 1950
$Comp
L agg-kicad:GND #PWR040
U 1 1 5B25FF17
P 7050 1700
F 0 "#PWR040" H 6920 1740 50  0001 L CNN
F 1 "GND" H 7050 1600 50  0000 C CNN
F 2 "" H 7050 1700 60  0000 C CNN
F 3 "" H 7050 1700 60  0000 C CNN
	1    7050 1700
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:GND #PWR042
U 1 1 5B25FF40
P 7350 1700
F 0 "#PWR042" H 7220 1740 50  0001 L CNN
F 1 "GND" H 7350 1600 50  0000 C CNN
F 2 "" H 7350 1700 60  0000 C CNN
F 3 "" H 7350 1700 60  0000 C CNN
	1    7350 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 1350 8950 1450
Wire Wire Line
	8950 1450 9050 1450
$Comp
L agg-kicad:GND #PWR044
U 1 1 5B261E77
P 9050 1850
F 0 "#PWR044" H 8920 1890 50  0001 L CNN
F 1 "GND" H 9050 1750 50  0000 C CNN
F 2 "" H 9050 1850 60  0000 C CNN
F 3 "" H 9050 1850 60  0000 C CNN
	1    9050 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 1600 7050 1700
Wire Wire Line
	7350 1600 7350 1700
Text Notes 3800 5150 0    60   ~ 0
\n
Text Notes 4500 3150 0    60   ~ 0
Si4460\n\n
Text Notes 9500 3050 0    60   ~ 0
Si4460 Antenna Matching - 169MHz
Text Notes 5300 2950 0    50   ~ 0
https://www.silabs.com/documents/public/application-notes/AN627.pdf\n169MHz matching (Direct Tie CLE)
$Comp
L agg-kicad:L L2
U 1 1 5B22AA33
P 2900 1650
F 0 "L2" V 2900 1350 50  0000 L CNN
F 1 "250nH" V 3000 1350 50  0000 L CNN
F 2 "agg:0603" H 2900 1650 50  0001 C CNN
F 3 "" H 2900 1650 50  0001 C CNN
F 4 "81-LQW18ANR22J8ZD" V 2900 1650 50  0001 C CNN "Mouser"
	1    2900 1650
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:C C23
U 1 1 5B22ACC2
P 6100 1350
F 0 "C23" H 6100 1550 50  0000 C CNN
F 1 "39pF" H 6100 1450 50  0000 C CNN
F 2 "agg:0402" H 6100 1350 50  0001 C CNN
F 3 "" H 6100 1350 50  0001 C CNN
F 4 "2524782" H 6100 1350 50  0001 C CNN "Farnell"
	1    6100 1350
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:L L6
U 1 1 5B22ADF8
P 6250 1350
F 0 "L6" H 6300 1528 50  0000 C CNN
F 1 "22nH" H 6300 1437 50  0000 C CNN
F 2 "agg:0402" H 6250 1350 50  0001 C CNN
F 3 "" H 6250 1350 50  0001 C CNN
F 4 "2840114" H 6250 1350 50  0001 C CNN "Farnell"
	1    6250 1350
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:C C26
U 1 1 5B22AE86
P 6400 1400
F 0 "C26" V 6404 1458 50  0000 L CNN
F 1 "6.8pF" V 6495 1458 50  0000 L CNN
F 2 "agg:0402" H 6400 1400 50  0001 C CNN
F 3 "" H 6400 1400 50  0001 C CNN
F 4 "2310317" H -600 -150 50  0001 C CNN "Farnell"
	1    6400 1400
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:GND #PWR038
U 1 1 5B22AFE6
P 6400 1550
F 0 "#PWR038" H 6270 1590 50  0001 L CNN
F 1 "GND" H 6400 1450 50  0000 C CNN
F 2 "" H 6400 1550 60  0000 C CNN
F 3 "" H 6400 1550 60  0000 C CNN
	1    6400 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 1350 6250 1350
Wire Wire Line
	6350 1350 6400 1350
Wire Wire Line
	6400 1400 6400 1350
Connection ~ 6400 1350
Wire Wire Line
	6400 1550 6400 1500
$Comp
L agg-kicad:C C28
U 1 1 5B283320
P 7050 1500
F 0 "C28" V 7054 1558 50  0000 L CNN
F 1 "18pF" V 7145 1558 50  0000 L CNN
F 2 "agg:0402" H 7050 1500 50  0001 C CNN
F 3 "" H 7050 1500 50  0001 C CNN
F 4 "2522556" H -600 -150 50  0001 C CNN "Farnell"
	1    7050 1500
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:L L11
U 1 1 5B28CE00
P 7150 1350
F 0 "L11" H 7200 1528 50  0000 C CNN
F 1 "68nH" H 7200 1437 50  0000 C CNN
F 2 "agg:0402" H 7150 1350 50  0001 C CNN
F 3 "" H 7150 1350 50  0001 C CNN
F 4 "1669641" H 7150 1350 50  0001 C CNN "Farnell"
	1    7150 1350
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:C C29
U 1 1 5B28CFFB
P 7150 1050
F 0 "C29" H 7200 1245 50  0000 C CNN
F 1 "3pF" H 7200 1154 50  0000 C CNN
F 2 "agg:0402" H 7150 1050 50  0001 C CNN
F 3 "" H 7150 1050 50  0001 C CNN
F 4 "1758933" H 7150 1050 50  0001 C CNN "Farnell"
	1    7150 1050
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:L L12
U 1 1 5B28D27C
P 7450 1350
F 0 "L12" H 7500 1528 50  0000 C CNN
F 1 "47nH" H 7500 1437 50  0000 C CNN
F 2 "agg:0402" H 7450 1350 50  0001 C CNN
F 3 "" H 7450 1350 50  0001 C CNN
F 4 "1343090" H -600 -150 50  0001 C CNN "Farnell"
	1    7450 1350
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:C C33
U 1 1 5B28D3E1
P 7750 1350
F 0 "C33" H 7800 1545 50  0000 C CNN
F 1 "470pF" H 7800 1454 50  0000 C CNN
F 2 "agg:0402" H 7750 1350 50  0001 C CNN
F 3 "" H 7750 1350 50  0001 C CNN
F 4 "1327654" H 7750 1350 50  0001 C CNN "Farnell"
	1    7750 1350
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:C C32
U 1 1 5B28D543
P 7450 1050
F 0 "C32" H 7500 1245 50  0000 C CNN
F 1 "2pF" H 7500 1154 50  0000 C CNN
F 2 "agg:0402" H 7450 1050 50  0001 C CNN
F 3 "" H 7450 1050 50  0001 C CNN
F 4 "1758932" H 7450 1050 50  0001 C CNN "Farnell"
	1    7450 1050
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:C C31
U 1 1 5B28D68A
P 7350 1500
F 0 "C31" V 7354 1558 50  0000 L CNN
F 1 "18pF" V 7445 1558 50  0000 L CNN
F 2 "agg:0402" H 7350 1500 50  0001 C CNN
F 3 "" H 7350 1500 50  0001 C CNN
F 4 "2522556" H -600 -150 50  0001 C CNN "Farnell"
	1    7350 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	7750 1350 7650 1350
Wire Wire Line
	7150 1350 7050 1350
Wire Wire Line
	7050 1500 7050 1350
Connection ~ 7050 1350
Wire Wire Line
	7350 1500 7350 1350
Wire Wire Line
	7250 1350 7350 1350
Connection ~ 7350 1350
Wire Wire Line
	7350 1350 7450 1350
Wire Wire Line
	7150 1050 7050 1050
Wire Wire Line
	7050 1050 7050 1350
Wire Wire Line
	7250 1050 7350 1050
Wire Wire Line
	7350 1050 7350 1350
Wire Wire Line
	7450 1050 7350 1050
Connection ~ 7350 1050
Wire Wire Line
	7650 1050 7650 1350
Connection ~ 7650 1350
Wire Wire Line
	7650 1350 7550 1350
Wire Wire Line
	7550 1050 7650 1050
Text Notes 1500 3850 0    50   ~ 0
Antenna GND plane pass through
$Comp
L agg-kicad:TESTPAD TP1
U 1 1 5B23257E
P 1950 3900
F 0 "TP1" H 2047 3900 50  0000 L CNN
F 1 "TESTPAD" H 1950 3825 50  0001 L CNN
F 2 "Jerboa:ANT_GND_PASSTHROUGH" H 1950 3750 50  0001 L CNN
F 3 "" H 1950 3900 50  0001 C CNN
F 4 "https://www.ebay.co.uk/itm/Ernie-Ball-Custom-Gauge-Guitar-Single-Strings-Electric-or-Acoustic-Pack-6-13-/360959212478" H 1950 3900 50  0001 C CNN "Ebay"
	1    1950 3900
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:GND #PWR033
U 1 1 5B232690
P 1900 3950
F 0 "#PWR033" H 1770 3990 50  0001 L CNN
F 1 "GND" H 1900 3850 50  0000 C CNN
F 2 "" H 1900 3950 60  0000 C CNN
F 3 "" H 1900 3950 60  0000 C CNN
	1    1900 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 3950 1900 3900
Wire Wire Line
	1900 3900 1950 3900
Wire Wire Line
	2350 1850 2350 1550
Text Label 4250 1550 0    60   ~ 0
RADIO_TX_434
$Comp
L agg-kicad:GND #PWR035
U 1 1 5B29AF16
P 3300 1650
F 0 "#PWR035" H 3170 1690 50  0001 L CNN
F 1 "GND" V 3300 1500 50  0000 C CNN
F 2 "" H 3300 1650 60  0000 C CNN
F 3 "" H 3300 1650 60  0000 C CNN
	1    3300 1650
	1    0    0    -1  
$EndComp
Text HLabel 4250 1350 2    50   Input ~ 0
FREQ_CTRL
$Comp
L agg-kicad:ESD_DIODE D3
U 1 1 5B2C48DB
P 8750 1500
F 0 "D3" V 8750 1558 50  0000 L CNN
F 1 "ESD_DIODE" H 8700 1400 50  0001 L CNN
F 2 "agg:0402" H 8700 1300 50  0001 L CNN
F 3 "" H 8650 1500 50  0001 C CNN
F 4 "2368169" H 8700 1200 50  0001 L CNN "Farnell"
	1    8750 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	8750 1600 8750 1650
Wire Wire Line
	8750 1650 9050 1650
Connection ~ 9050 1650
Wire Wire Line
	9050 1650 9050 1850
Wire Wire Line
	8750 1400 8750 1350
Wire Wire Line
	8750 1350 8950 1350
Text Label 5700 4000 2    60   ~ 0
RADIO_TX_434
Wire Notes Line
	4950 500  4950 5700
Text Notes 9500 3250 0    60   ~ 0
Si4460 Antenna Matching - 434MHz
Text Notes 5300 3700 0    50   ~ 0
https://www.silabs.com/documents/public/application-notes/AN627.pdf\n434MHz matching (Split Tx CLE)
$Comp
L agg-kicad:C C21
U 1 1 5B2CF91C
P 6200 4000
F 0 "C21" H 6250 4195 50  0000 C CNN
F 1 "18pF" H 6250 4104 50  0000 C CNN
F 2 "agg:0402" H 6200 4000 50  0001 C CNN
F 3 "" H 6200 4000 50  0001 C CNN
F 4 "2522556" H 0   0   50  0001 C CNN "Farnell"
	1    6200 4000
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:C C25
U 1 1 5B2CFB81
P 7000 4100
F 0 "C25" V 7004 4158 50  0000 L CNN
F 1 "8.2pF" V 7095 4158 50  0000 L CNN
F 2 "agg:0402" H 7000 4100 50  0001 C CNN
F 3 "" H 7000 4100 50  0001 C CNN
F 4 "1865418" V 7000 4100 50  0001 C CNN "Farnell"
	1    7000 4100
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:L L7
U 1 1 5B2CFEFA
P 7200 4000
F 0 "L7" H 7250 4178 50  0000 C CNN
F 1 "18nH" H 7250 4087 50  0000 C CNN
F 2 "agg:0402" H 7200 4000 50  0001 C CNN
F 3 "" H 7200 4000 50  0001 C CNN
F 4 "1762622" H 7200 4000 50  0001 C CNN "Farnell"
	1    7200 4000
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:C C27
U 1 1 5B2CFF74
P 7500 4100
F 0 "C27" V 7504 4158 50  0000 L CNN
F 1 "15pF" V 7595 4158 50  0000 L CNN
F 2 "agg:0402" H 7500 4100 50  0001 C CNN
F 3 "" H 7500 4100 50  0001 C CNN
F 4 "2520723" H 7500 4100 50  0001 C CNN "Farnell"
	1    7500 4100
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:COAX P2
U 1 1 5B2D02F9
P 9350 4100
F 0 "P2" H 9350 4200 50  0000 C CNN
F 1 "434MHz" H 9350 3950 50  0000 C CNN
F 2 "Jerboa:GND_PLANE_ANT" H 9350 3890 50  0001 C CNN
F 3 "" H 9450 4000 50  0001 C CNN
	1    9350 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 4200 9250 4300
Wire Wire Line
	9150 4000 9150 4100
Wire Wire Line
	9150 4100 9250 4100
$Comp
L agg-kicad:GND #PWR043
U 1 1 5B2D0303
P 9250 4500
F 0 "#PWR043" H 9120 4540 50  0001 L CNN
F 1 "GND" H 9250 4400 50  0000 C CNN
F 2 "" H 9250 4500 60  0000 C CNN
F 3 "" H 9250 4500 60  0000 C CNN
	1    9250 4500
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:ESD_DIODE D2
U 1 1 5B2D030B
P 8950 4150
F 0 "D2" V 8950 4208 50  0000 L CNN
F 1 "ESD_DIODE" H 8900 4050 50  0001 L CNN
F 2 "agg:0402" H 8900 3950 50  0001 L CNN
F 3 "" H 8850 4150 50  0001 C CNN
F 4 "2368169" H 8900 3850 50  0001 L CNN "Farnell"
	1    8950 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	8950 4300 9250 4300
Connection ~ 9250 4300
Wire Wire Line
	9250 4300 9250 4500
Wire Wire Line
	8950 4000 9150 4000
$Comp
L agg-kicad:C C20
U 1 1 5B2E011E
P 3100 1850
F 0 "C20" H 3150 2045 50  0000 C CNN
F 1 "10nF" H 3150 1954 50  0000 C CNN
F 2 "agg:0402" H 3100 1850 50  0001 C CNN
F 3 "" H 3100 1850 50  0001 C CNN
F 4 "2332514" H 3100 1850 50  0001 C CNN "Farnell"
	1    3100 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1650 2900 1550
Wire Wire Line
	2900 1750 2900 1850
Wire Wire Line
	2900 1850 2350 1850
Wire Wire Line
	3200 1850 3400 1850
Wire Wire Line
	3100 1850 2900 1850
Connection ~ 2900 1850
Wire Wire Line
	6100 1350 5600 1350
$Comp
L agg-kicad:GND #PWR037
U 1 1 5B2FE065
P 7000 4300
F 0 "#PWR037" H 6870 4340 50  0001 L CNN
F 1 "GND" H 7000 4200 50  0000 C CNN
F 2 "" H 7000 4300 60  0000 C CNN
F 3 "" H 7000 4300 60  0000 C CNN
	1    7000 4300
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:GND #PWR039
U 1 1 5B2FE12E
P 7500 4300
F 0 "#PWR039" H 7370 4340 50  0001 L CNN
F 1 "GND" H 7500 4200 50  0000 C CNN
F 2 "" H 7500 4300 60  0000 C CNN
F 3 "" H 7500 4300 60  0000 C CNN
	1    7500 4300
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:GND #PWR041
U 1 1 5B2FE181
P 8000 4300
F 0 "#PWR041" H 7870 4340 50  0001 L CNN
F 1 "GND" H 8000 4200 50  0000 C CNN
F 2 "" H 8000 4300 60  0000 C CNN
F 3 "" H 8000 4300 60  0000 C CNN
	1    8000 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 4300 7000 4200
Wire Wire Line
	7500 4200 7500 4300
Wire Wire Line
	8000 4200 8000 4300
Wire Wire Line
	8000 4100 8000 4000
Wire Wire Line
	8000 4000 7800 4000
Wire Wire Line
	7700 4000 7500 4000
Wire Wire Line
	7500 4000 7500 4100
Wire Wire Line
	7500 4000 7300 4000
Connection ~ 7500 4000
Connection ~ 8000 4000
Wire Wire Line
	7200 4000 7000 4000
Wire Wire Line
	7000 4000 7000 4100
Wire Wire Line
	7000 4000 6800 4000
Connection ~ 7000 4000
Wire Wire Line
	6700 4000 6300 4000
Wire Wire Line
	6200 4000 5700 4000
$Comp
L agg-kicad:L L4
U 1 1 5B31F00C
P 6700 4000
F 0 "L4" H 6800 4200 50  0000 C CNN
F 1 "56nH" H 6800 4100 50  0000 C CNN
F 2 "agg:0603" H 6700 4000 50  0001 C CNN
F 3 "" H 6700 4000 50  0001 C CNN
F 4 "1711807" H 6700 4000 50  0001 C CNN "Farnell"
	1    6700 4000
	1    0    0    -1  
$EndComp
Text Notes 3200 1950 0    50   ~ 0
Large
$Comp
L agg-kicad:L L10
U 1 1 5B32AA64
P 7700 4000
F 0 "L10" H 7750 4178 50  0000 C CNN
F 1 "18nH" H 7750 4087 50  0000 C CNN
F 2 "agg:0402" H 7700 4000 50  0001 C CNN
F 3 "" H 7700 4000 50  0001 C CNN
F 4 "1762622" H 7700 4000 50  0001 C CNN "Farnell"
	1    7700 4000
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:C C30
U 1 1 5B32DFF3
P 8000 4100
F 0 "C30" V 8004 4158 50  0000 L CNN
F 1 "8.2pF" V 8095 4158 50  0000 L CNN
F 2 "agg:0402" H 8000 4100 50  0001 C CNN
F 3 "" H 8000 4100 50  0001 C CNN
F 4 "1865418" V 8000 4100 50  0001 C CNN "Farnell"
	1    8000 4100
	0    1    1    0   
$EndComp
Text Notes 5300 3450 0    50   ~ 0
See also http://tt7hab.blogspot.com/2017/05/the-tt7f-v15-revision.html
Text Notes 5300 4950 0    50   ~ 0
Zload = (0.2815)/(2 * pi * 434MHz * 1.25pF)  *  e^j * 49.0524degrees\nZload = 54.12 + 62.38j ohm at 434MHz
Text Notes 5300 5250 0    50   ~ 0
Vdd = sqrt(0.02/ (2*pi^2 * 434MHz * 1.25pF) ) = 1.37V\nIdd = 2 * pi^2 * 434MHz * 1.25pF * Vdd = 0.0146A\nRdc = (3.3V - Vdd) / Idd = 132.1ohm (set PA_PWR_LVL register appropriately)\n
$Comp
L agg-kicad:C C35
U 1 1 5B267FE0
P 8400 4100
F 0 "C35" V 8404 4158 50  0000 L CNN
F 1 "C" V 8495 4158 50  0000 L CNN
F 2 "agg:0603" H 8400 4100 50  0001 C CNN
F 3 "" H 8400 4100 50  0001 C CNN
	1    8400 4100
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:L L14
U 1 1 5B26813B
P 8650 4000
F 0 "L14" H 8700 4178 50  0000 C CNN
F 1 "L" H 8700 4087 50  0000 C CNN
F 2 "agg:0603" H 8650 4000 50  0001 C CNN
F 3 "" H 8650 4000 50  0001 C CNN
	1    8650 4000
	1    0    0    -1  
$EndComp
Text Notes 8800 3900 0    50   ~ 0
Impedance matching (match to 50ohms as filter matches to Zload)\nValues unknown
$Comp
L agg-kicad:GND #PWR0101
U 1 1 5B268E54
P 8400 4300
F 0 "#PWR0101" H 8270 4340 50  0001 L CNN
F 1 "GND" H 8400 4200 50  0000 C CNN
F 2 "" H 8400 4300 60  0000 C CNN
F 3 "" H 8400 4300 60  0000 C CNN
	1    8400 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 4000 8400 4000
Wire Wire Line
	8400 4200 8400 4300
Wire Wire Line
	8950 4300 8950 4250
Wire Wire Line
	8950 4050 8950 4000
Wire Notes Line
	6950 3750 6950 4550
Wire Notes Line
	6950 4550 8300 4550
Wire Notes Line
	8300 4550 8300 3750
Wire Notes Line
	8300 3750 6950 3750
Text Notes 7700 4550 0    50   ~ 0
Low pass filter
Text Notes 6150 4150 0    50   ~ 0
LC resonant tank
$Comp
L agg-kicad:C C34
U 1 1 5B288A1A
P 8250 1450
F 0 "C34" V 8254 1508 50  0000 L CNN
F 1 "C" V 8345 1508 50  0000 L CNN
F 2 "agg:0603" H 8250 1450 50  0001 C CNN
F 3 "" H 8250 1450 50  0001 C CNN
	1    8250 1450
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:L L13
U 1 1 5B288A21
P 8450 1350
F 0 "L13" H 8500 1528 50  0000 C CNN
F 1 "L" H 8500 1437 50  0000 C CNN
F 2 "agg:0603" H 8450 1350 50  0001 C CNN
F 3 "" H 8450 1350 50  0001 C CNN
	1    8450 1350
	1    0    0    -1  
$EndComp
Text Notes 8650 1250 0    50   ~ 0
Impedance matching (match to 50ohms as filter matches to Zload)\nValues unknown
$Comp
L agg-kicad:GND #PWR0102
U 1 1 5B288A29
P 8250 1650
F 0 "#PWR0102" H 8120 1690 50  0001 L CNN
F 1 "GND" H 8250 1550 50  0000 C CNN
F 2 "" H 8250 1650 60  0000 C CNN
F 3 "" H 8250 1650 60  0000 C CNN
	1    8250 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 1350 8250 1450
Wire Wire Line
	8250 1550 8250 1650
Wire Wire Line
	7850 1350 8250 1350
Text Notes 7000 2200 0    50   ~ 0
Zload = (0.2815)/(2 * pi * 144MHz * 1.25pF)  *  e^j * 49.0524degrees\nZload = 163.1 + 188.0j ohm at 144MHz
Text Notes 7000 2550 0    50   ~ 0
Vdd = sqrt(0.01/ (2*pi^2 * 144MHz * 1.25pF) ) = 1.68V\nIdd = 2 * pi^2 * 144MHz * 1.25pF * Vdd = 0.00596A\nRdc = (3.3V - Vdd) / Idd = 272.2ohm (set PA_PWR_LVL register appropriately)\n
Wire Notes Line
	8100 1900 8100 700 
Wire Notes Line
	6700 700  6700 1900
Text Notes 7500 1900 0    50   ~ 0
Low pass filter
Text Notes 3150 1500 1    50   ~ 0
Inductor sets DC bias,\nswitch can only pass RF \n(not DC)
Wire Wire Line
	8400 4100 8400 4000
Wire Wire Line
	8650 4000 8400 4000
Connection ~ 8400 4000
Wire Wire Line
	8750 4000 8950 4000
Connection ~ 8950 4000
Wire Wire Line
	8450 1350 8250 1350
Connection ~ 8250 1350
Wire Wire Line
	8550 1350 8750 1350
Connection ~ 8750 1350
$Comp
L agg-kicad:BGS12AL7 IC4
U 1 1 5B2DFFAE
P 3800 1550
F 0 "IC4" H 3800 1035 50  0000 C CNN
F 1 "BGS12AL7" H 3800 1126 50  0000 C CNN
F 2 "agg:TSLP7-4" H 3500 1050 50  0001 L CNN
F 3 "http://www.infineon.com/dgdl/Infineon-BGS12AL7_4-DS-v01_03-en.pdf?fileId=db3a30431b3e89eb011b458d7a767d88" H 3500 950 50  0001 L CNN
F 4 "2480594" H 3500 850 50  0001 L CNN "Farnell"
	1    3800 1550
	-1   0    0    1   
$EndComp
Wire Wire Line
	3300 1650 3400 1650
Wire Wire Line
	3400 1550 3300 1550
Wire Wire Line
	3300 1550 3300 1650
Connection ~ 3300 1650
Wire Wire Line
	4250 1550 4200 1550
Wire Wire Line
	4250 1650 4200 1650
Wire Wire Line
	4200 1350 4250 1350
Wire Wire Line
	4200 1850 4250 1850
$Comp
L agg-kicad:GND #PWR0104
U 1 1 5B30B360
P 2450 1450
F 0 "#PWR0104" H 2320 1490 50  0001 L CNN
F 1 "GND" H 2450 1350 50  0000 C CNN
F 2 "" H 2450 1450 60  0000 C CNN
F 3 "" H 2450 1450 60  0000 C CNN
	1    2450 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1450 2350 1350
Wire Wire Line
	2450 1450 2450 1350
Wire Wire Line
	2450 1350 2350 1350
Connection ~ 2350 1350
$Comp
L agg-kicad:L L3
U 1 1 5B314416
P 6650 1350
F 0 "L3" H 6700 1528 50  0000 C CNN
F 1 "100nH" H 6700 1437 50  0000 C CNN
F 2 "agg:0402" H 6650 1350 50  0001 C CNN
F 3 "" H 6650 1350 50  0001 C CNN
F 4 "1762632" H 6650 1350 50  0001 C CNN "Farnell"
	1    6650 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 1350 7050 1350
Wire Wire Line
	6400 1350 6650 1350
Wire Notes Line
	6700 700  8100 700 
Wire Notes Line
	6700 1900 8100 1900
$Comp
L 3v3_switched:3v3_switched #PWR?
U 1 1 5B455DF5
P 700 1250
F 0 "#PWR?" H 700 1360 50  0001 L CNN
F 1 "3v3_switched" H 700 1374 50  0000 C CNN
F 2 "" H 700 1250 50  0001 C CNN
F 3 "" H 700 1250 50  0001 C CNN
	1    700  1250
	1    0    0    -1  
$EndComp
$Comp
L 3v3_switched:3v3_switched #PWR?
U 1 1 5B456116
P 2900 1550
F 0 "#PWR?" H 2900 1660 50  0001 L CNN
F 1 "3v3_switched" H 2900 1674 50  0000 C CNN
F 2 "" H 2900 1550 50  0001 C CNN
F 3 "" H 2900 1550 50  0001 C CNN
	1    2900 1550
	1    0    0    -1  
$EndComp
$Comp
L 3v3_switched:3v3_switched #PWR?
U 1 1 5B456364
P 4400 1850
F 0 "#PWR?" H 4400 1960 50  0001 L CNN
F 1 "3v3_switched" H 4400 1974 50  0000 C CNN
F 2 "" H 4400 1850 50  0001 C CNN
F 3 "" H 4400 1850 50  0001 C CNN
	1    4400 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1850 4400 1900
Wire Wire Line
	4400 1900 4250 1900
Wire Wire Line
	4250 1900 4250 1850
$EndSCHEMATC
