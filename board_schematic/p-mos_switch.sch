EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:project_parts
LIBS:uC_segment_control-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 9 16
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
L BC548 Q?
U 1 1 572887A4
P 3100 1900
AR Path="/572753D2/572887A4" Ref="Q?"  Part="1" 
AR Path="/572880E3/572887A4" Ref="Q?"  Part="1" 
AR Path="/57276127/572887A4" Ref="Q?"  Part="1" 
AR Path="/57275FE1/572887A4" Ref="Q?"  Part="1" 
AR Path="/57276E10/572887A4" Ref="Q?"  Part="1" 
AR Path="/57276A8A/572887A4" Ref="Q?"  Part="1" 
AR Path="/5727C617/572887A4" Ref="Q?"  Part="1" 
AR Path="/5727C61F/572887A4" Ref="Q?"  Part="1" 
F 0 "Q?" H 3300 1975 50  0000 L CNN
F 1 "BC548" H 3300 1900 50  0000 L CNN
F 2 "TO-92" H 3300 1825 50  0000 L CIN
F 3 "" H 3100 1900 50  0000 L CNN
	1    3100 1900
	1    0    0    -1  
$EndComp
$Comp
L Q_PMOS_GSD Q?
U 1 1 57288D4B
P 3500 1550
AR Path="/572753D2/57288D4B" Ref="Q?"  Part="1" 
AR Path="/572880E3/57288D4B" Ref="Q?"  Part="1" 
AR Path="/57276127/57288D4B" Ref="Q?"  Part="1" 
AR Path="/57275FE1/57288D4B" Ref="Q?"  Part="1" 
AR Path="/57276E10/57288D4B" Ref="Q?"  Part="1" 
AR Path="/57276A8A/57288D4B" Ref="Q?"  Part="1" 
AR Path="/5727C617/57288D4B" Ref="Q?"  Part="1" 
AR Path="/5727C61F/57288D4B" Ref="Q?"  Part="1" 
F 0 "Q?" H 3450 1700 50  0000 R CNN
F 1 "IRLML2244" V 3750 1700 50  0000 R CNN
F 2 "" H 3700 1650 50  0000 C CNN
F 3 "" H 3500 1550 50  0000 C CNN
	1    3500 1550
	1    0    0    1   
$EndComp
$Comp
L R R?
U 1 1 57288EBC
P 2750 2050
AR Path="/572753D2/57288EBC" Ref="R?"  Part="1" 
AR Path="/572880E3/57288EBC" Ref="R?"  Part="1" 
AR Path="/57276127/57288EBC" Ref="R?"  Part="1" 
AR Path="/57275FE1/57288EBC" Ref="R?"  Part="1" 
AR Path="/57276E10/57288EBC" Ref="R?"  Part="1" 
AR Path="/57276A8A/57288EBC" Ref="R?"  Part="1" 
AR Path="/5727C617/57288EBC" Ref="R?"  Part="1" 
AR Path="/5727C61F/57288EBC" Ref="R?"  Part="1" 
F 0 "R?" V 2830 2050 50  0000 C CNN
F 1 "2k5" V 2750 2050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2680 2050 50  0001 C CNN
F 3 "" H 2750 2050 50  0000 C CNN
	1    2750 2050
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 57288ED3
P 3200 1400
AR Path="/572753D2/57288ED3" Ref="R?"  Part="1" 
AR Path="/572880E3/57288ED3" Ref="R?"  Part="1" 
AR Path="/57276127/57288ED3" Ref="R?"  Part="1" 
AR Path="/57275FE1/57288ED3" Ref="R?"  Part="1" 
AR Path="/57276E10/57288ED3" Ref="R?"  Part="1" 
AR Path="/57276A8A/57288ED3" Ref="R?"  Part="1" 
AR Path="/5727C617/57288ED3" Ref="R?"  Part="1" 
AR Path="/5727C61F/57288ED3" Ref="R?"  Part="1" 
F 0 "R?" V 3280 1400 50  0000 C CNN
F 1 "24k" V 3200 1400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3130 1400 50  0001 C CNN
F 3 "" H 3200 1400 50  0000 C CNN
	1    3200 1400
	1    0    0    -1  
$EndComp
Text Notes 2700 2650 0    39   ~ 0
Pulldown to \n+ prevent PMOS to reach a state between ON and OFF (getting hot)\n+ small enough that even with accidently uC-Pin as INPUT (Pullup=20k) nothing happens.\n(V_BE=0,3V --> R<2k5)\n+ big enough to switch with 3.3V.  R=2k5--> I_b=0.25mA
Text Notes 3650 2000 0    31   ~ 0
We need a lot of transistors so we took the one we already had.\nAnother type (NMOS/NPN) would work as well, but the R has to be\nrecalculated.
$Comp
L R R?
U 1 1 57270EA2
P 2550 1900
AR Path="/572753D2/57270EA2" Ref="R?"  Part="1" 
AR Path="/572880E3/57270EA2" Ref="R?"  Part="1" 
AR Path="/57276127/57270EA2" Ref="R?"  Part="1" 
AR Path="/57275FE1/57270EA2" Ref="R?"  Part="1" 
AR Path="/57276E10/57270EA2" Ref="R?"  Part="1" 
AR Path="/57276A8A/57270EA2" Ref="R?"  Part="1" 
AR Path="/5727C617/57270EA2" Ref="R?"  Part="1" 
AR Path="/5727C61F/57270EA2" Ref="R?"  Part="1" 
F 0 "R?" V 2630 1900 50  0000 C CNN
F 1 "5k4" V 2550 1900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2480 1900 50  0001 C CNN
F 3 "" H 2550 1900 50  0000 C CNN
	1    2550 1900
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 572710CE
P 3900 2200
AR Path="/572753D2/572710CE" Ref="#PWR?"  Part="1" 
AR Path="/572880E3/572710CE" Ref="#PWR?"  Part="1" 
AR Path="/57276127/572710CE" Ref="#PWR?"  Part="1" 
AR Path="/57275FE1/572710CE" Ref="#PWR?"  Part="1" 
AR Path="/57276E10/572710CE" Ref="#PWR?"  Part="1" 
AR Path="/57276A8A/572710CE" Ref="#PWR?"  Part="1" 
AR Path="/5727C617/572710CE" Ref="#PWR?"  Part="1" 
AR Path="/5727C61F/572710CE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3900 1950 50  0001 C CNN
F 1 "GND" H 3900 2050 50  0000 C CNN
F 2 "" H 3900 2200 50  0000 C CNN
F 3 "" H 3900 2200 50  0000 C CNN
	1    3900 2200
	1    0    0    -1  
$EndComp
Text GLabel 2350 1250 0    60   Input ~ 0
+12.0V
Text HLabel 2400 1900 0    60   Input ~ 0
S_IN
Text Label 2350 2200 0    60   ~ 0
GND
Wire Wire Line
	3900 1250 2350 1250
Wire Wire Line
	2350 2200 3900 2200
Connection ~ 2750 2200
Wire Wire Line
	2700 1900 2900 1900
Connection ~ 2750 1900
Wire Wire Line
	3200 2100 3200 2200
Connection ~ 3200 2200
Connection ~ 3600 2200
Wire Wire Line
	3300 1550 3200 1550
Wire Wire Line
	3200 1550 3200 1700
Wire Wire Line
	3600 1350 3600 1250
Connection ~ 3600 1250
Wire Wire Line
	3600 1750 3900 1750
Text HLabel 3900 1750 2    60   Input ~ 0
S_OUT
Text Notes 2100 1750 0    39   ~ 0
Series R to \n+adjust base-current. (first)\n+limit I_max of uC (second)\n--> I<0.5mA
Text Notes 3150 1200 0    39   ~ 0
Pullup: \n+ I_max=0.5mA\n+ small enough to prevent a PMOS-state between ON and OFF (getting hot)
$EndSCHEMATC