EESchema Schematic File Version 4
LIBS:jerboa-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L agg-kicad:Si4460 IC401
U 1 1 5A68AEFA
P 2650 2000
F 0 "IC401" H 2350 2700 50  0000 L CNN
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
L agg-kicad:GND #PWR017
U 1 1 5A68B038
P 2050 1800
F 0 "#PWR017" H 1920 1840 50  0001 L CNN
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
L agg-kicad:C C407
U 1 1 5A68B322
P 1850 1600
F 0 "C407" H 1900 1670 50  0000 C CNN
F 1 "100n" H 1900 1530 50  0000 C CNN
F 2 "" H 1850 1600 50  0001 C CNN
F 3 "" H 1850 1600 50  0001 C CNN
F 4 "Value" H 1850 1600 60  0001 C CNN "Fieldname"
	1    1850 1600
	0    -1   -1   0   
$EndComp
$Comp
L agg-kicad:C C406
U 1 1 5A68B351
P 1600 1600
F 0 "C406" H 1650 1670 50  0000 C CNN
F 1 "100p" H 1650 1530 50  0000 C CNN
F 2 "" H 1600 1600 50  0001 C CNN
F 3 "" H 1600 1600 50  0001 C CNN
F 4 "Value" H 1600 1600 60  0001 C CNN "Fieldname"
	1    1600 1600
	0    -1   -1   0   
$EndComp
$Comp
L agg-kicad:C C408
U 1 1 5A68B3B6
P 2050 1600
F 0 "C408" H 2100 1670 50  0000 C CNN
F 1 "1u" H 2100 1530 50  0000 C CNN
F 2 "" H 2050 1600 50  0001 C CNN
F 3 "" H 2050 1600 50  0001 C CNN
F 4 "Value" H 2050 1600 60  0001 C CNN "Fieldname"
	1    2050 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	900  1400 2250 1400
Wire Wire Line
	1850 1700 1850 1600
Connection ~ 2050 1700
Wire Wire Line
	1600 1700 1600 1600
Connection ~ 1850 1700
Wire Wire Line
	2050 1600 2050 1800
Wire Wire Line
	2250 1600 2150 1600
Wire Wire Line
	2150 1600 2150 1700
Connection ~ 2150 1700
Wire Wire Line
	2250 1500 2150 1500
Wire Wire Line
	2150 1500 2150 1400
Connection ~ 2150 1400
Wire Wire Line
	2050 1300 2050 1500
Wire Wire Line
	1850 1400 1850 1500
Connection ~ 2050 1400
Wire Wire Line
	1600 1400 1600 1500
Connection ~ 1850 1400
$Comp
L agg-kicad:3v3 #PWR018
U 1 1 5A68B692
P 2050 1300
F 0 "#PWR018" H 2050 1410 50  0001 L CNN
F 1 "3v3" H 2050 1390 50  0000 C CNN
F 2 "" H 2050 1300 60  0000 C CNN
F 3 "" H 2050 1300 60  0000 C CNN
	1    2050 1300
	1    0    0    -1  
$EndComp
Connection ~ 1600 1400
Wire Wire Line
	1500 2000 2250 2000
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
L agg-kicad:COAX P401
U 1 1 5A68BF1C
P 8700 2200
F 0 "P401" H 8700 2300 50  0000 C CNN
F 1 "COAX" H 8700 2050 50  0000 C CNN
F 2 "agg:SMA-EDGE" H 8700 1990 50  0001 C CNN
F 3 "" H 8800 2100 50  0001 C CNN
F 4 "1608592" H 8700 1920 50  0001 C CNN "Farnell"
	1    8700 2200
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:C C5
U 1 1 5A68C1A2
P 8150 2350
F 0 "C5" H 8200 2420 50  0000 C CNN
F 1 "C" H 8200 2280 50  0000 C CNN
F 2 "" H 8150 2350 50  0001 C CNN
F 3 "" H 8150 2350 50  0001 C CNN
	1    8150 2350
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:C C4
U 1 1 5A68C1D3
P 7750 2350
F 0 "C4" H 7800 2420 50  0000 C CNN
F 1 "C" H 7800 2280 50  0000 C CNN
F 2 "" H 7750 2350 50  0001 C CNN
F 3 "" H 7750 2350 50  0001 C CNN
	1    7750 2350
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:C C3
U 1 1 5A68C21E
P 7350 2350
F 0 "C3" H 7400 2420 50  0000 C CNN
F 1 "C" H 7400 2280 50  0000 C CNN
F 2 "" H 7350 2350 50  0001 C CNN
F 3 "" H 7350 2350 50  0001 C CNN
	1    7350 2350
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:L L3
U 1 1 5A68C28F
P 7500 2200
F 0 "L3" H 7550 2250 50  0000 C CNN
F 1 "L" H 7550 2150 50  0000 C CNN
F 2 "" H 7500 2200 50  0001 C CNN
F 3 "" H 7500 2200 50  0001 C CNN
	1    7500 2200
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:L L4
U 1 1 5A68C2C2
P 7900 2200
F 0 "L4" H 7950 2250 50  0000 C CNN
F 1 "L" H 7950 2150 50  0000 C CNN
F 2 "" H 7900 2200 50  0001 C CNN
F 3 "" H 7900 2200 50  0001 C CNN
	1    7900 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 2200 8150 2350
Wire Wire Line
	8150 2450 8150 2650
Wire Wire Line
	7750 2600 7750 2450
Wire Wire Line
	7350 2450 7350 2600
Connection ~ 7750 2600
Wire Wire Line
	7750 2200 7750 2350
Connection ~ 7750 2200
Connection ~ 8150 2600
$Comp
L agg-kicad:GND #PWR020
U 1 1 5A68C4F8
P 8150 2650
F 0 "#PWR020" H 8020 2690 50  0001 L CNN
F 1 "GND" H 8150 2550 50  0000 C CNN
F 2 "" H 8150 2650 60  0000 C CNN
F 3 "" H 8150 2650 60  0000 C CNN
	1    8150 2650
	1    0    0    -1  
$EndComp
Connection ~ 7350 2200
$Comp
L agg-kicad:L L2
U 1 1 5A68C669
P 7100 1850
F 0 "L2" H 7150 1900 50  0000 C CNN
F 1 "L" H 7150 1800 50  0000 C CNN
F 2 "" H 7100 1850 50  0001 C CNN
F 3 "" H 7100 1850 50  0001 C CNN
	1    7100 1850
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:C C1
U 1 1 5A68C69E
P 6700 1850
F 0 "C1" H 6750 1920 50  0000 C CNN
F 1 "C" H 6750 1780 50  0000 C CNN
F 2 "" H 6700 1850 50  0001 C CNN
F 3 "" H 6700 1850 50  0001 C CNN
	1    6700 1850
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:C C2
U 1 1 5A68C6CF
P 6700 2200
F 0 "C2" H 6750 2270 50  0000 C CNN
F 1 "C" H 6750 2130 50  0000 C CNN
F 2 "" H 6700 2200 50  0001 C CNN
F 3 "" H 6700 2200 50  0001 C CNN
	1    6700 2200
	1    0    0    -1  
$EndComp
Text Label 6400 1850 2    60   ~ 0
RADIO_TX
$Comp
L agg-kicad:L L1
U 1 1 5A68C86D
P 6550 1600
F 0 "L1" H 6600 1650 50  0000 C CNN
F 1 "L" H 6600 1550 50  0000 C CNN
F 2 "" H 6550 1600 50  0001 C CNN
F 3 "" H 6550 1600 50  0001 C CNN
	1    6550 1600
	0    1    1    0   
$EndComp
Connection ~ 6550 1850
Wire Wire Line
	6550 1600 6550 1500
$Comp
L agg-kicad:3v3 #PWR021
U 1 1 5A68CF2C
P 6550 1500
F 0 "#PWR021" H 6550 1610 50  0001 L CNN
F 1 "3v3" H 6550 1590 50  0000 C CNN
F 2 "" H 6550 1500 60  0000 C CNN
F 3 "" H 6550 1500 60  0000 C CNN
	1    6550 1500
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:L L6
U 1 1 5A68D25F
P 6950 2350
F 0 "L6" H 7000 2400 50  0000 C CNN
F 1 "L" H 7000 2300 50  0000 C CNN
F 2 "" H 6950 2350 50  0001 C CNN
F 3 "" H 6950 2350 50  0001 C CNN
	1    6950 2350
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:L L5
U 1 1 5A68D2B8
P 6550 2350
F 0 "L5" H 6600 2400 50  0000 C CNN
F 1 "L" H 6600 2300 50  0000 C CNN
F 2 "" H 6550 2350 50  0001 C CNN
F 3 "" H 6550 2350 50  0001 C CNN
	1    6550 2350
	0    1    1    0   
$EndComp
Connection ~ 6950 2200
Wire Wire Line
	6950 2450 6950 2600
Connection ~ 7350 2600
Wire Wire Line
	6550 2200 6550 2350
Wire Wire Line
	6550 2450 6550 2600
Connection ~ 6950 2600
Wire Wire Line
	8000 2200 8600 2200
Wire Wire Line
	7600 2200 7900 2200
Wire Wire Line
	7350 1850 7200 1850
Wire Wire Line
	8600 2300 8600 2600
Connection ~ 8150 2200
$Comp
L agg-kicad:C C6
U 1 1 5A68EAFA
P 7100 2600
F 0 "C6" H 7150 2670 50  0000 C CNN
F 1 "C" H 7150 2530 50  0000 C CNN
F 2 "" H 7100 2600 50  0001 C CNN
F 3 "" H 7100 2600 50  0001 C CNN
	1    7100 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 2200 7500 2200
Wire Wire Line
	6950 2350 6950 2200
Wire Wire Line
	6400 2600 7100 2600
Wire Wire Line
	6400 2200 6700 2200
Wire Wire Line
	7200 2600 8600 2600
Wire Wire Line
	6550 1700 6550 1850
Wire Wire Line
	6400 1850 6700 1850
Wire Wire Line
	7350 1850 7350 2350
Connection ~ 6550 2200
Connection ~ 6550 2600
Text Label 6400 2600 2    60   ~ 0
RADIO_RXp
Text Label 6400 2200 2    60   ~ 0
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
	1600 1700 2250 1700
Wire Wire Line
	6800 1850 7100 1850
$Comp
L SI5351A_10_pin:SI5351A_10_pin U?
U 1 1 5A7CC074
P 6600 4400
F 0 "U?" H 7100 4647 60  0000 C CNN
F 1 "SI5351A_10_pin" H 7100 4541 60  0000 C CNN
F 2 "" H 6600 4400 60  0001 C CNN
F 3 "" H 6600 4400 60  0001 C CNN
	1    6600 4400
	1    0    0    -1  
$EndComp
$Comp
L FDC6329L:FDC6329L U?
U 1 1 5A7E3431
P 1900 4200
F 0 "U?" H 1900 4547 60  0000 C CNN
F 1 "FDC6329L" H 1900 4441 60  0000 C CNN
F 2 "Jerboa:SuperSOT-6" H 1900 3550 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2285836.pdf" H 1900 3650 60  0001 C CNN
F 4 "1652469" H 1900 3450 60  0001 C CNN "Farnell"
	1    1900 4200
	1    0    0    -1  
$EndComp
Text Label 6500 4350 2    60   ~ 0
SI5351_3V3
Text Label 2700 4100 0    60   ~ 0
SI5351_3V3
$Comp
L ASTX_H11:TCXO Y?
U 1 1 5A85FAB2
P 5250 4800
F 0 "Y?" H 5250 5025 50  0000 C CNN
F 1 "TCXO" H 5250 4934 50  0000 C CNN
F 2 "Jerboa:ASTX_H11" H 5250 4400 50  0001 C CNN
F 3 "http://www.abracon.com/Oscillators/ASTX-H11.pdf" H 5250 4450 50  0001 C CNN
F 4 "535-12039-1-ND" H 5050 4500 50  0001 L CNN "Digikey"
	1    5250 4800
	1    0    0    -1  
$EndComp
Text Label 4900 4800 2    60   ~ 0
SI5351_3V3
Wire Wire Line
	4900 4800 4950 4800
Text Label 5650 5000 3    60   ~ 0
SI5351_3V3
$Comp
L agg-kicad:R R?
U 1 1 5A866FF6
P 6200 4650
F 0 "R?" V 6204 4691 50  0000 L CNN
F 1 "100" V 6295 4691 50  0000 L CNN
F 2 "" H 6200 4650 50  0001 C CNN
F 3 "" H 6200 4650 50  0001 C CNN
F 4 "Value" H 6200 4650 60  0001 C CNN "Farnell"
	1    6200 4650
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:R R?
U 1 1 5A867144
P 6000 4800
F 0 "R?" H 6050 4622 50  0000 C CNN
F 1 "68" H 6050 4713 50  0000 C CNN
F 2 "" H 6000 4800 50  0001 C CNN
F 3 "" H 6000 4800 50  0001 C CNN
F 4 "Value" H 6000 4800 60  0001 C CNN "Farnell"
	1    6000 4800
	-1   0    0    1   
$EndComp
$Comp
L agg-kicad:R R?
U 1 1 5A8671A3
P 5650 4650
F 0 "R?" V 5654 4691 50  0000 L CNN
F 1 "100" V 5745 4691 50  0000 L CNN
F 2 "" H 5650 4650 50  0001 C CNN
F 3 "" H 5650 4650 50  0001 C CNN
F 4 "Value" H 5650 4650 60  0001 C CNN "Farnell"
	1    5650 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	5550 4800 5900 4800
Wire Wire Line
	6000 4800 6600 4800
Wire Wire Line
	5650 4750 5650 4800
Connection ~ 5650 4800
Wire Wire Line
	6200 4750 6200 4800
Connection ~ 6200 4800
Wire Wire Line
	5550 4900 6600 4900
$Comp
L agg-kicad:GND #PWR?
U 1 1 5A870B99
P 5650 4600
F 0 "#PWR?" H 5520 4640 50  0001 L CNN
F 1 "GND" H 5650 4500 50  0000 C CNN
F 2 "" H 5650 4600 60  0000 C CNN
F 3 "" H 5650 4600 60  0000 C CNN
	1    5650 4600
	-1   0    0    1   
$EndComp
$Comp
L agg-kicad:GND #PWR?
U 1 1 5A870C94
P 6200 4600
F 0 "#PWR?" H 6070 4640 50  0001 L CNN
F 1 "GND" H 6200 4500 50  0000 C CNN
F 2 "" H 6200 4600 60  0000 C CNN
F 3 "" H 6200 4600 60  0000 C CNN
	1    6200 4600
	-1   0    0    1   
$EndComp
Wire Wire Line
	6200 4600 6200 4650
Wire Wire Line
	5650 4600 5650 4650
$Comp
L agg-kicad:GND #PWR?
U 1 1 5A8745C5
P 4900 4950
F 0 "#PWR?" H 4770 4990 50  0001 L CNN
F 1 "GND" H 4900 4850 50  0000 C CNN
F 2 "" H 4900 4950 60  0000 C CNN
F 3 "" H 4900 4950 60  0000 C CNN
	1    4900 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 4950 4900 4900
Wire Wire Line
	4900 4900 4950 4900
Wire Wire Line
	6600 4500 6550 4500
Wire Wire Line
	6550 4350 6550 4500
Wire Wire Line
	6550 4400 6600 4400
$Comp
L agg-kicad:GND #PWR?
U 1 1 5A8787FE
P 6550 4650
F 0 "#PWR?" H 6420 4690 50  0001 L CNN
F 1 "GND" H 6550 4550 50  0000 C CNN
F 2 "" H 6550 4650 60  0000 C CNN
F 3 "" H 6550 4650 60  0000 C CNN
	1    6550 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 4650 6550 4600
Wire Wire Line
	6550 4600 6600 4600
Wire Wire Line
	6500 4350 6550 4350
Connection ~ 6550 4400
$Comp
L agg-kicad:R R?
U 1 1 5A884D06
P 6400 4950
F 0 "R?" V 6404 4991 50  0000 L CNN
F 1 "4k7" V 6495 4991 50  0000 L CNN
F 2 "" H 6400 4950 50  0001 C CNN
F 3 "" H 6400 4950 50  0001 C CNN
F 4 "Value" H 6400 4950 60  0001 C CNN "Farnell"
	1    6400 4950
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:R R?
U 1 1 5A884DE4
P 6400 5250
F 0 "R?" V 6404 5291 50  0000 L CNN
F 1 "4k7" V 6495 5291 50  0000 L CNN
F 2 "" H 6400 5250 50  0001 C CNN
F 3 "" H 6400 5250 50  0001 C CNN
F 4 "Value" H 6400 5250 60  0001 C CNN "Farnell"
	1    6400 5250
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 5100 6600 5100
Connection ~ 6400 5100
Wire Wire Line
	6200 5200 6600 5200
Connection ~ 6400 5200
Wire Wire Line
	6400 5050 6400 5100
Wire Wire Line
	5650 4950 6400 4950
Wire Wire Line
	6400 5250 6400 5200
Wire Wire Line
	6350 5350 6400 5350
Text Label 6200 5200 2    60   ~ 0
WSPR_SDA
Text Label 6200 5100 2    60   ~ 0
WSPR_SCL
Wire Wire Line
	5650 5000 5650 4900
Connection ~ 5650 4900
Connection ~ 5650 4950
Wire Wire Line
	6350 5350 6350 4950
Connection ~ 6350 4950
$EndSCHEMATC
