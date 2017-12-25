EESchema Schematic File Version 4
LIBS:jerboa-cache
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
$Comp
L agg-kicad:UBX-G7020 IC?
U 1 1 5A3FD517
P 5750 3250
F 0 "IC?" H 5800 4575 50  0000 C CNN
F 1 "UBX-G7020" H 5800 4484 50  0000 C CNN
F 2 "agg:QFN-40-EP-UBLOX" H 5250 1950 50  0001 L CNN
F 3 "" H 5150 4350 50  0001 C CNN
	1    5750 3250
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:3v3 #PWR?
U 1 1 5A3FD845
P 5100 1950
F 0 "#PWR?" H 5100 2060 50  0001 L CNN
F 1 "3v3" H 5100 2074 50  0000 C CNN
F 2 "" H 5100 1950 60  0001 C CNN
F 3 "" H 5100 1950 60  0001 C CNN
	1    5100 1950
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:C C?
U 1 1 5A3FE2DB
P 5000 2000
F 0 "C?" H 5050 1805 50  0000 C CNN
F 1 "4.7uF" H 5050 1896 50  0000 C CNN
F 2 "agg:0805" H 5000 2000 50  0001 C CNN
F 3 "" H 5000 2000 50  0001 C CNN
F 4 "9227857" H 5000 2000 60  0001 C CNN "Farnell"
	1    5000 2000
	-1   0    0    1   
$EndComp
$Comp
L agg-kicad:L L?
U 1 1 5A3FE3C6
P 5000 2250
F 0 "L?" H 5050 2428 50  0000 C CNN
F 1 "2.2uH" H 5050 2337 50  0000 C CNN
F 2 "Jerboa:0806" H 5000 2250 50  0001 C CNN
F 3 "http://psearch.en.murata.com/inductor/product/LQM2MPN2R2NG0%23.pdf" H 5000 2250 50  0001 C CNN
F 4 "2470314" H 5000 2250 60  0001 C CNN "Farnell"
	1    5000 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2250 5100 2250
Wire Wire Line
	5000 2250 5000 2350
Connection ~ 5000 2350
Wire Wire Line
	5000 2350 5150 2350
$Comp
L agg-kicad:C C?
U 1 1 5A3FE5F0
P 4150 2550
F 0 "C?" H 4200 2600 50  0000 C CNN
F 1 "1uF" H 4200 2700 50  0000 C CNN
F 2 "agg:0402" H 4150 2550 50  0001 C CNN
F 3 "" H 4150 2550 50  0001 C CNN
F 4 "1327658" H 4150 2550 60  0001 C CNN "Farnell"
	1    4150 2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	4800 2350 5000 2350
Wire Wire Line
	5100 2150 5100 2000
$Comp
L agg-kicad:GND #PWR?
U 1 1 5A3FF244
P 4800 2000
F 0 "#PWR?" H 4670 2040 50  0001 L CNN
F 1 "GND" V 4800 1750 50  0000 L CNN
F 2 "" H 4800 2000 60  0001 C CNN
F 3 "" H 4800 2000 60  0001 C CNN
	1    4800 2000
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:GND #PWR?
U 1 1 5A3FF268
P 4600 2350
F 0 "#PWR?" H 4470 2390 50  0001 L CNN
F 1 "GND" V 4550 2250 50  0000 L CNN
F 2 "" H 4600 2350 60  0001 C CNN
F 3 "" H 4600 2350 60  0001 C CNN
	1    4600 2350
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:GND #PWR?
U 1 1 5A3FF27F
P 3950 2450
F 0 "#PWR?" H 3820 2490 50  0001 L CNN
F 1 "GND" V 3950 2200 50  0000 L CNN
F 2 "" H 3950 2450 60  0001 C CNN
F 3 "" H 3950 2450 60  0001 C CNN
	1    3950 2450
	0    1    1    0   
$EndComp
$Comp
L agg-kicad:GND #PWR?
U 1 1 5A3FF296
P 3950 2550
F 0 "#PWR?" H 3820 2590 50  0001 L CNN
F 1 "GND" V 3950 2300 50  0000 L CNN
F 2 "" H 3950 2550 60  0001 C CNN
F 3 "" H 3950 2550 60  0001 C CNN
	1    3950 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 2000 5100 2000
Connection ~ 5100 2000
Wire Wire Line
	5100 2000 5100 1950
Wire Wire Line
	4900 2000 4800 2000
Wire Wire Line
	4700 2350 4600 2350
$Comp
L agg-kicad:3v3 #PWR?
U 1 1 5A3FF673
P 4400 2350
F 0 "#PWR?" H 4400 2460 50  0001 L CNN
F 1 "3v3" H 4400 2474 50  0000 C CNN
F 2 "" H 4400 2350 60  0001 C CNN
F 3 "" H 4400 2350 60  0001 C CNN
	1    4400 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 2450 4400 2450
Wire Wire Line
	4150 2550 4400 2550
Wire Wire Line
	4400 2350 4400 2450
Connection ~ 4400 2450
Wire Wire Line
	4400 2450 5150 2450
Wire Wire Line
	4400 2450 4400 2550
Connection ~ 4400 2550
Wire Wire Line
	4400 2550 5150 2550
Wire Wire Line
	4200 2450 3950 2450
Wire Wire Line
	4050 2550 3950 2550
Text Notes 900  1050 0    60   ~ 0
Notes:\n- See ubx-g7020 hardware integration manual for info including component values\n- Using DCDC converter; this option is set by the e fuses and appears to be set for  chips in ublox max 7q modules\n
$Comp
L agg-kicad:C C?
U 1 1 5A407461
P 4800 2350
F 0 "C?" H 4850 2155 50  0000 C CNN
F 1 "4.7uF" H 4850 2246 50  0000 C CNN
F 2 "agg:0805" H 4800 2350 50  0001 C CNN
F 3 "" H 4800 2350 50  0001 C CNN
F 4 "9227857" H 4800 2350 60  0001 C CNN "Farnell"
	1    4800 2350
	-1   0    0    1   
$EndComp
Wire Wire Line
	5150 2150 5100 2150
$Comp
L agg-kicad:C C?
U 1 1 5A408D67
P 4300 2450
F 0 "C?" H 4350 2500 50  0000 C CNN
F 1 "1uF" H 4350 2600 50  0000 C CNN
F 2 "agg:0402" H 4300 2450 50  0001 C CNN
F 3 "" H 4300 2450 50  0001 C CNN
F 4 "1327658" H 4300 2450 60  0001 C CNN "Farnell"
	1    4300 2450
	-1   0    0    1   
$EndComp
$EndSCHEMATC
