EESchema Schematic File Version 4
LIBS:jerboa-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title "Jerboa Radio Schematics"
Date "2018-06-12"
Rev "1.0"
Comp "Cambridge University Spaceflight"
Comment1 "Greg Brooks"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L agg-kicad:Si4460 IC3
U 1 1 5A68AEFA
P 2650 2000
F 0 "IC3" H 2350 2700 50  0000 L CNN
F 1 "Si4460" H 2350 1300 50  0000 L CNN
F 2 "agg:QFN-20-EP-SI" H 2350 1200 50  0001 L CNN
F 3 "" H 2250 2600 50  0001 C CNN
F 4 "2462635" H 2350 1100 50  0001 L CNN "Farnell"
	1    2650 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 2200 2250 2200
Wire Wire Line
	2100 2300 2250 2300
Wire Wire Line
	2100 2400 2250 2400
Wire Wire Line
	2100 2500 2250 2500
$Comp
L agg-kicad:GND #PWR035
U 1 1 5A68B038
P 2050 1800
F 0 "#PWR035" H 1920 1840 50  0001 L CNN
F 1 "GND" H 2050 1700 50  0000 C CNN
F 2 "" H 2050 1800 60  0000 C CNN
F 3 "" H 2050 1800 60  0000 C CNN
	1    2050 1800
	1    0    0    -1  
$EndComp
NoConn ~ 3050 1900
NoConn ~ 3050 2000
NoConn ~ 3050 2100
NoConn ~ 3050 2200
Wire Wire Line
	3050 2300 3150 2300
Text Label 3250 1600 0    60   ~ 0
RADIO_TX
Wire Wire Line
	2100 2600 2250 2600
$Comp
L agg-kicad:C C18
U 1 1 5A68B322
P 1850 1600
F 0 "C18" H 1900 1670 50  0000 C CNN
F 1 "100nF" H 1900 1530 50  0000 C CNN
F 2 "agg:0402" H 1850 1600 50  0001 C CNN
F 3 "" H 1850 1600 50  0001 C CNN
F 4 "2533923" H 0   0   50  0001 C CNN "Farnell"
	1    1850 1600
	0    -1   -1   0   
$EndComp
$Comp
L agg-kicad:C C17
U 1 1 5A68B351
P 1600 1600
F 0 "C17" H 1650 1670 50  0000 C CNN
F 1 "100pF" H 1650 1530 50  0000 C CNN
F 2 "agg:0402" H 1600 1600 50  0001 C CNN
F 3 "" H 1600 1600 50  0001 C CNN
F 4 "2496792" H 1600 1600 50  0001 C CNN "Farnell"
	1    1600 1600
	0    -1   -1   0   
$EndComp
$Comp
L agg-kicad:C C19
U 1 1 5A68B3B6
P 2050 1600
F 0 "C19" H 2100 1670 50  0000 C CNN
F 1 "1uF" H 2100 1530 50  0000 C CNN
F 2 "agg:0402" H 2050 1600 50  0001 C CNN
F 3 "" H 2050 1600 50  0001 C CNN
F 4 "1758879" H 2050 1600 60  0001 C CNN "Farnell"
	1    2050 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1850 1700 1850 1600
Connection ~ 2050 1700
Wire Wire Line
	1600 1700 1600 1600
Connection ~ 1850 1700
Wire Wire Line
	2050 1600 2050 1700
Wire Wire Line
	2250 1600 2150 1600
Wire Wire Line
	2150 1600 2150 1700
Connection ~ 2150 1700
Wire Wire Line
	2250 1500 2150 1500
Wire Wire Line
	2150 1500 2150 1400
Wire Wire Line
	1600 1300 1600 1400
Wire Wire Line
	1850 1400 1850 1500
Connection ~ 1600 1400
Wire Wire Line
	1600 1400 1600 1500
$Comp
L agg-kicad:3v3 #PWR034
U 1 1 5A68B692
P 1600 1300
F 0 "#PWR034" H 1600 1410 50  0001 L CNN
F 1 "3v3" H 1600 1390 50  0000 C CNN
F 2 "" H 1600 1300 60  0000 C CNN
F 3 "" H 1600 1300 60  0000 C CNN
	1    1600 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1600 3250 1600
Text Label 3250 1500 0    60   ~ 0
RADIO_RXn
Text Label 3250 1400 0    60   ~ 0
RADIO_RXp
Wire Wire Line
	3250 1500 3050 1500
Wire Wire Line
	3050 1400 3250 1400
NoConn ~ 3050 1700
$Comp
L agg-kicad:COAX P3
U 1 1 5A68BF1C
P 9000 1600
F 0 "P3" H 9000 1700 50  0000 C CNN
F 1 "COAX" H 9000 1450 50  0000 C CNN
F 2 "agg:SMA-EDGE" H 9000 1390 50  0001 C CNN
F 3 "" H 9100 1500 50  0001 C CNN
F 4 "1608592" H 9000 1320 50  0001 C CNN "Farnell"
	1    9000 1600
	1    0    0    -1  
$EndComp
Text Label 6200 1500 2    60   ~ 0
RADIO_TX
Wire Wire Line
	8900 1700 8900 2000
Text Label 6200 2250 2    60   ~ 0
RADIO_RXp
Text Label 6200 1850 2    60   ~ 0
RADIO_RXn
Wire Notes Line
	4300 500  4300 3100
Wire Notes Line
	500  3100 11200 3100
NoConn ~ 2250 1900
Text HLabel 2100 2200 0    60   Input ~ 0
RADIO_SDN
Text HLabel 2100 2300 0    60   Input ~ 0
RADIO_SCLK
Text HLabel 2100 2400 0    60   Input ~ 0
RADIO_SDO
Text HLabel 2100 2500 0    60   Input ~ 0
RADIO_SDI
Text HLabel 2100 2600 0    60   Input ~ 0
RADIO_nSEL
Text HLabel 3150 2300 2    60   Input ~ 0
RADIO_nIRQ
Wire Wire Line
	1600 1700 1850 1700
Wire Wire Line
	2050 1700 2050 1800
Wire Wire Line
	2050 1700 2150 1700
Wire Wire Line
	1850 1700 2050 1700
Wire Wire Line
	2150 1700 2250 1700
Wire Wire Line
	2150 1400 2250 1400
Wire Wire Line
	1600 1400 1850 1400
Wire Wire Line
	2050 1500 2050 1400
Wire Wire Line
	2050 1400 2150 1400
Connection ~ 2150 1400
Wire Wire Line
	1850 1400 2050 1400
Connection ~ 1850 1400
Connection ~ 2050 1400
Text HLabel 2100 2000 0    60   Input ~ 0
SI4460_XIN
Wire Wire Line
	2100 2000 2250 2000
$Comp
L agg-kicad:L L5
U 1 1 5B25805D
P 7150 1500
F 0 "L5" H 7200 1678 50  0000 C CNN
F 1 "39nH" H 7200 1587 50  0000 C CNN
F 2 "agg:0603-L" H 7150 1500 50  0001 C CNN
F 3 "" H 7150 1500 50  0001 C CNN
F 4 "1748775" H 0   0   50  0001 C CNN "Farnell"
	1    7150 1500
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:C C28
U 1 1 5B2580DE
P 6850 1500
F 0 "C28" H 6900 1695 50  0000 C CNN
F 1 "15pF" H 6900 1604 50  0000 C CNN
F 2 "agg:0402" H 6850 1500 50  0001 C CNN
F 3 "" H 6850 1500 50  0001 C CNN
F 4 "2520723" H 0   0   50  0001 C CNN "Farnell"
	1    6850 1500
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:3v3 #PWR046
U 1 1 5B258249
P 6500 1150
F 0 "#PWR046" H 6500 1260 50  0001 L CNN
F 1 "3v3" H 6500 1240 50  0000 C CNN
F 2 "" H 6500 1150 60  0000 C CNN
F 3 "" H 6500 1150 60  0000 C CNN
	1    6500 1150
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:L L3
U 1 1 5B2582A1
P 6500 1250
F 0 "L3" V 6504 1291 50  0000 L CNN
F 1 "220nH" V 6595 1291 50  0000 L CNN
F 2 "agg:0603-L" H 6500 1250 50  0001 C CNN
F 3 "" H 6500 1250 50  0001 C CNN
F 4 "9528059" H 0   0   50  0001 C CNN "Farnell"
	1    6500 1250
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:L L2
U 1 1 5B2583AC
P 6400 2000
F 0 "L2" V 6404 2041 50  0000 L CNN
F 1 "56nH" V 6495 2041 50  0000 L CNN
F 2 "agg:0805-L" H 6400 2000 50  0001 C CNN
F 3 "" H 6400 2000 50  0001 C CNN
F 4 "1711831" H 0   0   50  0001 C CNN "Farnell"
	1    6400 2000
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:GND #PWR045
U 1 1 5B258845
P 6400 2500
F 0 "#PWR045" H 6270 2540 50  0001 L CNN
F 1 "GND" H 6400 2400 50  0000 C CNN
F 2 "" H 6400 2500 60  0000 C CNN
F 3 "" H 6400 2500 60  0000 C CNN
	1    6400 2500
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:L L4
U 1 1 5B2589EA
P 6850 2250
F 0 "L4" H 6900 2428 50  0000 C CNN
F 1 "51nH" H 6900 2337 50  0000 C CNN
F 2 "agg:0402-L" H 6850 2250 50  0001 C CNN
F 3 "" H 6850 2250 50  0001 C CNN
F 4 "2285857" H 6850 2250 50  0001 C CNN "Farnell"
	1    6850 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 1500 6500 1500
Wire Wire Line
	6500 1350 6500 1500
Connection ~ 6500 1500
Wire Wire Line
	6500 1250 6500 1150
Wire Wire Line
	6950 1500 7150 1500
$Comp
L agg-kicad:C C29
U 1 1 5B259FE9
P 6850 1850
F 0 "C29" H 6900 2045 50  0000 C CNN
F 1 "2.2pF" H 6900 1954 50  0000 C CNN
F 2 "agg:0402" H 6850 1850 50  0001 C CNN
F 3 "" H 6850 1850 50  0001 C CNN
F 4 "2310307" H 0   0   50  0001 C CNN "Farnell"
	1    6850 1850
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:C C26
U 1 1 5B25A072
P 6400 2350
F 0 "C26" V 6404 2408 50  0000 L CNN
F 1 "3.9pF" V 6495 2408 50  0000 L CNN
F 2 "agg:0402" H 6400 2350 50  0001 C CNN
F 3 "" H 6400 2350 50  0001 C CNN
F 4 "2310310" H 0   0   50  0001 C CNN "Farnell"
	1    6400 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 1850 6400 1850
Wire Wire Line
	6950 1850 7350 1850
Wire Wire Line
	7350 1850 7350 1500
Wire Wire Line
	7350 1500 7250 1500
Wire Wire Line
	6400 2000 6400 1850
Connection ~ 6400 1850
Wire Wire Line
	6400 2100 6400 2250
Wire Wire Line
	6200 2250 6400 2250
Connection ~ 6400 2250
Wire Wire Line
	6400 2250 6400 2350
Wire Wire Line
	6400 2450 6400 2500
Wire Wire Line
	6950 2250 7350 2250
Wire Wire Line
	7350 2250 7350 1850
Connection ~ 7350 1850
$Comp
L agg-kicad:C C30
U 1 1 5B25EB7C
P 7600 1600
F 0 "C30" V 7604 1658 50  0000 L CNN
F 1 "8.2pF" V 7695 1658 50  0000 L CNN
F 2 "agg:0402" H 7600 1600 50  0001 C CNN
F 3 "" H 7600 1600 50  0001 C CNN
F 4 "2627415" H 0   0   50  0001 C CNN "Farnell"
	1    7600 1600
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:C C31
U 1 1 5B25EBE9
P 8000 1600
F 0 "C31" V 8004 1658 50  0000 L CNN
F 1 "15pF" V 8095 1658 50  0000 L CNN
F 2 "agg:0402" H 8000 1600 50  0001 C CNN
F 3 "" H 8000 1600 50  0001 C CNN
F 4 "2520723" H 0   0   50  0001 C CNN "Farnell"
	1    8000 1600
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:C C33
U 1 1 5B25EC33
P 8400 1600
F 0 "C33" V 8404 1658 50  0000 L CNN
F 1 "6.8pF" V 8495 1658 50  0000 L CNN
F 2 "agg:0402" H 8400 1600 50  0001 C CNN
F 3 "" H 8400 1600 50  0001 C CNN
F 4 "2310317" H 0   0   50  0001 C CNN "Farnell"
	1    8400 1600
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:GND #PWR052
U 1 1 5B25FF17
P 7600 1800
F 0 "#PWR052" H 7470 1840 50  0001 L CNN
F 1 "GND" H 7600 1700 50  0000 C CNN
F 2 "" H 7600 1800 60  0000 C CNN
F 3 "" H 7600 1800 60  0000 C CNN
	1    7600 1800
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:GND #PWR053
U 1 1 5B25FF40
P 8000 1800
F 0 "#PWR053" H 7870 1840 50  0001 L CNN
F 1 "GND" H 8000 1700 50  0000 C CNN
F 2 "" H 8000 1800 60  0000 C CNN
F 3 "" H 8000 1800 60  0000 C CNN
	1    8000 1800
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:GND #PWR055
U 1 1 5B25FF69
P 8400 1800
F 0 "#PWR055" H 8270 1840 50  0001 L CNN
F 1 "GND" H 8400 1700 50  0000 C CNN
F 2 "" H 8400 1800 60  0000 C CNN
F 3 "" H 8400 1800 60  0000 C CNN
	1    8400 1800
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:L L6
U 1 1 5B25FF92
P 7750 1500
F 0 "L6" H 7800 1678 50  0000 C CNN
F 1 "18nH" H 7800 1587 50  0000 C CNN
F 2 "agg:0402-L" H 7750 1500 50  0001 C CNN
F 3 "" H 7750 1500 50  0001 C CNN
F 4 "1762622" H 0   0   50  0001 C CNN "Farnell"
	1    7750 1500
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:L L7
U 1 1 5B25FFDE
P 8200 1500
F 0 "L7" H 8250 1678 50  0000 C CNN
F 1 "18nH" H 8250 1587 50  0000 C CNN
F 2 "agg:0402-L" H 8200 1500 50  0001 C CNN
F 3 "" H 8200 1500 50  0001 C CNN
F 4 "1762622" H 0   0   50  0001 C CNN "Farnell"
	1    8200 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1500 7600 1500
Connection ~ 7350 1500
Wire Wire Line
	7850 1500 8000 1500
Wire Wire Line
	8300 1500 8400 1500
Wire Wire Line
	8800 1500 8800 1600
Wire Wire Line
	8800 1600 8900 1600
$Comp
L agg-kicad:GND #PWR056
U 1 1 5B261E77
P 8900 2000
F 0 "#PWR056" H 8770 2040 50  0001 L CNN
F 1 "GND" H 8900 1900 50  0000 C CNN
F 2 "" H 8900 2000 60  0000 C CNN
F 3 "" H 8900 2000 60  0000 C CNN
	1    8900 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 1800 8400 1700
Wire Wire Line
	8400 1500 8400 1600
Connection ~ 8400 1500
Wire Wire Line
	8400 1500 8800 1500
Wire Wire Line
	8000 1600 8000 1500
Connection ~ 8000 1500
Wire Wire Line
	8000 1500 8200 1500
Wire Wire Line
	7600 1600 7600 1500
Connection ~ 7600 1500
Wire Wire Line
	7600 1500 7750 1500
Wire Wire Line
	7600 1700 7600 1800
Wire Wire Line
	8000 1700 8000 1800
Wire Wire Line
	6500 1500 6850 1500
Wire Wire Line
	6400 1850 6850 1850
Wire Wire Line
	6400 2250 6850 2250
$Comp
L mcp4812:MCP4812 U3
U 1 1 5B200694
P 2050 3850
F 0 "U3" H 2050 4265 50  0000 C CNN
F 1 "MCP4812" H 2050 4174 50  0000 C CNN
F 2 "agg:SOIC-8" H 1700 4000 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2125127.pdf" H 1700 4000 50  0001 C CNN
F 4 "1834912" H 2050 3850 50  0001 C CNN "Farnell"
F 5 "MCP4812-E/SN-ND" H 2050 3850 50  0001 C CNN "Digikey"
	1    2050 3850
	1    0    0    -1  
$EndComp
$Comp
L micrf112YMM:MICRF112YMM U5
U 1 1 5B20148E
P 6500 4500
F 0 "U5" H 6500 4178 50  0000 C CNN
F 1 "MICRF112YMM" H 6500 4087 50  0000 C CNN
F 2 "agg:MSOP-10" H 6500 4100 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1760452.pdf" H 6500 4000 50  0001 C CNN
F 4 "2510519" H 6500 3900 50  0001 C CNN "Farnell"
	1    6500 4500
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:GND #PWR037
U 1 1 5B201BCB
P 3100 3850
F 0 "#PWR037" H 2970 3890 50  0001 L CNN
F 1 "GND" H 3100 3750 50  0000 C CNN
F 2 "" H 3100 3850 60  0000 C CNN
F 3 "" H 3100 3850 60  0000 C CNN
	1    3100 3850
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:3v3 #PWR036
U 1 1 5B201CA8
P 2500 3550
F 0 "#PWR036" H 2500 3660 50  0001 L CNN
F 1 "3v3" H 2500 3640 50  0000 C CNN
F 2 "" H 2500 3550 60  0000 C CNN
F 3 "" H 2500 3550 60  0000 C CNN
	1    2500 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3700 2500 3700
$Comp
L agg-kicad:GND #PWR033
U 1 1 5B204E7F
P 1550 3600
F 0 "#PWR033" H 1420 3640 50  0001 L CNN
F 1 "GND" H 1550 3500 50  0000 C CNN
F 2 "" H 1550 3600 60  0000 C CNN
F 3 "" H 1550 3600 60  0000 C CNN
	1    1550 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 3600 1650 3600
Wire Wire Line
	1650 3600 1650 3700
Text HLabel 1050 3800 0    50   Input ~ 0
DAC_NCS
Text HLabel 1550 3900 0    50   Input ~ 0
DAC_SCK
Text HLabel 1550 4000 0    50   Input ~ 0
DAC_SDI
Wire Wire Line
	1550 4000 1650 4000
Wire Wire Line
	1650 3900 1550 3900
$Comp
L Device:D_Capacitance D4
U 1 1 5B2319D8
P 4700 4300
F 0 "D4" H 4700 4045 50  0000 C CNN
F 1 "D_Capacitance" H 4700 4136 50  0000 C CNN
F 2 "Jerboa:SC-79" H 4700 4300 50  0001 C CNN
F 3 "~" H 4700 4300 50  0001 C CNN
F 4 "1753780" H 4700 4300 50  0001 C CNN "Farnell"
	1    4700 4300
	-1   0    0    1   
$EndComp
$Comp
L agg-kicad:R R13
U 1 1 5B231AB6
P 1150 3750
F 0 "R13" V 1246 3709 50  0000 R CNN
F 1 "10k" V 1155 3709 50  0000 R CNN
F 2 "agg:0402" H 1150 3750 50  0001 C CNN
F 3 "" H 1150 3750 50  0001 C CNN
F 4 "2331444" H 0   0   50  0001 C CNN "Farnell"
	1    1150 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1050 3800 1150 3800
Wire Wire Line
	1150 3750 1150 3800
Connection ~ 1150 3800
$Comp
L agg-kicad:3v3 #PWR032
U 1 1 5B234599
P 1150 3600
F 0 "#PWR032" H 1150 3710 50  0001 L CNN
F 1 "3v3" H 1150 3690 50  0000 C CNN
F 2 "" H 1150 3600 60  0000 C CNN
F 3 "" H 1150 3600 60  0000 C CNN
	1    1150 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 3600 1150 3650
Wire Wire Line
	1150 3800 1650 3800
Text Label 2700 3900 0    50   ~ 0
COARSE
Text Label 2700 4000 0    50   ~ 0
FINE
Wire Wire Line
	2450 3900 2700 3900
Wire Wire Line
	2450 4000 2700 4000
Text Label 4300 3500 2    50   ~ 0
COARSE
$Comp
L Device:D_Capacitance D3
U 1 1 5B23F053
P 4700 3900
F 0 "D3" H 4700 3645 50  0000 C CNN
F 1 "D_Capacitance" H 4700 3736 50  0000 C CNN
F 2 "agg:SOD-323" H 4700 3900 50  0001 C CNN
F 3 "~" H 4700 3900 50  0001 C CNN
F 4 "1753783" H 4700 3900 50  0001 C CNN "Farnell"
	1    4700 3900
	-1   0    0    1   
$EndComp
$Comp
L agg-kicad:GND #PWR038
U 1 1 5B23F0F4
P 4300 4150
F 0 "#PWR038" H 4170 4190 50  0001 L CNN
F 1 "GND" H 4300 4050 50  0000 C CNN
F 2 "" H 4300 4150 60  0000 C CNN
F 3 "" H 4300 4150 60  0000 C CNN
	1    4300 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3900 4400 4100
Wire Wire Line
	4400 4300 4550 4300
Wire Wire Line
	4300 4100 4400 4100
Connection ~ 4400 4100
Wire Wire Line
	4400 4100 4400 4300
Wire Wire Line
	4300 4100 4300 4150
Wire Wire Line
	4400 3900 4550 3900
Text Label 4300 4550 2    50   ~ 0
FINE
$Comp
L agg-kicad:C C22
U 1 1 5B248223
P 5100 3900
F 0 "C22" H 5150 4095 50  0000 C CNN
F 1 "36pF" H 5150 4004 50  0000 C CNN
F 2 "agg:0402" H 5100 3900 50  0001 C CNN
F 3 "" H 5100 3900 50  0001 C CNN
F 4 "1758956" H 5100 3900 50  0001 C CNN "Farnell"
	1    5100 3900
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:C C23
U 1 1 5B2482A3
P 5100 4300
F 0 "C23" H 5150 4495 50  0000 C CNN
F 1 "12pF" H 5150 4404 50  0000 C CNN
F 2 "agg:0402" H 5100 4300 50  0001 C CNN
F 3 "" H 5100 4300 50  0001 C CNN
F 4 "1885336" H 0   0   50  0001 C CNN "Farnell"
	1    5100 4300
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:XTAL Y2
U 1 1 5B2483A4
P 5650 4400
F 0 "Y2" V 5650 4200 50  0000 L CNN
F 1 "13.56MHz" V 5750 3950 50  0000 L CNN
F 2 "agg:XTAL-50x32" H 5650 4400 50  0001 C CNN
F 3 "" H 5650 4400 50  0001 C CNN
F 4 "1841971" H 5650 4400 50  0001 C CNN "Farnell"
	1    5650 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 3500 4450 3500
Wire Wire Line
	4850 3900 5000 3900
Wire Wire Line
	4850 4300 5000 4300
Wire Wire Line
	4550 3500 5000 3500
Wire Wire Line
	5000 3500 5000 3900
Connection ~ 5000 3900
Wire Wire Line
	5000 3900 5100 3900
Wire Wire Line
	4450 4550 4300 4550
Wire Wire Line
	4550 4550 5000 4550
Wire Wire Line
	5000 4550 5000 4300
Connection ~ 5000 4300
Wire Wire Line
	5000 4300 5100 4300
Wire Wire Line
	5650 4400 5950 4400
Wire Wire Line
	5650 4300 5650 4400
Connection ~ 5650 4400
Wire Wire Line
	5650 3900 5650 4300
Connection ~ 5650 4300
$Comp
L agg-kicad:C C24
U 1 1 5B263069
P 5650 4600
F 0 "C24" V 5650 4450 50  0000 L CNN
F 1 "18pF" V 5750 4350 50  0000 L CNN
F 2 "agg:0402" H 5650 4600 50  0001 C CNN
F 3 "" H 5650 4600 50  0001 C CNN
F 4 "2522556" H 0   0   50  0001 C CNN "Farnell"
	1    5650 4600
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:GND #PWR043
U 1 1 5B263141
P 5850 4650
F 0 "#PWR043" H 5720 4690 50  0001 L CNN
F 1 "GND" H 5850 4550 50  0000 C CNN
F 2 "" H 5850 4650 60  0000 C CNN
F 3 "" H 5850 4650 60  0000 C CNN
	1    5850 4650
	1    0    0    -1  
$EndComp
NoConn ~ 5950 4700
Wire Wire Line
	5850 4650 5850 4600
Wire Wire Line
	5850 4600 5950 4600
$Comp
L agg-kicad:GND #PWR040
U 1 1 5B26D773
P 5650 4750
F 0 "#PWR040" H 5520 4790 50  0001 L CNN
F 1 "GND" H 5650 4650 50  0000 C CNN
F 2 "" H 5650 4750 60  0000 C CNN
F 3 "" H 5650 4750 60  0000 C CNN
	1    5650 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4750 5650 4700
Wire Wire Line
	5650 4600 5650 4500
Wire Wire Line
	5950 4500 5650 4500
Connection ~ 5650 4500
$Comp
L agg-kicad:3v3 #PWR047
U 1 1 5B275D9E
P 6550 4050
F 0 "#PWR047" H 6550 4160 50  0001 L CNN
F 1 "3v3" H 6550 4140 50  0000 C CNN
F 2 "" H 6550 4050 60  0000 C CNN
F 3 "" H 6550 4050 60  0000 C CNN
	1    6550 4050
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:3v3 #PWR044
U 1 1 5B278AF5
P 5900 4250
F 0 "#PWR044" H 5900 4360 50  0001 L CNN
F 1 "3v3" H 5900 4340 50  0000 C CNN
F 2 "" H 5900 4250 60  0000 C CNN
F 3 "" H 5900 4250 60  0000 C CNN
	1    5900 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 4250 5900 4300
Wire Wire Line
	5900 4300 5950 4300
$Comp
L agg-kicad:C C27
U 1 1 5B27B95A
P 6800 4100
F 0 "C27" H 6850 3905 50  0000 C CNN
F 1 "100nF" H 6850 3996 50  0000 C CNN
F 2 "agg:0402" H 6800 4100 50  0001 C CNN
F 3 "" H 6800 4100 50  0001 C CNN
F 4 "2533923" H 0   0   50  0001 C CNN "Farnell"
	1    6800 4100
	-1   0    0    1   
$EndComp
Wire Wire Line
	6550 4050 6550 4100
Wire Wire Line
	6700 4100 6550 4100
Connection ~ 6550 4100
Wire Wire Line
	6550 4100 6550 4150
$Comp
L agg-kicad:GND #PWR048
U 1 1 5B284808
P 6900 4100
F 0 "#PWR048" H 6770 4140 50  0001 L CNN
F 1 "GND" H 6900 4000 50  0000 C CNN
F 2 "" H 6900 4100 60  0000 C CNN
F 3 "" H 6900 4100 60  0000 C CNN
	1    6900 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 4100 6800 4100
$Comp
L agg-kicad:GND #PWR050
U 1 1 5B287972
P 7250 4400
F 0 "#PWR050" H 7120 4440 50  0001 L CNN
F 1 "GND" H 7250 4300 50  0000 C CNN
F 2 "" H 7250 4400 60  0000 C CNN
F 3 "" H 7250 4400 60  0000 C CNN
	1    7250 4400
	1    0    0    -1  
$EndComp
Text HLabel 7500 4600 2    60   Input ~ 0
MICRF_EN
Wire Wire Line
	7050 4500 7100 4500
Wire Wire Line
	7100 4500 7100 4350
Wire Wire Line
	7100 4350 7250 4350
Wire Wire Line
	7250 4350 7250 4400
$Comp
L agg-kicad:R R17
U 1 1 5B297BA2
P 7100 4750
F 0 "R17" V 7104 4791 50  0000 L CNN
F 1 "100k" V 7195 4791 50  0000 L CNN
F 2 "agg:0402" H 7100 4750 50  0001 C CNN
F 3 "" H 7100 4750 50  0001 C CNN
F 4 "2072529" H 0   0   50  0001 C CNN "Farnell"
	1    7100 4750
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:GND #PWR049
U 1 1 5B297CE6
P 7100 4900
F 0 "#PWR049" H 6970 4940 50  0001 L CNN
F 1 "GND" H 7100 4800 50  0000 C CNN
F 2 "" H 7100 4900 60  0000 C CNN
F 3 "" H 7100 4900 60  0000 C CNN
	1    7100 4900
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:R R18
U 1 1 5B297DAC
P 7400 4750
F 0 "R18" V 7404 4791 50  0000 L CNN
F 1 "100k" V 7495 4791 50  0000 L CNN
F 2 "agg:0402" H 7400 4750 50  0001 C CNN
F 3 "" H 7400 4750 50  0001 C CNN
F 4 "2072529" H 0   0   50  0001 C CNN "Farnell"
	1    7400 4750
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:GND #PWR051
U 1 1 5B297DB3
P 7400 4900
F 0 "#PWR051" H 7270 4940 50  0001 L CNN
F 1 "GND" H 7400 4800 50  0000 C CNN
F 2 "" H 7400 4900 60  0000 C CNN
F 3 "" H 7400 4900 60  0000 C CNN
	1    7400 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 4750 7400 4600
Wire Wire Line
	7400 4600 7500 4600
Wire Wire Line
	7050 4600 7400 4600
Connection ~ 7400 4600
Wire Wire Line
	7100 4750 7100 4700
Wire Wire Line
	7100 4700 7050 4700
Wire Wire Line
	7100 4850 7100 4900
Wire Wire Line
	7400 4850 7400 4900
$Comp
L agg-kicad:C C32
U 1 1 5B2B87D2
P 8300 4500
F 0 "C32" V 8396 4442 50  0000 R CNN
F 1 "1.2pF" V 8305 4442 50  0000 R CNN
F 2 "agg:0402" H 8300 4500 50  0001 C CNN
F 3 "" H 8300 4500 50  0001 C CNN
F 4 "2310300" H 0   0   50  0001 C CNN "Farnell"
	1    8300 4500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7050 4300 8300 4300
$Comp
L agg-kicad:GND #PWR054
U 1 1 5B2BC34F
P 8300 4550
F 0 "#PWR054" H 8170 4590 50  0001 L CNN
F 1 "GND" H 8300 4450 50  0000 C CNN
F 2 "" H 8300 4550 60  0000 C CNN
F 3 "" H 8300 4550 60  0000 C CNN
	1    8300 4550
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:L L8
U 1 1 5B2BC7C0
P 8300 4100
F 0 "L8" V 8300 3950 50  0000 L CNN
F 1 "680nH" V 8400 3800 50  0000 L CNN
F 2 "agg:0805-L" H 8300 4100 50  0001 C CNN
F 3 "" H 8300 4100 50  0001 C CNN
F 4 "2286391" H 0   0   50  0001 C CNN "Farnell"
	1    8300 4100
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:C C35
U 1 1 5B2BC8FE
P 8600 3850
F 0 "C35" V 8604 3908 50  0000 L CNN
F 1 "100nF" V 8695 3908 50  0000 L CNN
F 2 "agg:0402" H 8600 3850 50  0001 C CNN
F 3 "" H 8600 3850 50  0001 C CNN
F 4 "2533923" H 0   0   50  0001 C CNN "Farnell"
	1    8600 3850
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:C C37
U 1 1 5B2BC986
P 8950 3850
F 0 "C37" V 8954 3908 50  0000 L CNN
F 1 "100nF" V 9045 3908 50  0000 L CNN
F 2 "agg:0402" H 8950 3850 50  0001 C CNN
F 3 "" H 8950 3850 50  0001 C CNN
F 4 "2533923" H 0   0   50  0001 C CNN "Farnell"
	1    8950 3850
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:C C38
U 1 1 5B2BC9E2
P 9300 3850
F 0 "C38" V 9304 3908 50  0000 L CNN
F 1 "100nF" V 9395 3908 50  0000 L CNN
F 2 "agg:0402" H 9300 3850 50  0001 C CNN
F 3 "" H 9300 3850 50  0001 C CNN
F 4 "2533923" H 0   0   50  0001 C CNN "Farnell"
	1    9300 3850
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:GND #PWR058
U 1 1 5B2BCADC
P 8950 4050
F 0 "#PWR058" H 8820 4090 50  0001 L CNN
F 1 "GND" H 8950 3950 50  0000 C CNN
F 2 "" H 8950 4050 60  0000 C CNN
F 3 "" H 8950 4050 60  0000 C CNN
	1    8950 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 3950 8600 4000
Wire Wire Line
	8950 3950 8950 4000
Wire Wire Line
	8300 4550 8300 4500
Wire Wire Line
	8300 4400 8300 4300
Wire Wire Line
	8300 4200 8300 4300
Connection ~ 8300 4300
Wire Wire Line
	8300 3800 8600 3800
Wire Wire Line
	8950 3850 8950 3800
Connection ~ 8950 3800
Wire Wire Line
	8600 3850 8600 3800
Wire Wire Line
	8300 3800 8300 4100
$Comp
L agg-kicad:C C34
U 1 1 5B2EE082
P 8500 4300
F 0 "C34" H 8550 4495 50  0000 C CNN
F 1 "2.2pF" H 8550 4404 50  0000 C CNN
F 2 "agg:0402" H 8500 4300 50  0001 C CNN
F 3 "" H 8500 4300 50  0001 C CNN
F 4 "2310307" H 0   0   50  0001 C CNN "Farnell"
	1    8500 4300
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:L L9
U 1 1 5B2EE10E
P 8800 4300
F 0 "L9" H 8850 4350 50  0000 C CNN
F 1 "43nH" H 8850 4450 50  0000 C CNN
F 2 "agg:0402-L" H 8800 4300 50  0001 C CNN
F 3 "" H 8800 4300 50  0001 C CNN
F 4 "2470331" H 0   0   50  0001 C CNN "Farnell"
	1    8800 4300
	-1   0    0    1   
$EndComp
Wire Wire Line
	8500 4300 8300 4300
Wire Wire Line
	8600 4300 8700 4300
$Comp
L agg-kicad:C C36
U 1 1 5B2F75CE
P 8900 4350
F 0 "C36" V 8904 4408 50  0000 L CNN
F 1 "6.8pF" V 8995 4408 50  0000 L CNN
F 2 "agg:0402" H 8900 4350 50  0001 C CNN
F 3 "" H 8900 4350 50  0001 C CNN
F 4 "2310317" H 0   0   50  0001 C CNN "Farnell"
	1    8900 4350
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:GND #PWR057
U 1 1 5B2F76BD
P 8900 4550
F 0 "#PWR057" H 8770 4590 50  0001 L CNN
F 1 "GND" H 8900 4450 50  0000 C CNN
F 2 "" H 8900 4550 60  0000 C CNN
F 3 "" H 8900 4550 60  0000 C CNN
	1    8900 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 4300 8900 4300
Wire Wire Line
	8900 4300 8900 4350
$Comp
L agg-kicad:COAX P4
U 1 1 5B3013D3
P 9400 4300
F 0 "P4" H 9400 4400 50  0000 C CNN
F 1 "COAX" H 9400 4150 50  0000 C CNN
F 2 "agg:SMA-EDGE" H 9400 4090 50  0001 C CNN
F 3 "" H 9500 4200 50  0001 C CNN
F 4 "1608592" H 9400 4020 50  0001 C CNN "Farnell"
	1    9400 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 4400 9300 4500
$Comp
L agg-kicad:R R?
U 1 1 5B3120C7
P 4450 3500
AR Path="/5A37ABBB/5B3120C7" Ref="R?"  Part="1" 
AR Path="/5A37ABC3/5B3120C7" Ref="R14"  Part="1" 
F 0 "R14" V 4454 3541 50  0000 L CNN
F 1 "1M" V 4545 3541 50  0000 L CNN
F 2 "agg:0402" H 4450 3500 50  0001 C CNN
F 3 "" H 4450 3500 50  0001 C CNN
F 4 "2447127" H 4450 3500 50  0001 C CNN "Farnell"
	1    4450 3500
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:R R?
U 1 1 5B3171A4
P 4450 4550
AR Path="/5A37ABBB/5B3171A4" Ref="R?"  Part="1" 
AR Path="/5A37ABC3/5B3171A4" Ref="R15"  Part="1" 
F 0 "R15" V 4454 4591 50  0000 L CNN
F 1 "1M" V 4545 4591 50  0000 L CNN
F 2 "agg:0402" H 4450 4550 50  0001 C CNN
F 3 "" H 4450 4550 50  0001 C CNN
F 4 "2447127" H 4450 4550 50  0001 C CNN "Farnell"
	1    4450 4550
	1    0    0    -1  
$EndComp
Text Notes 3800 5150 0    60   ~ 0
\n
Text Notes 3950 3150 0    60   ~ 0
Si4460\n\n
Text Notes 10000 3050 0    60   ~ 0
Si4460 Antenna Matching
Text Notes 500  3200 0    60   ~ 0
MICRF 434MHz FSK Circuit
Text Notes 800  4400 0    60   ~ 0
Based on joey (https://github.com/cuspaceflight/joey-m)
$Comp
L TMP102:TMP102 U4
U 1 1 5B319984
P 5200 5700
F 0 "U4" H 5200 6047 60  0000 C CNN
F 1 "TMP102" H 5200 5941 60  0000 C CNN
F 2 "agg:SOT-666" H 4800 5800 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tmp102.pdf" H 4800 5800 60  0001 C CNN
F 4 "2764803" H 5200 5700 50  0001 C CNN "Farnell"
	1    5200 5700
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:R R16
U 1 1 5B319B6A
P 4650 6000
F 0 "R16" V 4746 5959 50  0000 R CNN
F 1 "4k7" V 4655 5959 50  0000 R CNN
F 2 "agg:0402" H 4650 6000 50  0001 C CNN
F 3 "" H 4650 6000 50  0001 C CNN
F 4 "2447187" H 0   0   50  0001 C CNN "Farnell"
	1    4650 6000
	0    -1   -1   0   
$EndComp
Text HLabel 4450 5600 0    60   Input ~ 0
TMP_SCL
Text HLabel 4450 5700 0    60   Input ~ 0
TMP_SDA
Text HLabel 4450 5800 0    60   Input ~ 0
TMP_ALERT
$Comp
L agg-kicad:3v3 #PWR041
U 1 1 5B320413
P 5650 5550
F 0 "#PWR041" H 5650 5660 50  0001 L CNN
F 1 "3v3" H 5650 5640 50  0000 C CNN
F 2 "" H 5650 5550 60  0000 C CNN
F 3 "" H 5650 5550 60  0000 C CNN
	1    5650 5550
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:C C20
U 1 1 5B3206C9
P 2600 3650
F 0 "C20" V 2604 3708 50  0000 L CNN
F 1 "100nF" V 2695 3708 50  0000 L CNN
F 2 "agg:0402" H 2600 3650 50  0001 C CNN
F 3 "" H 2600 3650 50  0001 C CNN
F 4 "2533923" H 0   0   50  0001 C CNN "Farnell"
	1    2600 3650
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:C C21
U 1 1 5B3208D9
P 2900 3650
F 0 "C21" V 2904 3708 50  0000 L CNN
F 1 "10uF" V 2995 3708 50  0000 L CNN
F 2 "Jerboa:1411" H 2900 3650 50  0001 C CNN
F 3 "" H 2900 3650 50  0001 C CNN
F 4 "1754183" H 0   0   50  0001 C CNN "Farnell"
	1    2900 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 3550 2500 3600
Wire Wire Line
	2600 3650 2600 3600
Wire Wire Line
	2600 3600 2500 3600
Connection ~ 2500 3600
Wire Wire Line
	2500 3600 2500 3700
Connection ~ 2600 3600
Wire Wire Line
	2600 3750 2600 3800
Connection ~ 2600 3800
Wire Wire Line
	2900 3600 2900 3650
Wire Wire Line
	2600 3600 2900 3600
Wire Wire Line
	2900 3800 2900 3750
Wire Wire Line
	2600 3800 2900 3800
Wire Wire Line
	5200 3900 5650 3900
Wire Wire Line
	5200 4300 5650 4300
$Comp
L agg-kicad:GND #PWR042
U 1 1 5B35FD89
P 5650 5850
F 0 "#PWR042" H 5520 5890 50  0001 L CNN
F 1 "GND" H 5800 5850 50  0000 C CNN
F 2 "" H 5650 5850 60  0000 C CNN
F 3 "" H 5650 5850 60  0000 C CNN
	1    5650 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 5600 5650 5600
Wire Wire Line
	5650 5600 5650 5550
Text Notes 2650 3550 1    60   ~ 0
ceramic
Text Notes 2950 3550 1    60   ~ 0
tantalum
Wire Wire Line
	5650 5700 5650 5800
Wire Wire Line
	5650 5700 5600 5700
Wire Wire Line
	5600 5800 5650 5800
Connection ~ 5650 5800
Wire Wire Line
	5650 5800 5650 5850
$Comp
L agg-kicad:C C25
U 1 1 5B3AC658
P 5750 5600
F 0 "C25" V 5754 5658 50  0000 L CNN
F 1 "10nF" V 5845 5658 50  0000 L CNN
F 2 "agg:0402" H 5750 5600 50  0001 C CNN
F 3 "" H 5750 5600 50  0001 C CNN
F 4 "2627339" H 0   0   50  0001 C CNN "Farnell"
	1    5750 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 5600 5650 5600
Connection ~ 5650 5600
Wire Wire Line
	5650 5700 5750 5700
Connection ~ 5650 5700
Wire Wire Line
	4550 6000 4550 6050
Text Notes 4800 6050 0    60   ~ 0
Use to monitor crystal temperature
Wire Wire Line
	2900 3800 3100 3800
Wire Wire Line
	3100 3800 3100 3850
Wire Wire Line
	2450 3800 2600 3800
Connection ~ 2900 3800
$Comp
L agg-kicad:3v3 #PWR039
U 1 1 5B3BA2EA
P 4550 6000
F 0 "#PWR039" H 4550 6110 50  0001 L CNN
F 1 "3v3" H 4550 6090 50  0000 C CNN
F 2 "" H 4550 6000 60  0000 C CNN
F 3 "" H 4550 6000 60  0000 C CNN
	1    4550 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 5900 4650 5800
Wire Wire Line
	4650 5800 4800 5800
Wire Wire Line
	4550 6050 4650 6050
Wire Wire Line
	4650 6050 4650 6000
Wire Wire Line
	4450 5600 4800 5600
Wire Wire Line
	4800 5700 4450 5700
Wire Wire Line
	4450 5800 4650 5800
Connection ~ 4650 5800
Connection ~ 8950 4000
Wire Wire Line
	9300 4000 9300 3950
Wire Wire Line
	9300 3850 9300 3800
Wire Wire Line
	8600 3800 8950 3800
Connection ~ 8600 3800
Wire Wire Line
	8950 3800 9300 3800
Wire Wire Line
	8950 4000 9300 4000
Wire Wire Line
	8600 4000 8950 4000
Wire Wire Line
	8950 4050 8950 4000
Wire Wire Line
	8900 4450 8900 4500
Wire Wire Line
	8900 4500 9300 4500
Connection ~ 8900 4500
Wire Wire Line
	8900 4500 8900 4550
Wire Wire Line
	8900 4300 9300 4300
Connection ~ 8900 4300
$Comp
L agg-kicad:PART X1
U 1 1 5B504041
P 9300 1650
F 0 "X1" H 9828 1746 50  0000 L CNN
F 1 "Antenna (434MHz)" H 9828 1655 50  0000 L CNN
F 2 "" H 9300 1650 50  0001 C CNN
F 3 "https://www.mouser.co.uk/datasheet/2/743/ANT-SS433%20V1.1-768740.pdf" H 9300 1650 50  0001 C CNN
F 4 "471-ANT-SS433" H 9300 1650 50  0001 C CNN "Mouser"
	1    9300 1650
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:PART X2
U 1 1 5B5043B9
P 9550 4400
F 0 "X2" H 10078 4496 50  0000 L CNN
F 1 "Antenna (434MHz)" H 10078 4405 50  0000 L CNN
F 2 "" H 9550 4400 50  0001 C CNN
F 3 "https://www.mouser.co.uk/datasheet/2/743/ANT-SS433%20V1.1-768740.pdf" H 9550 4400 50  0001 C CNN
F 4 "471-ANT-SS433" H 9550 4400 50  0001 C CNN "Mouser"
	1    9550 4400
	1    0    0    -1  
$EndComp
Text Notes 7300 2800 0    50   ~ 0
https://www.silabs.com/documents/public/application-notes/AN627.pdf
$EndSCHEMATC
