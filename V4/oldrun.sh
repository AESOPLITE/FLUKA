#!/bin/bash

type[0]=3 #electron
type[1]=4 #positron
type[2]=10 #muon +
type[3]=11 #muon -
type[4]=1  #protons
type[5]=6  #alphas

UNIT[0]="10MeV"
UNIT[1]="20MeV"
UNIT[2]="30MeV"
UNIT[3]="40MeV"
UNIT[4]="50MeV"
UNIT[5]="60MeV"
UNIT[6]="70MeV"
UNIT[7]="80MeV"
UNIT[8]="90MeV"
UNIT[9]="100MeV"
UNIT[10]="200MeV"
UNIT[11]="300MeV"
UNIT[12]="600MeV"
UNIT[13]="1GeV"
UNIT[14]="2GeV"
UNIT[15]="3GeV"
UNIT[16]="15GeV"
UNIT[17]="20GeV"
UNIT[18]="60GeV"
#First parameter is type of particle
t=$1
#Second parameter is energy index
e=$2 
#Third parameter is last previous ran cycle: fluka option  -N
n=$3 
#Fourth parameter is  last cycle to be run: fluka option  -M
m=$4  
#Go to the directory for the chosen type of particle
cd $t

#Execute the simulation
#$FLUPRO/flutil/rfluka -e $PWD/../ALNonUniBV4Mag5mm -N$3 -M$4 aesopliteNonUniB_V4_$1_${UNIT[$2]}.inp
$FLUPRO/flutil/rfluka -e $PWD/../ALYesBV430cmSource28Deg -N$3 -M$4 aesopliteNonUniB_V4_$1_${UNIT[$2]}.inp 
