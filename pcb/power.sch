EESchema Schematic File Version 4
LIBS:jerboa-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
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
U 1 1 5A722F1A
P 3900 3400
F 0 "J?" H 3931 3615 50  0000 C CNN
F 1 "CONN_01x02" H 3931 3524 50  0000 C CNN
F 2 "agg:SIL-254P-02" H 3900 3400 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2290158.pdf" H 3900 3400 50  0001 C CNN
F 4 "1593458" H 3900 3400 50  0001 C CNN "Farnell"
	1    3900 3400
	1    0    0    -1  
$EndComp
Text Notes 2800 4150 0    50   ~ 0
Analog in from solar cells
$Comp
L agg-kicad:GND #PWR?
U 1 1 5A72304B
P 4100 4300
F 0 "#PWR?" H 3970 4340 50  0001 L CNN
F 1 "GND" H 4100 4200 50  0000 C CNN
F 2 "" H 4100 4300 50  0001 C CNN
F 3 "" H 4100 4300 50  0001 C CNN
	1    4100 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 4200 4100 4200
Wire Wire Line
	4100 4200 4100 4300
Text HLabel 4100 4100 2    50   Input ~ 0
solar_cells
Wire Wire Line
	4100 4100 4000 4100
$Comp
L agg-kicad:GND #PWR?
U 1 1 5A7230D2
P 4000 3650
F 0 "#PWR?" H 3870 3690 50  0001 L CNN
F 1 "GND" H 4000 3550 50  0000 C CNN
F 2 "" H 4000 3650 50  0001 C CNN
F 3 "" H 4000 3650 50  0001 C CNN
	1    4000 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 3400 5250 3400
Text Notes 2900 3450 0    50   ~ 0
Battery/capacitor input
$Comp
L agg-kicad:C C?
U 1 1 5A72323C
P 4150 3450
F 0 "C?" V 4154 3508 50  0000 L CNN
F 1 "10uF" V 4245 3508 50  0000 L CNN
F 2 "agg:0402" H 4150 3450 50  0001 C CNN
F 3 "" H 4150 3450 50  0001 C CNN
F 4 "2611904" H 4150 3450 50  0001 C CNN "Farnell"
	1    4150 3450
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:C C?
U 1 1 5A7232C1
P 4600 3450
F 0 "C?" V 4604 3508 50  0000 L CNN
F 1 "100nF" V 4695 3508 50  0000 L CNN
F 2 "agg:0402" H 4600 3450 50  0001 C CNN
F 3 "" H 4600 3450 50  0001 C CNN
F 4 "1288282" H 4600 3450 50  0001 C CNN "Farnell"
	1    4600 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 3450 4150 3400
Connection ~ 4150 3400
Wire Wire Line
	4600 3450 4600 3400
Connection ~ 4600 3400
$Comp
L agg-kicad:L L?
U 1 1 5A72334A
P 4700 3300
F 0 "L?" H 4750 3478 50  0000 C CNN
F 1 "6.8uH" H 4750 3387 50  0000 C CNN
F 2 "Jerboa:wurth_7447789006" H 4700 3300 50  0001 C CNN
F 3 "" H 4700 3300 50  0001 C CNN
F 4 "1635970" H 4700 3300 50  0001 C CNN "Farnell"
	1    4700 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3500 5150 3500
Wire Wire Line
	5150 3500 5150 3400
Connection ~ 5150 3400
$Comp
L agg-kicad:R R?
U 1 1 5A72341A
P 4900 3600
F 0 "R?" V 4904 3641 50  0000 L CNN
F 1 "604k" V 4995 3641 50  0000 L CNN
F 2 "agg:0402" H 4900 3600 50  0001 C CNN
F 3 "" H 4900 3600 50  0001 C CNN
F 4 "2073163" H 4900 3600 50  0001 C CNN "Farnell"
	1    4900 3600
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:R R?
U 1 1 5A7234B5
P 4900 3900
F 0 "R?" V 4904 3941 50  0000 L CNN
F 1 "499k" V 4995 3941 50  0000 L CNN
F 2 "agg:0402" H 4900 3900 50  0001 C CNN
F 3 "" H 4900 3900 50  0001 C CNN
F 4 "1469723" H 4900 3900 50  0001 C CNN "Farnell"
	1    4900 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 3800 4900 3800
Wire Wire Line
	4900 3700 4900 3900
Connection ~ 4900 3800
Wire Wire Line
	4900 3600 4900 3400
Connection ~ 4900 3400
$Comp
L agg-kicad:GND #PWR?
U 1 1 5A7237FD
P 4900 4050
F 0 "#PWR?" H 4770 4090 50  0001 L CNN
F 1 "GND" H 4900 3950 50  0000 C CNN
F 2 "" H 4900 4050 50  0001 C CNN
F 3 "" H 4900 4050 50  0001 C CNN
	1    4900 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 4000 4900 4050
$Comp
L agg-kicad:GND #PWR?
U 1 1 5A723902
P 5050 4250
F 0 "#PWR?" H 4920 4290 50  0001 L CNN
F 1 "GND" H 5050 4150 50  0000 C CNN
F 2 "" H 5050 4250 50  0001 C CNN
F 3 "" H 5050 4250 50  0001 C CNN
	1    5050 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 4200 5250 4200
Wire Wire Line
	5250 4100 5150 4100
Wire Wire Line
	5150 4100 5150 4200
Wire Wire Line
	4000 3500 4000 3650
Wire Wire Line
	4000 3600 4600 3600
Wire Wire Line
	4600 3600 4600 3550
Wire Wire Line
	4150 3550 4150 3600
Connection ~ 4150 3600
Connection ~ 4000 3600
Wire Wire Line
	4700 3300 4500 3300
Wire Wire Line
	4500 3300 4500 3400
Wire Wire Line
	4800 3300 5250 3300
$Comp
L agg-kicad:GND #PWR?
U 1 1 5A724A2A
P 6550 4250
F 0 "#PWR?" H 6420 4290 50  0001 L CNN
F 1 "GND" H 6550 4150 50  0000 C CNN
F 2 "" H 6550 4250 50  0001 C CNN
F 3 "" H 6550 4250 50  0001 C CNN
	1    6550 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 4200 6550 4200
Wire Wire Line
	6450 4200 6450 4100
Wire Wire Line
	6450 4100 6350 4100
$Comp
L agg-kicad:R R?
U 1 1 5A725405
P 7100 3600
F 0 "R?" V 7104 3641 50  0000 L CNN
F 1 "1M" V 7195 3641 50  0000 L CNN
F 2 "agg:0402" H 7100 3600 50  0001 C CNN
F 3 "" H 7100 3600 50  0001 C CNN
F 4 "2447127" H 7100 3600 50  0001 C CNN "Farnell"
	1    7100 3600
	0    1    1    0   
$EndComp
NoConn ~ 6350 3650
$Comp
L agg-kicad:C C?
U 1 1 5A725A05
P 6450 3400
F 0 "C?" V 6454 3458 50  0000 L CNN
F 1 "2.2uF" V 6545 3458 50  0000 L CNN
F 2 "agg:0402" H 6450 3400 50  0001 C CNN
F 3 "" H 6450 3400 50  0001 C CNN
F 4 "2346879" H 6450 3400 50  0001 C CNN "Farnell"
	1    6450 3400
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:3v3 #PWR?
U 1 1 5A725B18
P 7200 3250
F 0 "#PWR?" H 7200 3360 50  0001 L CNN
F 1 "3v3" H 7200 3374 50  0000 C CNN
F 2 "" H 7200 3250 50  0001 C CNN
F 3 "" H 7200 3250 50  0001 C CNN
	1    7200 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 3300 7200 3250
$Comp
L agg-kicad:GND #PWR?
U 1 1 5A72606D
P 6800 3600
F 0 "#PWR?" H 6670 3640 50  0001 L CNN
F 1 "GND" H 6800 3500 50  0000 C CNN
F 2 "" H 6800 3600 50  0001 C CNN
F 3 "" H 6800 3600 50  0001 C CNN
	1    6800 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3500 6800 3600
Connection ~ 6800 3550
Wire Wire Line
	6800 3400 6800 3300
Connection ~ 6800 3300
Wire Wire Line
	7100 3600 7100 3300
Wire Wire Line
	6350 3300 7200 3300
Connection ~ 7100 3300
Wire Wire Line
	7100 3700 7100 4000
Wire Wire Line
	6350 4000 7250 4000
Wire Wire Line
	6550 4250 6550 4200
Connection ~ 6450 4200
Wire Wire Line
	5050 4250 5050 4200
Connection ~ 5150 4200
Connection ~ 4500 3400
$Comp
L TPS6102x:TPS6102x U?
U 1 1 5A724BBB
P 5800 3750
F 0 "U?" H 5800 4425 50  0000 C CNN
F 1 "TPS61025DRCR" H 5800 4334 50  0000 C CNN
F 2 "Jerboa:VSON-10" H 5800 3000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tps61025.pdf" H 5800 3100 50  0001 C CNN
F 4 "1703402" H 5800 2900 50  0001 C CNN "Farnell"
	1    5800 3750
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:CP C?
U 1 1 5A72677F
P 6800 3500
F 0 "C?" V 6896 3442 50  0000 R CNN
F 1 "100uF" V 6805 3442 50  0000 R CNN
F 2 "Jerboa:avx_2312" H 6800 3500 50  0001 C CNN
F 3 "" H 6800 3500 50  0001 C CNN
F 4 "1135108" H 6800 3500 50  0001 C CNN "Farnell"
	1    6800 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6450 3400 6450 3300
Connection ~ 6450 3300
Wire Wire Line
	6450 3500 6450 3550
Wire Wire Line
	6450 3550 6800 3550
$Comp
L agg-kicad:CONN_01x02 J?
U 1 1 5A7274B5
P 3900 4100
F 0 "J?" H 3931 4315 50  0000 C CNN
F 1 "CONN_01x02" H 3931 4224 50  0000 C CNN
F 2 "agg:SIL-254P-02" H 3900 4100 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2290158.pdf" H 3900 4100 50  0001 C CNN
F 4 "1593458" H 3900 4100 50  0001 C CNN "Farnell"
	1    3900 4100
	1    0    0    -1  
$EndComp
Text HLabel 7250 4000 2    50   Input ~ 0
LOW_BATT_WARNING
Connection ~ 7100 4000
$EndSCHEMATC
