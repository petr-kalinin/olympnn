#!/bin/bash
# This file was automatically generated by daysper
# Please consider editing the original daysper script file(s) instead of this script
rm -f _daysper.log 

cd a_classics 
./_generate.sh   || { echo "Problem a_classics: '_generate.sh' returned non-zero exit code!" ; exit 1; }
if [ -e "_daysper.log" ]; then echo Dir ./a_classics >> ../_daysper.log; cat _daysper.log >> ../_daysper.log; fi
cd .. 

cd b_happy 
./_generate.sh   || { echo "Problem b_happy: '_generate.sh' returned non-zero exit code!" ; exit 1; }
if [ -e "_daysper.log" ]; then echo Dir ./b_happy >> ../_daysper.log; cat _daysper.log >> ../_daysper.log; fi
cd .. 

cd c_pots 
./_generate.sh   || { echo "Problem c_pots: '_generate.sh' returned non-zero exit code!" ; exit 1; }
if [ -e "_daysper.log" ]; then echo Dir ./c_pots >> ../_daysper.log; cat _daysper.log >> ../_daysper.log; fi
cd .. 

cd d_lottery 
./_generate.sh   || { echo "Problem d_lottery: '_generate.sh' returned non-zero exit code!" ; exit 1; }
if [ -e "_daysper.log" ]; then echo Dir ./d_lottery >> ../_daysper.log; cat _daysper.log >> ../_daysper.log; fi
cd .. 

cd e_trains 
./_generate.sh   || { echo "Problem e_trains: '_generate.sh' returned non-zero exit code!" ; exit 1; }
if [ -e "_daysper.log" ]; then echo Dir ./e_trains >> ../_daysper.log; cat _daysper.log >> ../_daysper.log; fi
cd .. 

cd g_powersum 
./_generate.sh   || { echo "Problem g_powersum: '_generate.sh' returned non-zero exit code!" ; exit 1; }
if [ -e "_daysper.log" ]; then echo Dir ./g_powersum >> ../_daysper.log; cat _daysper.log >> ../_daysper.log; fi
cd .. 

cd i_circles 
./_generate.sh   || { echo "Problem i_circles: '_generate.sh' returned non-zero exit code!" ; exit 1; }
if [ -e "_daysper.log" ]; then echo Dir ./i_circles >> ../_daysper.log; cat _daysper.log >> ../_daysper.log; fi
cd .. 

