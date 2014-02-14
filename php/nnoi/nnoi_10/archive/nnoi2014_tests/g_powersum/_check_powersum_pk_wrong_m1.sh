#!/bin/bash
# This file was automatically generated by daysper
# Please consider editing the original daysper script file(s) instead of this script
rm -f _daysper.log 

rm -rf ./work 
mkdir work 
cd work 
echo 'Compiling solution and checker' 
fpc -Mdelphi -FE. -Fu../../../res/testlib -Fu../../../res ../powersum_pk_wrong_m1.pas  || { echo "'fpc -Mdelphi -FE. -Fu../../../res/testlib -Fu../../../res ../powersum_pk_wrong_m1.pas' returned non-zero exit code!" ; exit 1; }
fpc -Mdelphi -FE. -Fu../../../res/testlib -Fu../../../res ../check.dpr  || { echo "'fpc -Mdelphi -FE. -Fu../../../res/testlib -Fu../../../res ../check.dpr' returned non-zero exit code!" ; exit 1; }

echo '' 
echo 'Checking solution' 

echo 'Test 1' 
rm -f powersum.out 
rm -f powersum.in 
cp ../tests-ready/01 powersum.in 
./powersum_pk_wrong_m1   || { echo "Test 1: './powersum_pk_wrong_m1 ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/01 powersum.out ../tests-ready/01.a  || { echo "Test 1: './check ../tests-ready/01 powersum.out ../tests-ready/01.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 2' 
rm -f powersum.out 
rm -f powersum.in 
cp ../tests-ready/02 powersum.in 
./powersum_pk_wrong_m1   || { echo "Test 2: './powersum_pk_wrong_m1 ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/02 powersum.out ../tests-ready/02.a  || { echo "Test 2: './check ../tests-ready/02 powersum.out ../tests-ready/02.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 3' 
rm -f powersum.out 
rm -f powersum.in 
cp ../tests-ready/03 powersum.in 
./powersum_pk_wrong_m1   || { echo "Test 3: './powersum_pk_wrong_m1 ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/03 powersum.out ../tests-ready/03.a  || { echo "Test 3: './check ../tests-ready/03 powersum.out ../tests-ready/03.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 4' 
rm -f powersum.out 
rm -f powersum.in 
cp ../tests-ready/04 powersum.in 
./powersum_pk_wrong_m1   || { echo "Test 4: './powersum_pk_wrong_m1 ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/04 powersum.out ../tests-ready/04.a  || { echo "Test 4: './check ../tests-ready/04 powersum.out ../tests-ready/04.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 5' 
rm -f powersum.out 
rm -f powersum.in 
cp ../tests-ready/05 powersum.in 
./powersum_pk_wrong_m1   || { echo "Test 5: './powersum_pk_wrong_m1 ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/05 powersum.out ../tests-ready/05.a  || { echo "Test 5: './check ../tests-ready/05 powersum.out ../tests-ready/05.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 6' 
rm -f powersum.out 
rm -f powersum.in 
cp ../tests-ready/06 powersum.in 
./powersum_pk_wrong_m1   || { echo "Test 6: './powersum_pk_wrong_m1 ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/06 powersum.out ../tests-ready/06.a  || { echo "Test 6: './check ../tests-ready/06 powersum.out ../tests-ready/06.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 7' 
rm -f powersum.out 
rm -f powersum.in 
cp ../tests-ready/07 powersum.in 
./powersum_pk_wrong_m1   || { echo "Test 7: './powersum_pk_wrong_m1 ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/07 powersum.out ../tests-ready/07.a  || { echo "Test 7: './check ../tests-ready/07 powersum.out ../tests-ready/07.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 8' 
rm -f powersum.out 
rm -f powersum.in 
cp ../tests-ready/08 powersum.in 
./powersum_pk_wrong_m1   || { echo "Test 8: './powersum_pk_wrong_m1 ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/08 powersum.out ../tests-ready/08.a  || { echo "Test 8: './check ../tests-ready/08 powersum.out ../tests-ready/08.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 9' 
rm -f powersum.out 
rm -f powersum.in 
cp ../tests-ready/09 powersum.in 
./powersum_pk_wrong_m1   || { echo "Test 9: './powersum_pk_wrong_m1 ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/09 powersum.out ../tests-ready/09.a  || { echo "Test 9: './check ../tests-ready/09 powersum.out ../tests-ready/09.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 10' 
rm -f powersum.out 
rm -f powersum.in 
cp ../tests-ready/10 powersum.in 
./powersum_pk_wrong_m1   || { echo "Test 10: './powersum_pk_wrong_m1 ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/10 powersum.out ../tests-ready/10.a  || { echo "Test 10: './check ../tests-ready/10 powersum.out ../tests-ready/10.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 11' 
rm -f powersum.out 
rm -f powersum.in 
cp ../tests-ready/11 powersum.in 
./powersum_pk_wrong_m1   || { echo "Test 11: './powersum_pk_wrong_m1 ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/11 powersum.out ../tests-ready/11.a  || { echo "Test 11: './check ../tests-ready/11 powersum.out ../tests-ready/11.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 12' 
rm -f powersum.out 
rm -f powersum.in 
cp ../tests-ready/12 powersum.in 
./powersum_pk_wrong_m1   || { echo "Test 12: './powersum_pk_wrong_m1 ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/12 powersum.out ../tests-ready/12.a  || { echo "Test 12: './check ../tests-ready/12 powersum.out ../tests-ready/12.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 13' 
rm -f powersum.out 
rm -f powersum.in 
cp ../tests-ready/13 powersum.in 
./powersum_pk_wrong_m1   || { echo "Test 13: './powersum_pk_wrong_m1 ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/13 powersum.out ../tests-ready/13.a  || { echo "Test 13: './check ../tests-ready/13 powersum.out ../tests-ready/13.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 14' 
rm -f powersum.out 
rm -f powersum.in 
cp ../tests-ready/14 powersum.in 
./powersum_pk_wrong_m1   || { echo "Test 14: './powersum_pk_wrong_m1 ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/14 powersum.out ../tests-ready/14.a  || { echo "Test 14: './check ../tests-ready/14 powersum.out ../tests-ready/14.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 15' 
rm -f powersum.out 
rm -f powersum.in 
cp ../tests-ready/15 powersum.in 
./powersum_pk_wrong_m1   || { echo "Test 15: './powersum_pk_wrong_m1 ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/15 powersum.out ../tests-ready/15.a  || { echo "Test 15: './check ../tests-ready/15 powersum.out ../tests-ready/15.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 16' 
rm -f powersum.out 
rm -f powersum.in 
cp ../tests-ready/16 powersum.in 
./powersum_pk_wrong_m1   || { echo "Test 16: './powersum_pk_wrong_m1 ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/16 powersum.out ../tests-ready/16.a  || { echo "Test 16: './check ../tests-ready/16 powersum.out ../tests-ready/16.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 17' 
rm -f powersum.out 
rm -f powersum.in 
cp ../tests-ready/17 powersum.in 
./powersum_pk_wrong_m1   || { echo "Test 17: './powersum_pk_wrong_m1 ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/17 powersum.out ../tests-ready/17.a  || { echo "Test 17: './check ../tests-ready/17 powersum.out ../tests-ready/17.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 18' 
rm -f powersum.out 
rm -f powersum.in 
cp ../tests-ready/18 powersum.in 
./powersum_pk_wrong_m1   || { echo "Test 18: './powersum_pk_wrong_m1 ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/18 powersum.out ../tests-ready/18.a  || { echo "Test 18: './check ../tests-ready/18 powersum.out ../tests-ready/18.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 19' 
rm -f powersum.out 
rm -f powersum.in 
cp ../tests-ready/19 powersum.in 
./powersum_pk_wrong_m1   || { echo "Test 19: './powersum_pk_wrong_m1 ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/19 powersum.out ../tests-ready/19.a  || { echo "Test 19: './check ../tests-ready/19 powersum.out ../tests-ready/19.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Test 20' 
rm -f powersum.out 
rm -f powersum.in 
cp ../tests-ready/20 powersum.in 
./powersum_pk_wrong_m1   || { echo "Test 20: './powersum_pk_wrong_m1 ' returned non-zero exit code!" >> ../_daysper.log ; }
./check ../tests-ready/20 powersum.out ../tests-ready/20.a  || { echo "Test 20: './check ../tests-ready/20 powersum.out ../tests-ready/20.a' returned non-zero exit code!" >> ../_daysper.log ; }

echo 'Problem checked.
' 
cd .. 
