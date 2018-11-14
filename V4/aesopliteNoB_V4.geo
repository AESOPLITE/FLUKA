* 345678901234567890123456789012345678901234567890123456789012345678901234567890
GEOBEGIN                   0.1                                        COMBNAME
    0    0               AESOP-lite tracking
* 345678901234567890123456789012345678901234567890123456789012345678901234567890
* Bodies
* Scintillator T1
RCC B1         0.0 0.0 33.49968 0.0 0.0 0.5E0 13.
* Old CK top endcap body: Keep it to keep old body ID numbers
* Material must be air
RCC B2         0.0 0.0 31. 0.0 0.0 1.2E-2 12.
* Outside of CK
TRC B3         0.0 0.0 1.94412 0.0 0.0 28.05176 +7.5 14.
* Thickness of CK endcap measured to be 22/1000 inch the Dec. 08,2016
* Inside of CK
TRC B4         0.0 0.0 2.024 0.0 0.0 27.94 +6.5 13.
* Old CK bottom endcap body: Keep it to keep old body ID numbers
* Material must be air
RCC B5         0.0 0.0 1.94412 0.0 0.0 -1.2E-2 +6.5
* Platform of the CK
RCC B6         0.0 0.0 1.94412 0.0 0.0 2. +15.5
* Scintillator T3
RCC B7         0.0 0.0 0.0 0.0 0.0 0.5E0 3.5
* Scintillator outer radius guard
RCC B8         0.0 0.0 -0.5588 0.0 0.0 0.5E0 13.5
* Magnets
RCC B9         0.0 0.0 -9.61682 0.0 0.0 4.59994 15.
RCC B10        0.0 0.0 -16.2513 0.0 0.0 4.59994 15.
RCC B11        0.0 0.0 -16.2513 0.0 0.0 11.23442 6.703
* 7 Trackers
* ..+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
RPP B12        -9. 9. -9. 9. -1.90665  -1.86665
RPP B13        -9. 9. -9. 9. -3.90563  -3.86563
RPP B14        -9. 9. -9. 9. -10.54011 -10.50011
RPP B15        -9. 9. -9. 9. -17.13903 -17.09903
RPP B16        -9. 9. -9. 9. -19.13801 -19.09801
RPP B17        -9. 9. -9. 9. -21.13699 -21.09699
RPP B18        -9. 9. -9. 9. -23.13597 -23.09597
* Scintillator T4
RCC B19        0.0 0.0 -25.59012 0.0 0.0 1. 18.
* Air cylinder
RCC B20        0.0 0.0 -200. 0.0 0.0 400. 100.
* Vacuum cylinder
RCC B21        0.0 0.0 -300. 0.0 0.0 600. 200.
* Blackhole cylinder
RCC B22        0.0 0.0 -301. 0.0 0.0 602. 2101.
* Scintillator inner radius guard
RCC B23        0.0 0.0 -0.5588 0.0 0.0 0.5E0 3.5
* Inner cylinder of shell
RCC B24        0.0 0.0 -45. 0.0 0.0 106. 46.355
* Outer cylinder of shell
RCC B25        0.0 0.0 -45. 0.0 0.0 106. 46.5582
* Insulation 1inch cylinder
RCC B26        0.0 0.0 -45. 0.0 0.0 106. 49.0982
* Inner top shell sphere
SPH B27        0.0 0.0 -21.1916 76.2
* Outer top shell shpere
SPH B28        0.0 0.0 -21.1916 76.4032
* Insulation top shell sphere
SPH B29        0.0 0.0 -21.1916 78.9432
* Inner bottom shell sphere
SPH B30        0.0 0.0 44.9326 85.3186
* Outer bottom shell shpere
SPH B31        0.0 0.0 44.9326 85.6234
* Insulation bottom shell sphere
SPH B32        0.0 0.0 44.9326 88.1634
END
* Regions
* T1
R1           5 +B1
* Old CK top endcap: must be Air
R2           5 +B2
* CK
R3           5 +B3 -B4
* Old CK bottom endcap: must be Air
R4           5 +B5
* Platform of the CK
R5           5 +B6 -B3
* T3
R6           5 +B7
* Guard
R7           5 +B8 -B23
* Top Magnet
R8           5 +B9 -B11
* Bottom Magnet
R9           5 +B10 -B11
* Inner cylinder of magnets: Air
R10          5 +B11 -B14
* Tracker 7 Layers
R11          5 +B12
R12          5 +B13
R13          5 +B14
R14          5 +B15
R15          5 +B16
R16          5 +B17
R17          5 +B18
* T4
R18          5 +B19
* Air in shell
* ..+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
* Air in shell
R19          5 +B24 +B30 +B27  -B1 -B2 -B3 -B5 -B6 -B7 -B9 -B10
               -B11 -B12 -B13 -B14 -B15 -B16 -B17 -B18 -B19
               -B8
* Vacuum
R20          5 +B21 -B20
* Blackhole
R21          5 +B22 -B21
* CK gas region
R22          5 +B4
* inner disk of guard must be air
R23          5 +B23
* Shell
R24          5 (+B28 -B27 +B25 +B31) | (+B25 -B24 +B27 +B31) | (+B31 -B30 +B25)
* Top Shell insulation sphere
R25          5 (+B29 -B28 +B26 +B32) | (+B26 -B25 +B28 +B32) | (+B32 -B31 +B26)
* Air outside cylinder shell
R26          5 (+B20 -B26) | (+B26 -B32) | (+B26 -B29)
END
GEOEND
* 345678901234567890123456789012345678901234567890123456789012345678901234567890
MATERIAL                            1.03       26.                    Polyviny
COMPOUND         10.  HYDROGEN        9.    CARBON                    Polyviny
* define C3F8 gas
* 345678901234567890123456789012345678901234567890123456789012345678901234567890
MATERIAL          9.   18.9984  1.696E-3       27.                    FLUORINE
MATERIAL                        14.48E-3       28.                    C3F8
COMPOUND          3.    CARBON        8.  FLUORINE                    C3F8
* Set C3F8 gas pressure to 11.8 psi = 1.8029424 atm absolute pressure
MAT-PROP   1.8029424                           28.       28.          
* ------------------------------------------------------------------------------
* scale temp by 7%
*MAT-PROP        1.07       72.      293.        3.       47.          LOWNTEMP
* ------------------------------------------------------------------------------
* ----------------------------------------------------------------------------
* 345678901234567890123456789012345678901234567890123456789012345678901234567890
* Define material for Aluminum AL6061 for the Shell
MATERIAL        13.0    26.982      2.70       29.                    ALUMINU1
LOW-MAT     ALUMINU1      13.0      27.0     296.0                    ALUMINUM
MATERIAL        12.0    24.305     1.738       30.                    MAGNESI1
LOW-MAT     MAGNESI1      12.0      -2.0     296.0                    MAGNESIU
MATERIAL        14.0    28.086      2.33       31.                    SILICO1
LOW-MAT      SILICO1      14.0      -2.0     296.0                    SILICON
MATERIAL        29.0    63.546      8.96       32.                    COPPE1
LOW-MAT       COPPE1      29.0      -2.0     296.0                    COPPER
MATERIAL        24.0    51.996      7.18       33.                    CHROMIU1
LOW-MAT     CHROMIU1      24.0      -2.0     296.0                    CHROMIUM
MATERIAL                             2.7       34.                    AL6061
COMPOUND      -0.979  ALUMINU1     -0.01  MAGNESI1    -0.006   SILICO1AL6061
COMPOUND     -0.0025    COPPE1   -0.0025  CHROMIU1      -0.0          AL6061
* Define ISOFOAM material Polyisocyanurate C3N3(OH)3 for the insulation
MATERIAL                         0.03204       35.                    ISOFOAM
COMPOUND         3.0  HYDROGEN       3.0    CARBON       3.0 NITROGEN ISOFOAM
COMPOUND         3.0    OXYGEN                                        ISOFOAM
* 345678901234567890123456789012345678901234567890123456789012345678901234567890
ASSIGNMA    Polyviny        R1                          
ASSIGNMA    NITROGEN        R2                          
ASSIGNMA    ALUMINUM        R3                          
ASSIGNMA    NITROGEN        R4                          
ASSIGNMA    ALUMINUM        R5                          
ASSIGNMA    Polyviny        R6                          
ASSIGNMA    Polyviny        R7                          
ASSIGNMA      VACUUM        R8                          
ASSIGNMA      VACUUM        R9                          
ASSIGNMA    NITROGEN       R10                          
ASSIGNMA     SILICON       R11                          
ASSIGNMA     SILICON       R12                          
ASSIGNMA     SILICON       R13                          
ASSIGNMA     SILICON       R14                          
ASSIGNMA     SILICON       R15                          
ASSIGNMA     SILICON       R16                          
ASSIGNMA     SILICON       R17                          
ASSIGNMA    Polyviny       R18                          
ASSIGNMA    NITROGEN       R19                          
ASSIGNMA      VACUUM       R20                          
ASSIGNMA    BLCKHOLE       R21                          
ASSIGNMA        C3F8       R22                         
ASSIGNMA    NITROGEN       R23                         
ASSIGNMA      AL6061       R24                         
ASSIGNMA     ISOFOAM       R25                          
ASSIGNMA    NITROGEN       R26                          
*MGNFIELD        30.0      0.01    0.01        0.0       0.0        0.0
*-------------------------------------------------------------------------------
*2345678901234567890123456789012345678901234567890123456789012345678901234567890



