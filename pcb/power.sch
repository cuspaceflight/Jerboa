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
	2000 1400 2000 1500
Wire Wire Line
	2000 1500 2050 1500
Wire Wire Line
	2150 1450 2150 1500
Connection ~ 2000 1500
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
Wire Wire Line
	2000 1500 2000 1550
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
Connection ~ 2050 1500
Wire Wire Line
	2050 1500 2150 1500
Text HLabel 1900 2750 2    50   Input ~ 0
BATT_V
$Comp
L adp1607:ADP1607 IC?
U 1 1 5B42BBE5
P 2900 1500
F 0 "IC?" H 2900 1925 50  0000 C CNN
F 1 "ADP1607" H 2900 1834 50  0000 C CNN
F 2 "Jerboa:LFCSP-2x2" H 2600 1100 50  0001 L CNN
F 3 "http://www.analog.com/media/en/technical-documentation/data-sheets/ADP1606_ADP1607.pdf" H 2600 1000 50  0001 L CNN
F 4 "2254940" H 2600 900 50  0001 L CNN "Farnell"
	1    2900 1500
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:L L?
U 1 1 5B42BF34
P 2850 950
F 0 "L?" H 2900 1128 50  0000 C CNN
F 1 "2.2uH" H 2900 1037 50  0000 C CNN
F 2 "Jerboa:0806" H 2850 950 50  0001 C CNN
F 3 "" H 2850 950 50  0001 C CNN
F 4 "2520679" H 2850 950 50  0001 C CNN "Farnell"
	1    2850 950 
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:R R?
U 1 1 5B42C0C7
P 3500 1450
F 0 "R?" V 3504 1491 50  0000 L CNN
F 1 "953k" V 3595 1491 50  0000 L CNN
F 2 "agg:0402" H 3500 1450 50  0001 C CNN
F 3 "" H 3500 1450 50  0001 C CNN
F 4 "2141038" H 3500 1450 50  0001 C CNN "Farnell"
	1    3500 1450
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:R R?
U 1 1 5B42C17D
P 3500 1650
F 0 "R?" V 3504 1691 50  0000 L CNN
F 1 "620k" V 3595 1691 50  0000 L CNN
F 2 "agg:0402" H 3500 1650 50  0001 C CNN
F 3 "" H 3500 1650 50  0001 C CNN
F 4 "2073175" H 3500 1650 50  0001 C CNN "Farnell"
	1    3500 1650
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:GND #PWR?
U 1 1 5B42C1C1
P 3500 1800
F 0 "#PWR?" H 3370 1840 50  0001 L CNN
F 1 "GND" H 3500 1700 50  0000 C CNN
F 2 "" H 3500 1800 50  0001 C CNN
F 3 "" H 3500 1800 50  0001 C CNN
	1    3500 1800
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:GND #PWR?
U 1 1 5B42C212
P 2450 1750
F 0 "#PWR?" H 2320 1790 50  0001 L CNN
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
L agg-kicad:C C?
U 1 1 5B4322AF
P 3900 1500
F 0 "C?" V 3904 1558 50  0000 L CNN
F 1 "10uF" V 3995 1558 50  0000 L CNN
F 2 "agg:0402" H 3900 1500 50  0001 C CNN
F 3 "" H 3900 1500 50  0001 C CNN
F 4 "2611904" H 3900 1500 50  0001 C CNN "Farnell"
	1    3900 1500
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:GND #PWR?
U 1 1 5B432308
P 3900 1650
F 0 "#PWR?" H 3770 1690 50  0001 L CNN
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
L 3v3_switched:3v3_switched #PWR?
U 1 1 5B443E8C
P 6750 1100
F 0 "#PWR?" H 6750 1210 50  0001 L CNN
F 1 "3v3_switched" H 6750 1224 50  0000 C CNN
F 2 "" H 6750 1100 50  0001 C CNN
F 3 "" H 6750 1100 50  0001 C CNN
	1    6750 1100
	1    0    0    -1  
$EndComp
$Comp
L FDC6329L:FDC6329L U?
U 1 1 5B444992
P 5850 1250
F 0 "U?" H 5850 1597 60  0000 C CNN
F 1 "FDC6329L" H 5850 1491 60  0000 C CNN
F 2 "Jerboa:SuperSOT-6" H 5850 600 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2285836.pdf" H 5850 700 60  0001 C CNN
F 4 "1652469" H 5850 500 60  0001 C CNN "Farnell"
	1    5850 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 1250 6750 1250
Wire Wire Line
	6750 1250 6750 1150
Wire Wire Line
	6500 1150 6600 1150
Connection ~ 6750 1150
Wire Wire Line
	6750 1150 6750 1100
$Comp
L agg-kicad:R R?
U 1 1 5B44548F
P 5050 1250
F 0 "R?" V 5054 1291 50  0000 L CNN
F 1 "470k" V 5145 1291 50  0000 L CNN
F 2 "agg:0402" H 5050 1250 50  0001 C CNN
F 3 "" H 5050 1250 50  0001 C CNN
F 4 "9239553" H 5050 1250 50  0001 C CNN "Farnell"
	1    5050 1250
	0    1    1    0   
$EndComp
Text HLabel 5050 1600 0    50   Input ~ 0
RADIO_PWR_EN
Wire Wire Line
	5050 1600 5200 1600
$Comp
L agg-kicad:R R?
U 1 1 5B45A92C
P 6600 1700
F 0 "R?" V 6604 1741 50  0000 L CNN
F 1 "4k7" V 6695 1741 50  0000 L CNN
F 2 "agg:0402" H 6600 1700 50  0001 C CNN
F 3 "" H 6600 1700 50  0001 C CNN
F 4 "2447187" H 6600 1700 50  0001 C CNN "Farnell"
	1    6600 1700
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:GND #PWR?
U 1 1 5B45ABFF
P 6600 1850
F 0 "#PWR?" H 6470 1890 50  0001 L CNN
F 1 "GND" H 6600 1750 50  0000 C CNN
F 2 "" H 6600 1850 50  0001 C CNN
F 3 "" H 6600 1850 50  0001 C CNN
	1    6600 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 1600 6600 1600
Wire Wire Line
	6600 1600 6600 1700
Wire Wire Line
	6600 1800 6600 1850
$Comp
L agg-kicad:3v3 #PWR?
U 1 1 5B45B85D
P 4900 1400
F 0 "#PWR?" H 4900 1510 50  0001 L CNN
F 1 "3v3" H 4900 1524 50  0000 C CNN
F 2 "" H 4900 1400 50  0001 C CNN
F 3 "" H 4900 1400 50  0001 C CNN
	1    4900 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1250 5050 1150
Wire Wire Line
	5050 1150 5200 1150
Wire Wire Line
	5050 1350 5050 1450
Wire Wire Line
	5050 1450 5200 1450
Wire Wire Line
	4900 1400 4900 1450
Wire Wire Line
	4900 1450 5050 1450
Connection ~ 5050 1450
Wire Wire Line
	5800 750  5050 750 
Wire Wire Line
	5050 750  5050 1150
Connection ~ 5050 1150
Wire Wire Line
	5900 750  6600 750 
Wire Wire Line
	6600 750  6600 1150
Connection ~ 6600 1150
Wire Wire Line
	6600 1150 6750 1150
Wire Notes Line
	4350 2350 4350 500 
Wire Notes Line
	7050 2350 7050 500 
Wire Notes Line
	500  2350 7050 2350
Text Notes 3700 2300 0    50   ~ 0
Boost Regulator
Text Notes 6050 2300 0    50   ~ 0
Radio Power Load Switch
$Comp
L agg-kicad:C C?
U 1 1 5B4621D7
P 5800 750
AR Path="/5A37ABC3/5B4621D7" Ref="C?"  Part="1" 
AR Path="/5A37ABBB/5B4621D7" Ref="C?"  Part="1" 
F 0 "C?" H 5850 945 50  0000 C CNN
F 1 "470pF" H 5850 854 50  0000 C CNN
F 2 "agg:0402" H 5800 750 50  0001 C CNN
F 3 "" H 5800 750 50  0001 C CNN
F 4 "1327654" H 5800 750 50  0001 C CNN "Farnell"
	1    5800 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1400 3900 1400
Connection ~ 3500 1400
$EndSCHEMATC
