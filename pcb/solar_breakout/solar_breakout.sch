EESchema Schematic File Version 4
LIBS:solar_breakout-cache
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
L agg-kicad:CONN_01x02 J?
U 1 1 5A7C8A52
P 6000 1900
F 0 "J?" H 6031 2115 50  0000 C CNN
F 1 "CONN_01x02" H 6031 2024 50  0000 C CNN
F 2 "agg:SIL-254P-02" H 6000 1900 50  0001 C CNN
F 3 "" H 6000 1900 50  0001 C CNN
F 4 "1593458" H 6000 1900 60  0001 C CNN "Farnell"
	1    6000 1900
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:CONN_01x02 J?
U 1 1 5A7C8C5D
P 7250 1900
F 0 "J?" H 7281 2115 50  0000 C CNN
F 1 "CONN_01x02" H 7281 2024 50  0000 C CNN
F 2 "agg:SIL-254P-02" H 7250 1900 50  0001 C CNN
F 3 "" H 7250 1900 50  0001 C CNN
F 4 "1593458" H 7250 1900 60  0001 C CNN "Farnell"
	1    7250 1900
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:GND #PWR?
U 1 1 5A7C8D84
P 6250 2000
F 0 "#PWR?" H 6120 2040 50  0001 L CNN
F 1 "GND" H 6250 2087 50  0000 C CNN
F 2 "" H 6250 2000 50  0001 C CNN
F 3 "" H 6250 2000 50  0001 C CNN
	1    6250 2000
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:GND #PWR?
U 1 1 5A7C8EBA
P 7550 2050
F 0 "#PWR?" H 7420 2090 50  0001 L CNN
F 1 "GND" H 7550 2137 50  0000 C CNN
F 2 "" H 7550 2050 50  0001 C CNN
F 3 "" H 7550 2050 50  0001 C CNN
	1    7550 2050
	1    0    0    -1  
$EndComp
Text Label 7500 1900 0    50   ~ 0
Panel_V
Wire Wire Line
	7350 1900 7500 1900
Wire Wire Line
	7350 2000 7550 2000
Wire Wire Line
	7550 2000 7550 2050
Text Label 6250 1900 0    50   ~ 0
Cap_V
Wire Wire Line
	6100 2000 6250 2000
Wire Wire Line
	6250 1900 6100 1900
$Comp
L agg-kicad:R R?
U 1 1 5A7C93DB
P 6700 3550
F 0 "R?" V 6700 3400 50  0000 L CNN
F 1 "510k" V 6800 3350 50  0000 L CNN
F 2 "" H 6700 3550 50  0001 C CNN
F 3 "" H 6700 3550 50  0001 C CNN
	1    6700 3550
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:R R?
U 1 1 5A7C950D
P 6700 3350
F 0 "R?" V 6700 3250 50  0000 C CNN
F 1 "750k" V 6800 3250 50  0000 C CNN
F 2 "" H 6700 3350 50  0001 C CNN
F 3 "" H 6700 3350 50  0001 C CNN
	1    6700 3350
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:CP C?
U 1 1 5A7C9D0B
P 7150 3550
F 0 "C?" V 7246 3492 50  0000 R CNN
F 1 "50" V 7155 3492 50  0000 R CNN
F 2 "" H 7150 3550 50  0001 C CNN
F 3 "" H 7150 3550 50  0001 C CNN
	1    7150 3550
	0    -1   -1   0   
$EndComp
$Comp
L agg-kicad:L L?
U 1 1 5A7CA7EC
P 5750 2900
F 0 "L?" H 5800 3078 50  0000 C CNN
F 1 "10u" H 5800 2987 50  0000 C CNN
F 2 "" H 5750 2900 50  0001 C CNN
F 3 "" H 5750 2900 50  0001 C CNN
F 4 "Value" H 5750 2900 60  0001 C CNN "Farnell"
	1    5750 2900
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:C C?
U 1 1 5A7CABAB
P 6350 3850
F 0 "C?" V 6354 3908 50  0000 L CNN
F 1 "4.7u" V 6445 3908 50  0000 L CNN
F 2 "" H 6350 3850 50  0001 C CNN
F 3 "" H 6350 3850 50  0001 C CNN
	1    6350 3850
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:C C?
U 1 1 5A7CADCB
P 5050 3600
F 0 "C?" V 5054 3658 50  0000 L CNN
F 1 "10n" V 5145 3658 50  0000 L CNN
F 2 "" H 5050 3600 50  0001 C CNN
F 3 "" H 5050 3600 50  0001 C CNN
	1    5050 3600
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:C C?
U 1 1 5A7CAE34
P 5250 3200
F 0 "C?" H 5300 3005 50  0000 C CNN
F 1 "10u" H 5300 3096 50  0000 C CNN
F 2 "" H 5250 3200 50  0001 C CNN
F 3 "" H 5250 3200 50  0001 C CNN
	1    5250 3200
	-1   0    0    1   
$EndComp
$Comp
L agg-kicad:C C?
U 1 1 5A7CAE9A
P 5300 3700
F 0 "C?" V 5304 3758 50  0000 L CNN
F 1 "1u" V 5395 3758 50  0000 L CNN
F 2 "agg:0402" H 5300 3700 50  0001 C CNN
F 3 "" H 5300 3700 50  0001 C CNN
F 4 "2495145" H 5300 3700 60  0001 C CNN "Farnell"
	1    5300 3700
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:D D?
U 1 1 5A7CBF10
P 2700 7000
F 0 "D?" V 2796 6942 50  0000 R CNN
F 1 "MRA4003T3" V 2705 6942 50  0000 R CNN
F 2 "agg:DO-214AC-SMA" H 2700 7000 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2028669.pdf" H 2700 7000 50  0001 C CNN
F 4 "1459134" H 2700 7000 60  0001 C CNN "Farnell"
	1    2700 7000
	0    -1   -1   0   
$EndComp
$Comp
L agg-kicad:GND #PWR?
U 1 1 5A7CCCAD
P 5800 4100
F 0 "#PWR?" H 5670 4140 50  0001 L CNN
F 1 "GND" H 5800 4187 50  0000 C CNN
F 2 "" H 5800 4100 50  0001 C CNN
F 3 "" H 5800 4100 50  0001 C CNN
	1    5800 4100
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:GND #PWR?
U 1 1 5A7CCFD1
P 5050 3200
F 0 "#PWR?" H 4920 3240 50  0001 L CNN
F 1 "GND" H 5050 3287 50  0000 C CNN
F 2 "" H 5050 3200 50  0001 C CNN
F 3 "" H 5050 3200 50  0001 C CNN
	1    5050 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 2900 6250 2900
Wire Wire Line
	6250 2900 6250 3200
Wire Wire Line
	6250 3200 6200 3200
Wire Wire Line
	5800 4050 5800 4100
Wire Wire Line
	5300 3800 5300 4050
Wire Wire Line
	6200 3900 6250 3900
Wire Wire Line
	6250 3900 6250 4050
Connection ~ 5800 4050
Wire Wire Line
	6350 4050 6350 3950
Connection ~ 6250 4050
Wire Wire Line
	6350 3850 6350 3800
Wire Wire Line
	6350 3800 6200 3800
NoConn ~ 6200 3600
Wire Wire Line
	5300 3700 5300 3600
Wire Wire Line
	5300 3600 5400 3600
Wire Wire Line
	5050 3400 5050 3600
Wire Wire Line
	5050 3700 5050 4050
Connection ~ 5300 4050
Wire Wire Line
	4800 3400 4800 3650
Wire Wire Line
	4800 3750 4800 4050
Connection ~ 5050 4050
Wire Wire Line
	5400 3900 5350 3900
Wire Wire Line
	5350 3900 5350 4050
Connection ~ 5350 4050
Wire Wire Line
	5050 3200 5150 3200
Wire Wire Line
	3600 2900 5750 2900
Wire Wire Line
	5300 2900 5300 3200
Wire Wire Line
	5250 3200 5400 3200
Connection ~ 5300 2900
Connection ~ 5300 3200
Wire Wire Line
	6200 3500 6700 3500
Wire Wire Line
	6200 3300 7600 3300
Connection ~ 6350 4050
Text Label 4950 2900 0    50   ~ 0
Panel_V
NoConn ~ 5400 3500
$Comp
L solar_cell:Solar_Cell SC?
U 1 1 5A7F06D9
P 750 6750
F 0 "SC?" H 858 6846 50  0000 L CNN
F 1 "Solar_Cell" H 858 6755 50  0000 L CNN
F 2 "" V 750 6810 50  0001 C CNN
F 3 "~" V 750 6810 50  0001 C CNN
F 4 "Value" H 750 6750 60  0001 C CNN "Digikey"
F 5 "Value" H 750 6750 60  0001 C CNN "Farnell"
	1    750  6750
	1    0    0    -1  
$EndComp
$Comp
L solar_cell:Solar_Cell SC?
U 1 1 5A7CDA84
P 1650 6750
F 0 "SC?" H 1758 6846 50  0000 L CNN
F 1 "Solar_Cell" H 1758 6755 50  0000 L CNN
F 2 "" V 1650 6810 50  0001 C CNN
F 3 "~" V 1650 6810 50  0001 C CNN
F 4 "Value" H 1650 6750 60  0001 C CNN "Digikey"
F 5 "Value" H 1650 6750 60  0001 C CNN "Farnell"
	1    1650 6750
	1    0    0    -1  
$EndComp
$Comp
L solar_cell:Solar_Cell SC?
U 1 1 5A7CDAC6
P 750 7300
F 0 "SC?" H 858 7396 50  0000 L CNN
F 1 "Solar_Cell" H 858 7305 50  0000 L CNN
F 2 "" V 750 7360 50  0001 C CNN
F 3 "~" V 750 7360 50  0001 C CNN
F 4 "Value" H 750 7300 60  0001 C CNN "Digikey"
F 5 "Value" H 750 7300 60  0001 C CNN "Farnell"
	1    750  7300
	1    0    0    -1  
$EndComp
$Comp
L solar_cell:Solar_Cell SC?
U 1 1 5A7CDB0A
P 1650 7300
F 0 "SC?" H 1758 7396 50  0000 L CNN
F 1 "Solar_Cell" H 1758 7305 50  0000 L CNN
F 2 "" V 1650 7360 50  0001 C CNN
F 3 "~" V 1650 7360 50  0001 C CNN
F 4 "Value" H 1650 7300 60  0001 C CNN "Digikey"
F 5 "Value" H 1650 7300 60  0001 C CNN "Farnell"
	1    1650 7300
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:C C?
U 1 1 5A7CE150
P 6250 3450
F 0 "C?" V 6346 3392 50  0000 R CNN
F 1 "22p" V 6255 3392 50  0000 R CNN
F 2 "" H 6250 3450 50  0001 C CNN
F 3 "" H 6250 3450 50  0001 C CNN
F 4 "Value" H 6250 3450 60  0001 C CNN "Farnell"
	1    6250 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6250 3350 6250 3300
Connection ~ 6250 3300
Wire Wire Line
	6250 3450 6250 3500
Connection ~ 6250 3500
Wire Wire Line
	750  7100 750  6850
Wire Wire Line
	1650 7100 1650 6850
$Comp
L agg-kicad:C C?
U 1 1 5A7D2F9C
P 6900 3450
F 0 "C?" V 6904 3508 50  0000 L CNN
F 1 "1u" V 6995 3508 50  0000 L CNN
F 2 "" H 6900 3450 50  0001 C CNN
F 3 "" H 6900 3450 50  0001 C CNN
F 4 "Value" H 6900 3450 60  0001 C CNN "Farnell"
	1    6900 3450
	0    1    1    0   
$EndComp
Text Notes 5350 2850 0    60   ~ 0
1V
$Comp
L sm74611:SM74611 U?
U 1 1 5A7DE91F
P 2850 1650
F 0 "U?" H 2850 1947 60  0000 C CNN
F 1 "SM74611" H 2850 1841 60  0000 C CNN
F 2 "solar_breakout:SM74611" H 2200 1700 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sm74611.pdf" H 2850 1400 60  0001 C CNN
F 4 "2492333" H 2850 1300 60  0001 C CNN "Farnell"
	1    2850 1650
	1    0    0    -1  
$EndComp
$Comp
L sm74611:SM74611 U?
U 1 1 5A7DEA61
P 2850 3150
F 0 "U?" H 2850 3447 60  0000 C CNN
F 1 "SM74611" H 2850 3341 60  0000 C CNN
F 2 "solar_breakout:SM74611" H 2200 3200 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sm74611.pdf" H 2850 2900 60  0001 C CNN
F 4 "2492333" H 2850 2800 60  0001 C CNN "Farnell"
	1    2850 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 7500 1650 7400
Wire Wire Line
	750  7500 750  7400
Text Notes 900  7000 0    60   ~ 0
Tabbing wire
Text Notes 900  1750 0    60   ~ 0
Holes for flying wires
Text Label 7600 3300 0    50   ~ 0
Cap_V
Wire Wire Line
	7150 3450 7150 3300
Connection ~ 7150 3300
Wire Wire Line
	6900 3450 6900 3300
Connection ~ 6900 3300
Wire Wire Line
	6700 3450 6700 3550
Wire Wire Line
	6700 3350 6700 3300
Connection ~ 6700 3300
Connection ~ 6700 3500
Wire Wire Line
	6700 3650 6700 4050
Connection ~ 6700 4050
Wire Wire Line
	6900 4050 6900 3550
Wire Wire Line
	7150 3550 7150 4050
Connection ~ 6900 4050
Text Notes 3550 3750 0    60   ~ 0
Flying wires, \nthermally coupled\nto solar cells\n(no smd footprint)
$Comp
L agg-kicad:LTC3105 IC?
U 1 1 5A7C9AD2
P 5800 3500
F 0 "IC?" H 5800 4025 50  0000 C CNN
F 1 "LTC3105" H 5800 3934 50  0000 C CNN
F 2 "agg:DFN-10-EP-LT" H 5500 2900 50  0001 L CNN
F 3 "" H 5400 3800 50  0001 C CNN
F 4 "1898600" H 5500 2800 50  0001 L CNN "Farnell"
	1    5800 3500
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:D D?
U 1 1 5A7F1F34
P 2700 7250
F 0 "D?" V 2796 7192 50  0000 R CNN
F 1 "MRA4003T3" V 2705 7192 50  0000 R CNN
F 2 "agg:DO-214AC-SMA" H 2700 7250 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2028669.pdf" H 2700 7250 50  0001 C CNN
F 4 "1459134" H 2700 7250 60  0001 C CNN "Farnell"
	1    2700 7250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2700 7150 2700 7000
$Comp
L agg-kicad:CONN_01x02 J?
U 1 1 5A7F3534
P 1950 1650
F 0 "J?" H 1981 1865 50  0000 C CNN
F 1 "CONN_01x02" H 1981 1774 50  0000 C CNN
F 2 "agg:SIL-254P-02" H 1950 1650 50  0001 C CNN
F 3 "" H 1950 1650 50  0001 C CNN
F 4 "Value" H 1950 1650 60  0001 C CNN "Farnell"
	1    1950 1650
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:CONN_01x02 J?
U 1 1 5A7F3705
P 1950 3150
F 0 "J?" H 1981 3365 50  0000 C CNN
F 1 "CONN_01x02" H 1981 3274 50  0000 C CNN
F 2 "agg:SIL-254P-02" H 1950 3150 50  0001 C CNN
F 3 "" H 1950 3150 50  0001 C CNN
F 4 "Value" H 1950 3150 60  0001 C CNN "Farnell"
	1    1950 3150
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:GND #PWR?
U 1 1 5A7F37F7
P 2200 3300
F 0 "#PWR?" H 2070 3340 50  0001 L CNN
F 1 "GND" H 2200 3387 50  0000 C CNN
F 2 "" H 2200 3300 50  0001 C CNN
F 3 "" H 2200 3300 50  0001 C CNN
	1    2200 3300
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:GND #PWR?
U 1 1 5A7F385E
P 2200 1800
F 0 "#PWR?" H 2070 1840 50  0001 L CNN
F 1 "GND" H 2200 1887 50  0000 C CNN
F 2 "" H 2200 1800 50  0001 C CNN
F 3 "" H 2200 1800 50  0001 C CNN
	1    2200 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 3250 2200 3250
Wire Wire Line
	2200 3250 2200 3300
Wire Wire Line
	2200 3150 2050 3150
Wire Wire Line
	2050 1650 2200 1650
Wire Wire Line
	2050 1750 2200 1750
Wire Wire Line
	2200 1750 2200 1800
Text Notes 7750 3500 0    60   ~ 0
Discharge jumper (short to discharge capacitor)\nREMOVE BEFORE FLIGHT
$Comp
L agg-kicad:CONN_01x02 J?
U 1 1 5A7F9023
P 7550 3500
F 0 "J?" H 7450 3450 50  0000 C CNN
F 1 "CONN_01x02" H 7400 3600 50  0000 C CNN
F 2 "agg:SIL-254P-02" H 7550 3500 50  0001 C CNN
F 3 "" H 7550 3500 50  0001 C CNN
F 4 "1593458" H 7550 3500 60  0001 C CNN "Farnell"
	1    7550 3500
	-1   0    0    1   
$EndComp
$Comp
L agg-kicad:R R?
U 1 1 5A7F91AC
P 7400 3700
F 0 "R?" V 7400 3600 50  0000 L CNN
F 1 "3.3" V 7500 3550 50  0000 L CNN
F 2 "agg:2512" H 7400 3700 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2007092.pdf" H 7400 3700 50  0001 C CNN
F 4 "2476361" H 7400 3700 60  0001 C CNN "Farnell"
	1    7400 3700
	0    1    1    0   
$EndComp
Connection ~ 7400 3300
Connection ~ 7150 4050
Wire Wire Line
	7450 3400 7400 3400
Wire Wire Line
	7400 3400 7400 3300
Wire Wire Line
	7400 3500 7450 3500
Wire Wire Line
	7400 3500 7400 3700
Wire Wire Line
	7400 3800 7400 4050
Wire Wire Line
	4800 4050 7400 4050
$Comp
L agg-kicad:PART X?
U 1 1 5A815078
P 8150 3700
F 0 "X?" H 8678 3796 50  0000 L CNN
F 1 "Jumper" H 8250 3750 50  0000 L CNN
F 2 "" H 8150 3700 50  0001 C CNN
F 3 "" H 8150 3700 50  0001 C CNN
F 4 "1654800" H 8150 3700 60  0001 C CNN "Farnell"
	1    8150 3700
	1    0    0    -1  
$EndComp
Text Label 750  6400 0    60   ~ 0
Array_1_+
Text Label 1650 6400 0    60   ~ 0
Array_2_+
Text Label 2700 6750 0    60   ~ 0
D_anode
Wire Wire Line
	2700 6900 2700 6750
Wire Wire Line
	750  6550 750  6400
Wire Wire Line
	1650 6550 1650 6400
$Comp
L agg-kicad:CONN_01x02 J?
U 1 1 5A81FA4C
P 4550 3650
F 0 "J?" H 4581 3865 50  0000 C CNN
F 1 "CONN_01x02" H 4581 3774 50  0000 C CNN
F 2 "agg:SIL-254P-02" H 4550 3650 50  0001 C CNN
F 3 "" H 4550 3650 50  0001 C CNN
F 4 "Value" H 4550 3650 60  0001 C CNN "Farnell"
	1    4550 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3650 4800 3650
Wire Wire Line
	4650 3750 4800 3750
Text Label 750  7500 0    60   ~ 0
Array_1_-
Text Label 1650 7500 0    60   ~ 0
Array_2_-
Text Label 2700 7500 0    60   ~ 0
D_cathode
Wire Wire Line
	2700 7500 2700 7250
Text Label 2100 1400 1    60   ~ 0
Array_1_+
Text Label 2100 2950 1    60   ~ 0
Array_2_+
Text Label 2100 1850 3    60   ~ 0
Array_1_-
Text Label 2100 3350 3    60   ~ 0
Array_2_-
Wire Wire Line
	2100 3350 2100 3250
Connection ~ 2100 3250
Wire Wire Line
	2100 2950 2100 3150
Connection ~ 2100 3150
Wire Wire Line
	2100 1850 2100 1750
Connection ~ 2100 1750
Wire Wire Line
	2100 1400 2100 1650
Connection ~ 2100 1650
Text Label 4700 3300 2    60   ~ 0
D_anode
Wire Wire Line
	4700 3300 4700 3650
Connection ~ 4700 3650
Text Label 4700 4000 2    60   ~ 0
D_cathode
Wire Wire Line
	4700 4000 4700 3750
Connection ~ 4700 3750
Wire Notes Line
	500  5900 3300 5900
Wire Notes Line
	3300 5900 3300 7750
Text Notes 500  6050 0    79   ~ 16
Off board components
Text Notes 2650 7700 1    60   ~ 0
Thermally coupled to solar cells
Text Notes 850  3250 0    60   ~ 0
Holes for flying wires
Text Notes 6150 2200 0    60   ~ 0
Board to board connectors
Wire Wire Line
	3500 3200 3600 3200
Wire Wire Line
	3600 1700 3600 3200
Wire Wire Line
	3600 1700 3500 1700
$Comp
L agg-kicad:R R?
U 1 1 5A8494E9
P 5300 3400
F 0 "R?" H 5350 3222 50  0000 C CNN
F 1 "R" H 5350 3313 50  0000 C CNN
F 2 "" H 5300 3400 50  0001 C CNN
F 3 "" H 5300 3400 50  0001 C CNN
F 4 "Value" H 5300 3400 60  0001 C CNN "Farnell"
	1    5300 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	5300 3400 5400 3400
Wire Wire Line
	4800 3400 5200 3400
Connection ~ 5050 3400
Text Notes 5900 2850 0    60   ~ 0
Low DCR
Text Notes 4850 3200 0    60   ~ 0
Low ESR
Text Notes 6850 3650 1    12   ~ 0
Low ESR\nClose to converter pins
Text Notes 4900 3500 0    20   ~ 0
Change value to set max power point \n(use ltspice and IV curves for solar panels)
$EndSCHEMATC