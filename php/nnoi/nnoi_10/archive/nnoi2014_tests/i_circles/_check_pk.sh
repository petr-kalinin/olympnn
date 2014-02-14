#!/bin/bash
# This file was automatically generated by daysper
# Please consider editing the original daysper script file(s) instead of this script
rm -f _daysper.log 

rm -rf ./work 
mkdir work 
cd work 
echo 'Compiling solution and checker' 
fpc -Mdelphi -FE. -Fu../../../res/testlib -Fu../../../res ../circles_pk.dpr  || { echo "'fpc -Mdelphi -FE. -Fu../../../res/testlib -Fu../../../res ../circles_pk.dpr' returned non-zero exit code!" ; exit 1; }
fpc -Mdelphi -FE. -Fu../../../res/testlib -Fu../../../res ../check.dpr  || { echo "'fpc -Mdelphi -FE. -Fu../../../res/testlib -Fu../../../res ../check.dpr' returned non-zero exit code!" ; exit 1; }

echo '' 
echo 'Checking solution' 

echo 'Test 1' 
rm -f circles.out 
rm -f circles.in 
cp ../tests-ready/01 circles.in 
./circles_pk   || { echo "Test 1: './circles_pk ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/01 circles.out ../tests-ready/01.a  || { echo "Test 1: './check ../tests-ready/01 circles.out ../tests-ready/01.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 2' 
rm -f circles.out 
rm -f circles.in 
cp ../tests-ready/02 circles.in 
./circles_pk   || { echo "Test 2: './circles_pk ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/02 circles.out ../tests-ready/02.a  || { echo "Test 2: './check ../tests-ready/02 circles.out ../tests-ready/02.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 3' 
rm -f circles.out 
rm -f circles.in 
cp ../tests-ready/03 circles.in 
./circles_pk   || { echo "Test 3: './circles_pk ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/03 circles.out ../tests-ready/03.a  || { echo "Test 3: './check ../tests-ready/03 circles.out ../tests-ready/03.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 4' 
rm -f circles.out 
rm -f circles.in 
cp ../tests-ready/04 circles.in 
./circles_pk   || { echo "Test 4: './circles_pk ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/04 circles.out ../tests-ready/04.a  || { echo "Test 4: './check ../tests-ready/04 circles.out ../tests-ready/04.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 5' 
rm -f circles.out 
rm -f circles.in 
cp ../tests-ready/05 circles.in 
./circles_pk   || { echo "Test 5: './circles_pk ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/05 circles.out ../tests-ready/05.a  || { echo "Test 5: './check ../tests-ready/05 circles.out ../tests-ready/05.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 6' 
rm -f circles.out 
rm -f circles.in 
cp ../tests-ready/06 circles.in 
./circles_pk   || { echo "Test 6: './circles_pk ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/06 circles.out ../tests-ready/06.a  || { echo "Test 6: './check ../tests-ready/06 circles.out ../tests-ready/06.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 7' 
rm -f circles.out 
rm -f circles.in 
cp ../tests-ready/07 circles.in 
./circles_pk   || { echo "Test 7: './circles_pk ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/07 circles.out ../tests-ready/07.a  || { echo "Test 7: './check ../tests-ready/07 circles.out ../tests-ready/07.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 8' 
rm -f circles.out 
rm -f circles.in 
cp ../tests-ready/08 circles.in 
./circles_pk   || { echo "Test 8: './circles_pk ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/08 circles.out ../tests-ready/08.a  || { echo "Test 8: './check ../tests-ready/08 circles.out ../tests-ready/08.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 9' 
rm -f circles.out 
rm -f circles.in 
cp ../tests-ready/09 circles.in 
./circles_pk   || { echo "Test 9: './circles_pk ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/09 circles.out ../tests-ready/09.a  || { echo "Test 9: './check ../tests-ready/09 circles.out ../tests-ready/09.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 10' 
rm -f circles.out 
rm -f circles.in 
cp ../tests-ready/10 circles.in 
./circles_pk   || { echo "Test 10: './circles_pk ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/10 circles.out ../tests-ready/10.a  || { echo "Test 10: './check ../tests-ready/10 circles.out ../tests-ready/10.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 11' 
rm -f circles.out 
rm -f circles.in 
cp ../tests-ready/11 circles.in 
./circles_pk   || { echo "Test 11: './circles_pk ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/11 circles.out ../tests-ready/11.a  || { echo "Test 11: './check ../tests-ready/11 circles.out ../tests-ready/11.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 12' 
rm -f circles.out 
rm -f circles.in 
cp ../tests-ready/12 circles.in 
./circles_pk   || { echo "Test 12: './circles_pk ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/12 circles.out ../tests-ready/12.a  || { echo "Test 12: './check ../tests-ready/12 circles.out ../tests-ready/12.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 13' 
rm -f circles.out 
rm -f circles.in 
cp ../tests-ready/13 circles.in 
./circles_pk   || { echo "Test 13: './circles_pk ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/13 circles.out ../tests-ready/13.a  || { echo "Test 13: './check ../tests-ready/13 circles.out ../tests-ready/13.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 14' 
rm -f circles.out 
rm -f circles.in 
cp ../tests-ready/14 circles.in 
./circles_pk   || { echo "Test 14: './circles_pk ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/14 circles.out ../tests-ready/14.a  || { echo "Test 14: './check ../tests-ready/14 circles.out ../tests-ready/14.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 15' 
rm -f circles.out 
rm -f circles.in 
cp ../tests-ready/15 circles.in 
./circles_pk   || { echo "Test 15: './circles_pk ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/15 circles.out ../tests-ready/15.a  || { echo "Test 15: './check ../tests-ready/15 circles.out ../tests-ready/15.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 16' 
rm -f circles.out 
rm -f circles.in 
cp ../tests-ready/16 circles.in 
./circles_pk   || { echo "Test 16: './circles_pk ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/16 circles.out ../tests-ready/16.a  || { echo "Test 16: './check ../tests-ready/16 circles.out ../tests-ready/16.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 17' 
rm -f circles.out 
rm -f circles.in 
cp ../tests-ready/17 circles.in 
./circles_pk   || { echo "Test 17: './circles_pk ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/17 circles.out ../tests-ready/17.a  || { echo "Test 17: './check ../tests-ready/17 circles.out ../tests-ready/17.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 18' 
rm -f circles.out 
rm -f circles.in 
cp ../tests-ready/18 circles.in 
./circles_pk   || { echo "Test 18: './circles_pk ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/18 circles.out ../tests-ready/18.a  || { echo "Test 18: './check ../tests-ready/18 circles.out ../tests-ready/18.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 19' 
rm -f circles.out 
rm -f circles.in 
cp ../tests-ready/19 circles.in 
./circles_pk   || { echo "Test 19: './circles_pk ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/19 circles.out ../tests-ready/19.a  || { echo "Test 19: './check ../tests-ready/19 circles.out ../tests-ready/19.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 20' 
rm -f circles.out 
rm -f circles.in 
cp ../tests-ready/20 circles.in 
./circles_pk   || { echo "Test 20: './circles_pk ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/20 circles.out ../tests-ready/20.a  || { echo "Test 20: './check ../tests-ready/20 circles.out ../tests-ready/20.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 21' 
rm -f circles.out 
rm -f circles.in 
cp ../tests-ready/21 circles.in 
./circles_pk   || { echo "Test 21: './circles_pk ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/21 circles.out ../tests-ready/21.a  || { echo "Test 21: './check ../tests-ready/21 circles.out ../tests-ready/21.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 22' 
rm -f circles.out 
rm -f circles.in 
cp ../tests-ready/22 circles.in 
./circles_pk   || { echo "Test 22: './circles_pk ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/22 circles.out ../tests-ready/22.a  || { echo "Test 22: './check ../tests-ready/22 circles.out ../tests-ready/22.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 23' 
rm -f circles.out 
rm -f circles.in 
cp ../tests-ready/23 circles.in 
./circles_pk   || { echo "Test 23: './circles_pk ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/23 circles.out ../tests-ready/23.a  || { echo "Test 23: './check ../tests-ready/23 circles.out ../tests-ready/23.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 24' 
rm -f circles.out 
rm -f circles.in 
cp ../tests-ready/24 circles.in 
./circles_pk   || { echo "Test 24: './circles_pk ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/24 circles.out ../tests-ready/24.a  || { echo "Test 24: './check ../tests-ready/24 circles.out ../tests-ready/24.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 25' 
rm -f circles.out 
rm -f circles.in 
cp ../tests-ready/25 circles.in 
./circles_pk   || { echo "Test 25: './circles_pk ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/25 circles.out ../tests-ready/25.a  || { echo "Test 25: './check ../tests-ready/25 circles.out ../tests-ready/25.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 26' 
rm -f circles.out 
rm -f circles.in 
cp ../tests-ready/26 circles.in 
./circles_pk   || { echo "Test 26: './circles_pk ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/26 circles.out ../tests-ready/26.a  || { echo "Test 26: './check ../tests-ready/26 circles.out ../tests-ready/26.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 27' 
rm -f circles.out 
rm -f circles.in 
cp ../tests-ready/27 circles.in 
./circles_pk   || { echo "Test 27: './circles_pk ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/27 circles.out ../tests-ready/27.a  || { echo "Test 27: './check ../tests-ready/27 circles.out ../tests-ready/27.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 28' 
rm -f circles.out 
rm -f circles.in 
cp ../tests-ready/28 circles.in 
./circles_pk   || { echo "Test 28: './circles_pk ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/28 circles.out ../tests-ready/28.a  || { echo "Test 28: './check ../tests-ready/28 circles.out ../tests-ready/28.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 29' 
rm -f circles.out 
rm -f circles.in 
cp ../tests-ready/29 circles.in 
./circles_pk   || { echo "Test 29: './circles_pk ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/29 circles.out ../tests-ready/29.a  || { echo "Test 29: './check ../tests-ready/29 circles.out ../tests-ready/29.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 30' 
rm -f circles.out 
rm -f circles.in 
cp ../tests-ready/30 circles.in 
./circles_pk   || { echo "Test 30: './circles_pk ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/30 circles.out ../tests-ready/30.a  || { echo "Test 30: './check ../tests-ready/30 circles.out ../tests-ready/30.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Problem checked.
' 
cd .. 
