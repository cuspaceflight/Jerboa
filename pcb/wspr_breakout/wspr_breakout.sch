EESchema Schematic File Version 4
LIBS:wspr_breakout-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L SI5351A_10_pin:SI5351A_10_pin U?
U 1 1 5A8A0C05
P 7350 2950
F 0 "U?" H 7850 3197 60  0000 C CNN
F 1 "SI5351A_10_pin" H 7850 3091 60  0000 C CNN
F 2 "agg:MSOP-10" H 7350 2950 60  0001 C CNN
F 3 "" H 7350 2950 60  0001 C CNN
F 4 "Value" H 7350 2950 60  0001 C CNN "Farnell"
	1    7350 2950
	1    0    0    -1  
$EndComp
$Comp
L FDC6329L:FDC6329L U?
U 1 1 5A8A0C0D
P 2650 2750
F 0 "U?" H 2650 3097 60  0000 C CNN
F 1 "FDC6329L" H 2650 2991 60  0000 C CNN
F 2 "jerboa:SuperSOT-6" H 2650 2100 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2285836.pdf" H 2650 2200 60  0001 C CNN
F 4 "1652469" H 2650 2000 60  0001 C CNN "Farnell"
	1    2650 2750
	1    0    0    -1  
$EndComp
Text Label 7250 2900 2    60   ~ 0
SI5351_3V3
Text Label 3450 2650 0    60   ~ 0
SI5351_3V3
$Comp
L ASTX_H11:TCXO Y?
U 1 1 5A8A0C18
P 6000 3350
F 0 "Y?" H 6000 3575 50  0000 C CNN
F 1 "TCXO" H 6000 3484 50  0000 C CNN
F 2 "jerboa:ASTX_H11" H 6000 2950 50  0001 C CNN
F 3 "http://www.abracon.com/Oscillators/ASTX-H11.pdf" H 6000 3000 50  0001 C CNN
F 4 "Value" H 6000 3350 60  0001 C CNN "Farnell"
F 5 "535-12039-1-ND" H 5800 3050 50  0001 L CNN "Digikey"
	1    6000 3350
	1    0    0    -1  
$EndComp
Text Label 5650 3350 2    60   ~ 0
SI5351_3V3
Wire Wire Line
	5650 3350 5700 3350
Text Label 6950 3900 2    60   ~ 0
SI5351_3V3
$Comp
L agg-kicad:GND #PWR?
U 1 1 5A8A0C22
P 5650 3500
F 0 "#PWR?" H 5520 3540 50  0001 L CNN
F 1 "GND" H 5650 3400 50  0000 C CNN
F 2 "" H 5650 3500 60  0000 C CNN
F 3 "" H 5650 3500 60  0000 C CNN
	1    5650 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3500 5650 3450
Wire Wire Line
	5650 3450 5700 3450
Wire Wire Line
	7350 3050 7300 3050
Wire Wire Line
	7300 2900 7300 3050
Wire Wire Line
	7300 2950 7350 2950
$Comp
L agg-kicad:GND #PWR?
U 1 1 5A8A0C2D
P 7300 3200
F 0 "#PWR?" H 7170 3240 50  0001 L CNN
F 1 "GND" H 7300 3100 50  0000 C CNN
F 2 "" H 7300 3200 60  0000 C CNN
F 3 "" H 7300 3200 60  0000 C CNN
	1    7300 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 3200 7300 3150
Wire Wire Line
	7300 3150 7350 3150
Wire Wire Line
	7250 2900 7300 2900
Connection ~ 7300 2950
$Comp
L agg-kicad:R R?
U 1 1 5A8A0C38
P 7150 3500
F 0 "R?" V 7154 3541 50  0000 L CNN
F 1 "4k7" V 7245 3541 50  0000 L CNN
F 2 "" H 7150 3500 50  0001 C CNN
F 3 "" H 7150 3500 50  0001 C CNN
F 4 "Value" H 7150 3500 60  0001 C CNN "Farnell"
	1    7150 3500
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:R R?
U 1 1 5A8A0C40
P 7150 3800
F 0 "R?" V 7154 3841 50  0000 L CNN
F 1 "4k7" V 7245 3841 50  0000 L CNN
F 2 "" H 7150 3800 50  0001 C CNN
F 3 "" H 7150 3800 50  0001 C CNN
F 4 "Value" H 7150 3800 60  0001 C CNN "Farnell"
	1    7150 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	6950 3650 7350 3650
Connection ~ 7150 3650
Wire Wire Line
	6950 3750 7350 3750
Connection ~ 7150 3750
Wire Wire Line
	7150 3600 7150 3650
Wire Wire Line
	7150 3800 7150 3750
Wire Wire Line
	6950 3900 7150 3900
Text Label 6950 3750 2    60   ~ 0
WSPR_SDA
Text Label 6950 3650 2    60   ~ 0
WSPR_SCL
Wire Wire Line
	7100 3900 7100 3500
NoConn ~ 6300 3450
Wire Wire Line
	7100 3500 7150 3500
$Comp
L agg-kicad:R R?
U 1 1 5A8A0C54
P 6400 3350
F 0 "R?" H 6450 3528 50  0000 C CNN
F 1 "22k" H 6450 3437 50  0000 C CNN
F 2 "" H 6400 3350 50  0001 C CNN
F 3 "" H 6400 3350 50  0001 C CNN
F 4 "Value" H 6400 3350 60  0001 C CNN "Farnell"
	1    6400 3350
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:R R?
U 1 1 5A8A0C5C
P 6650 3150
F 0 "R?" V 6654 3191 50  0000 L CNN
F 1 "10k" V 6745 3191 50  0000 L CNN
F 2 "" H 6650 3150 50  0001 C CNN
F 3 "" H 6650 3150 50  0001 C CNN
F 4 "Value" H 6650 3150 60  0001 C CNN "Farnell"
	1    6650 3150
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:GND #PWR?
U 1 1 5A8A0C63
P 6650 3100
F 0 "#PWR?" H 6520 3140 50  0001 L CNN
F 1 "GND" H 6650 3000 50  0000 C CNN
F 2 "" H 6650 3100 60  0000 C CNN
F 3 "" H 6650 3100 60  0000 C CNN
	1    6650 3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	6650 3250 6650 3350
Connection ~ 6650 3350
Wire Wire Line
	6650 3150 6650 3100
Wire Wire Line
	6400 3350 6300 3350
Wire Wire Line
	7050 3350 7350 3350
Wire Wire Line
	6500 3350 6950 3350
$Comp
L agg-kicad:C C?
U 1 1 5A8A0C70
P 6950 3350
F 0 "C?" H 7000 3420 50  0000 C CNN
F 1 "100n" H 7000 3280 50  0000 C CNN
F 2 "" H 6950 3350 50  0001 C CNN
F 3 "" H 6950 3350 50  0001 C CNN
F 4 "Value" H 6950 3350 60  0001 C CNN "Fieldname"
	1    6950 3350
	1    0    0    -1  
$EndComp
Connection ~ 7100 3900
NoConn ~ 7350 3450
Text Notes 2150 4300 0    60   ~ 0
TODO:\n- Connect the load switch so that the whole board can be powered off when not in use\n- Low pass filter on the RF output (output is square but we want a sinusoid)\n    - Try to minimise the number/weight of inductors\n
Wire Wire Line
	3450 2650 3300 2650
$Comp
L agg-kicad:CONN_01x02 J?
U 1 1 5A89E21F
P 2000 1550
F 0 "J?" H 2031 1765 50  0000 C CNN
F 1 "CONN_01x02" H 2031 1674 50  0000 C CNN
F 2 "" H 2000 1550 50  0001 C CNN
F 3 "" H 2000 1550 50  0001 C CNN
F 4 "1593411" H 2000 1550 60  0001 C CNN "Farnell"
	1    2000 1550
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:CONN_01x03 J?
U 1 1 5A89E2F7
P 2000 2150
F 0 "J?" H 2031 2365 50  0000 C CNN
F 1 "CONN_01x03" H 2031 2274 50  0000 C CNN
F 2 "" H 2000 2150 50  0001 C CNN
F 3 "" H 2000 2150 50  0001 C CNN
F 4 "1593412" H 2000 2150 60  0001 C CNN "Farnell"
	1    2000 2150
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:3v3 #PWR?
U 1 1 5A89E3D0
P 2350 1450
F 0 "#PWR?" H 2350 1560 50  0001 L CNN
F 1 "3v3" H 2350 1574 50  0000 C CNN
F 2 "" H 2350 1450 60  0001 C CNN
F 3 "" H 2350 1450 60  0001 C CNN
	1    2350 1450
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:GND #PWR?
U 1 1 5A89E464
P 2350 1700
F 0 "#PWR?" H 2220 1740 50  0001 L CNN
F 1 "GND" H 2350 1600 50  0000 C CNN
F 2 "" H 2350 1700 60  0000 C CNN
F 3 "" H 2350 1700 60  0000 C CNN
	1    2350 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1700 2350 1650
Wire Wire Line
	2350 1650 2100 1650
Wire Wire Line
	2100 1550 2350 1550
Wire Wire Line
	2350 1550 2350 1450
Text Label 2200 2150 0    60   ~ 0
WSPR_SCL
Text Label 2200 2250 0    60   ~ 0
WSPR_SDA
Text Label 2200 2350 0    60   ~ 0
board_enable
Wire Wire Line
	2100 2150 2200 2150
Wire Wire Line
	2200 2250 2100 2250
Wire Wire Line
	2200 2350 2100 2350
$EndSCHEMATC
