EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
Title "Jerboa Power Supply Schematics"
Date "2018-06-12"
Rev "1.0"
Comp "Cambridge University Spaceflight"
Comment1 "Greg Brooks"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L agg-kicad:CONN_01x02 J3
U 1 1 5A722F1A
P 1900 1300
F 0 "J3" H 1800 1500 50  0000 C CNN
F 1 "CONN_01x02" H 1700 1400 50  0000 C CNN
F 2 "agg:SIL-254P-02" H 1900 1300 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2290158.pdf" H 1900 1300 50  0001 C CNN
F 4 "1593458" H 1900 1300 50  0001 C CNN "Farnell"
	1    1900 1300
	1    0    0    -1  
$EndComp
Text Notes 600  2700 0    50   ~ 0
Analog in from solar cells
Wire Wire Line
	1800 2750 1900 2750
Text HLabel 1900 2650 2    50   Input ~ 0
solar_cells
Wire Wire Line
	1900 2650 1800 2650
$Comp
L agg-kicad:GND #PWR023
U 1 1 5A7230D2
P 2000 1550
F 0 "#PWR023" H 1870 1590 50  0001 L CNN
F 1 "GND" H 1900 1550 50  0000 C CNN
F 2 "" H 2000 1550 50  0001 C CNN
F 3 "" H 2000 1550 50  0001 C CNN
	1    2000 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1300 2050 1300
Text Notes 900  1350 0    50   ~ 0
Battery/capacitor input
$Comp
L agg-kicad:C C12
U 1 1 5A72323C
P 2150 1350
F 0 "C12" V 2154 1408 50  0000 L CNN
F 1 "10uF" V 2245 1408 50  0000 L CNN
F 2 "agg:0402" H 2150 1350 50  0001 C CNN
F 3 "" H 2150 1350 50  0001 C CNN
F 4 "2611904" H 2150 1350 50  0001 C CNN "Farnell"
	1    2150 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	2150 1350 2150 1300
Connection ~ 2150 1300
Wire Wire Line
	2150 1450 2150 1500
$Comp
L agg-kicad:3v3 #PWR028
U 1 1 5A725B18
P 4200 1350
F 0 "#PWR028" H 4200 1460 50  0001 L CNN
F 1 "3v3" H 4200 1474 50  0000 C CNN
F 2 "" H 4200 1350 50  0001 C CNN
F 3 "" H 4200 1350 50  0001 C CNN
	1    4200 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 1400 4200 1350
$Comp
L agg-kicad:CONN_01x02 J4
U 1 1 5A7274B5
P 1700 2650
F 0 "J4" H 1731 2865 50  0000 C CNN
F 1 "CONN_01x02" H 1731 2774 50  0000 C CNN
F 2 "agg:SIL-254P-02" H 1700 2650 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2290158.pdf" H 1700 2650 50  0001 C CNN
F 4 "1593458" H 1700 2650 50  0001 C CNN "Farnell"
	1    1700 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1300 2450 1300
$Comp
L agg-kicad:PWR #FLG02
U 1 1 5B50ADD5
P 2050 1300
F 0 "#FLG02" H 2050 1460 50  0001 C CNN
F 1 "PWR" H 2050 1434 50  0000 C CNN
F 2 "" H 2050 1300 50  0001 C CNN
F 3 "" H 2050 1300 50  0001 C CNN
	1    2050 1300
	1    0    0    -1  
$EndComp
Connection ~ 2050 1300
Wire Wire Line
	2050 1300 2150 1300
Text HLabel 1900 2750 2    50   Input ~ 0
BATT_V
$Comp
L adp1607:ADP1607 IC1
U 1 1 5B42BBE5
P 2900 1500
F 0 "IC1" H 2900 1925 50  0000 C CNN
F 1 "ADP1607" H 2900 1834 50  0000 C CNN
F 2 "Jerboa:LFCSP-2x2" H 2600 1100 50  0001 L CNN
F 3 "http://www.analog.com/media/en/technical-documentation/data-sheets/ADP1606_ADP1607.pdf" H 2600 1000 50  0001 L CNN
F 4 "2254940" H 2600 900 50  0001 L CNN "Farnell"
	1    2900 1500
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:L L1
U 1 1 5B42BF34
P 2850 950
F 0 "L1" H 2900 1128 50  0000 C CNN
F 1 "2.2uH" H 2900 1037 50  0000 C CNN
F 2 "Jerboa:0806" H 2850 950 50  0001 C CNN
F 3 "" H 2850 950 50  0001 C CNN
F 4 "2520679" H 2850 950 50  0001 C CNN "Farnell"
	1    2850 950 
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:R R1
U 1 1 5B42C0C7
P 3500 1450
F 0 "R1" V 3504 1491 50  0000 L CNN
F 1 "953k" V 3595 1491 50  0000 L CNN
F 2 "agg:0402" H 3500 1450 50  0001 C CNN
F 3 "" H 3500 1450 50  0001 C CNN
F 4 "2141038" H 3500 1450 50  0001 C CNN "Farnell"
	1    3500 1450
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:R R2
U 1 1 5B42C17D
P 3500 1650
F 0 "R2" V 3504 1691 50  0000 L CNN
F 1 "620k" V 3595 1691 50  0000 L CNN
F 2 "agg:0402" H 3500 1650 50  0001 C CNN
F 3 "" H 3500 1650 50  0001 C CNN
F 4 "2073175" H 3500 1650 50  0001 C CNN "Farnell"
	1    3500 1650
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:GND #PWR0103
U 1 1 5B42C1C1
P 3500 1800
F 0 "#PWR0103" H 3370 1840 50  0001 L CNN
F 1 "GND" H 3500 1700 50  0000 C CNN
F 2 "" H 3500 1800 50  0001 C CNN
F 3 "" H 3500 1800 50  0001 C CNN
	1    3500 1800
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:GND #PWR0105
U 1 1 5B42C212
P 2450 1750
F 0 "#PWR0105" H 2320 1790 50  0001 L CNN
F 1 "GND" H 2450 1650 50  0000 C CNN
F 2 "" H 2450 1750 50  0001 C CNN
F 3 "" H 2450 1750 50  0001 C CNN
	1    2450 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 1600 2450 1600
Wire Wire Line
	2450 1600 2450 1700
Wire Wire Line
	2500 1700 2450 1700
Connection ~ 2450 1700
Wire Wire Line
	2450 1700 2450 1750
Wire Wire Line
	2500 1400 2450 1400
Wire Wire Line
	2450 1400 2450 1300
Connection ~ 2450 1300
Wire Wire Line
	2450 1300 2500 1300
Wire Wire Line
	3300 1600 3500 1600
Wire Wire Line
	3500 1600 3500 1550
Wire Wire Line
	3500 1650 3500 1600
Connection ~ 3500 1600
Wire Wire Line
	3500 1800 3500 1750
Wire Wire Line
	3300 1400 3500 1400
Wire Wire Line
	3500 1400 3500 1450
Wire Wire Line
	2950 950  3350 950 
Wire Wire Line
	3350 950  3350 1300
Wire Wire Line
	3350 1300 3300 1300
Wire Wire Line
	2850 950  2450 950 
Wire Wire Line
	2450 950  2450 1300
$Comp
L agg-kicad:C C1
U 1 1 5B4322AF
P 3900 1500
F 0 "C1" V 3904 1558 50  0000 L CNN
F 1 "10uF" V 3995 1558 50  0000 L CNN
F 2 "agg:0402" H 3900 1500 50  0001 C CNN
F 3 "" H 3900 1500 50  0001 C CNN
F 4 "2611904" H 3900 1500 50  0001 C CNN "Farnell"
	1    3900 1500
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:GND #PWR0106
U 1 1 5B432308
P 3900 1650
F 0 "#PWR0106" H 3770 1690 50  0001 L CNN
F 1 "GND" H 3900 1550 50  0000 C CNN
F 2 "" H 3900 1650 50  0001 C CNN
F 3 "" H 3900 1650 50  0001 C CNN
	1    3900 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1600 3900 1650
Wire Wire Line
	3900 1500 3900 1400
Connection ~ 3900 1400
Wire Wire Line
	3900 1400 4200 1400
$Comp
L 3v3_switched:3v3_switched #PWR0107
U 1 1 5B443E8C
P 7200 1150
F 0 "#PWR0107" H 7200 1260 50  0001 L CNN
F 1 "3v3_switched" H 7200 1274 50  0000 C CNN
F 2 "" H 7200 1150 50  0001 C CNN
F 3 "" H 7200 1150 50  0001 C CNN
	1    7200 1150
	1    0    0    -1  
$EndComp
$Comp
L FDC6329L:FDC6329L U2
U 1 1 5B444992
P 6300 1300
F 0 "U2" H 6300 1647 60  0000 C CNN
F 1 "FDC6329L" H 6300 1541 60  0000 C CNN
F 2 "Jerboa:SuperSOT-6" H 6300 650 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2285836.pdf" H 6300 750 60  0001 C CNN
F 4 "1652469" H 6300 550 60  0001 C CNN "Farnell"
	1    6300 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 1300 7200 1300
Wire Wire Line
	7200 1300 7200 1200
Wire Wire Line
	6950 1200 7050 1200
Connection ~ 7200 1200
Wire Wire Line
	7200 1200 7200 1150
$Comp
L agg-kicad:R R3
U 1 1 5B44548F
P 5500 1300
F 0 "R3" V 5504 1341 50  0000 L CNN
F 1 "470k" V 5595 1341 50  0000 L CNN
F 2 "agg:0402" H 5500 1300 50  0001 C CNN
F 3 "" H 5500 1300 50  0001 C CNN
F 4 "9239553" H 5500 1300 50  0001 C CNN "Farnell"
	1    5500 1300
	0    1    1    0   
$EndComp
Text HLabel 5500 1650 0    50   Input ~ 0
RADIO_PWR_EN
Wire Wire Line
	5500 1650 5650 1650
$Comp
L agg-kicad:R R4
U 1 1 5B45A92C
P 7050 1750
F 0 "R4" V 7054 1791 50  0000 L CNN
F 1 "4k7" V 7145 1791 50  0000 L CNN
F 2 "agg:0402" H 7050 1750 50  0001 C CNN
F 3 "" H 7050 1750 50  0001 C CNN
F 4 "2447187" H 7050 1750 50  0001 C CNN "Farnell"
	1    7050 1750
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:GND #PWR0108
U 1 1 5B45ABFF
P 7050 1900
F 0 "#PWR0108" H 6920 1940 50  0001 L CNN
F 1 "GND" H 7050 1800 50  0000 C CNN
F 2 "" H 7050 1900 50  0001 C CNN
F 3 "" H 7050 1900 50  0001 C CNN
	1    7050 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 1650 7050 1650
Wire Wire Line
	7050 1650 7050 1750
Wire Wire Line
	7050 1850 7050 1900
$Comp
L agg-kicad:3v3 #PWR0109
U 1 1 5B45B85D
P 5350 1450
F 0 "#PWR0109" H 5350 1560 50  0001 L CNN
F 1 "3v3" H 5350 1574 50  0000 C CNN
F 2 "" H 5350 1450 50  0001 C CNN
F 3 "" H 5350 1450 50  0001 C CNN
	1    5350 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 1300 5500 1200
Wire Wire Line
	5500 1200 5650 1200
Wire Wire Line
	5500 1400 5500 1500
Wire Wire Line
	5500 1500 5650 1500
Wire Wire Line
	5350 1450 5350 1500
Wire Wire Line
	5350 1500 5500 1500
Connection ~ 5500 1500
Wire Wire Line
	6250 800  5500 800 
Wire Wire Line
	5500 800  5500 1200
Connection ~ 5500 1200
Wire Wire Line
	6350 800  7050 800 
Wire Wire Line
	7050 800  7050 1200
Connection ~ 7050 1200
Wire Wire Line
	7050 1200 7200 1200
Wire Notes Line
	4350 2350 4350 500 
Wire Notes Line
	8050 2350 8050 500 
Text Notes 3700 2300 0    50   ~ 0
Boost Regulator
Text Notes 7050 2300 0    50   ~ 0
Radio Power Load Switch
$Comp
L agg-kicad:C C?
U 1 1 5B4621D7
P 6250 800
AR Path="/5A37ABC3/5B4621D7" Ref="C?"  Part="1" 
AR Path="/5A37ABBB/5B4621D7" Ref="C2"  Part="1" 
F 0 "C2" H 6300 995 50  0000 C CNN
F 1 "470pF" H 6300 904 50  0000 C CNN
F 2 "agg:0402" H 6250 800 50  0001 C CNN
F 3 "" H 6250 800 50  0001 C CNN
F 4 "1327654" H 6250 800 50  0001 C CNN "Farnell"
	1    6250 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1400 3900 1400
Connection ~ 3500 1400
$Comp
L ncp4620:NCP4620 U3
U 1 1 5B47A899
P 9700 1500
F 0 "U3" H 9700 1847 60  0000 C CNN
F 1 "NCP4620" H 9700 1741 60  0000 C CNN
F 2 "agg:SC-70-5" H 9700 1100 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1878393.pdf" H 9400 1200 60  0001 C CNN
F 4 "2464259" H 9700 1000 60  0001 C CNN "Farnell"
	1    9700 1500
	1    0    0    -1  
$EndComp
Wire Notes Line
	500  2350 11200 2350
Text Notes 10650 2300 0    50   ~ 0
1V8 Regulator
$Comp
L 3v3_switched:3v3_switched #PWR0110
U 1 1 5B47B468
P 9150 1300
F 0 "#PWR0110" H 9150 1410 50  0001 L CNN
F 1 "3v3_switched" H 9150 1424 50  0000 C CNN
F 2 "" H 9150 1300 50  0001 C CNN
F 3 "" H 9150 1300 50  0001 C CNN
	1    9150 1300
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:C C?
U 1 1 5B47B986
P 9150 1600
AR Path="/5B47B986" Ref="C?"  Part="1" 
AR Path="/5A37ABBB/5B47B986" Ref="C3"  Part="1" 
F 0 "C3" H 9200 1795 50  0000 C CNN
F 1 "1uF" H 9200 1704 50  0000 C CNN
F 2 "agg:0402" H 9150 1600 50  0001 C CNN
F 3 "" H 9150 1600 50  0001 C CNN
F 4 "1758879" H 9150 1600 60  0001 C CNN "Farnell"
	1    9150 1600
	0    -1   -1   0   
$EndComp
$Comp
L agg-kicad:GND #PWR0111
U 1 1 5B47C44A
P 9150 1650
F 0 "#PWR0111" H 9020 1690 50  0001 L CNN
F 1 "GND" H 9150 1550 50  0000 C CNN
F 2 "" H 9150 1650 50  0001 C CNN
F 3 "" H 9150 1650 50  0001 C CNN
	1    9150 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 1650 9150 1600
Wire Wire Line
	9250 1600 9150 1600
Connection ~ 9150 1600
Wire Wire Line
	9150 1500 9250 1500
Wire Wire Line
	9150 1500 9150 1400
Connection ~ 9150 1500
Wire Wire Line
	9250 1400 9150 1400
Connection ~ 9150 1400
Wire Wire Line
	9150 1400 9150 1300
$Comp
L agg-kicad:C C?
U 1 1 5B47F85A
P 10250 1450
AR Path="/5B47F85A" Ref="C?"  Part="1" 
AR Path="/5A37ABBB/5B47F85A" Ref="C4"  Part="1" 
F 0 "C4" H 10300 1645 50  0000 C CNN
F 1 "1uF" H 10300 1554 50  0000 C CNN
F 2 "agg:0402" H 10250 1450 50  0001 C CNN
F 3 "" H 10250 1450 50  0001 C CNN
F 4 "1758879" H 10250 1450 60  0001 C CNN "Farnell"
	1    10250 1450
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:GND #PWR0112
U 1 1 5B47F8E6
P 10250 1600
F 0 "#PWR0112" H 10120 1640 50  0001 L CNN
F 1 "GND" H 10250 1500 50  0000 C CNN
F 2 "" H 10250 1600 50  0001 C CNN
F 3 "" H 10250 1600 50  0001 C CNN
	1    10250 1600
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:1v8 #PWR0113
U 1 1 5B47F93E
P 10250 1350
F 0 "#PWR0113" H 10250 1460 50  0001 L CNN
F 1 "1v8" H 10250 1474 50  0000 C CNN
F 2 "" H 10250 1350 50  0001 C CNN
F 3 "" H 10250 1350 50  0001 C CNN
	1    10250 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 1400 10250 1400
Wire Wire Line
	10250 1400 10250 1350
Wire Wire Line
	10250 1400 10250 1450
Connection ~ 10250 1400
Wire Wire Line
	10250 1600 10250 1550
$Comp
L agg-kicad:PWR #FLG03
U 1 1 5B50ADFF
P 2050 1500
F 0 "#FLG03" H 2050 1660 50  0001 C CNN
F 1 "PWR" H 2100 1450 50  0000 C CNN
F 2 "" H 2050 1500 50  0001 C CNN
F 3 "" H 2050 1500 50  0001 C CNN
	1    2050 1500
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:PWR #FLG0101
U 1 1 5B509E1B
P 7350 1300
F 0 "#FLG0101" H 7350 1460 50  0001 C CNN
F 1 "PWR" H 7350 1434 50  0000 C CNN
F 2 "" H 7350 1300 50  0001 C CNN
F 3 "" H 7350 1300 50  0001 C CNN
	1    7350 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1300 7200 1300
Connection ~ 7200 1300
Wire Wire Line
	2000 1400 2000 1500
Wire Wire Line
	2050 1500 2150 1500
Wire Wire Line
	2050 1500 2000 1500
Connection ~ 2050 1500
Connection ~ 2000 1500
Wire Wire Line
	2000 1500 2000 1550
$EndSCHEMATC
