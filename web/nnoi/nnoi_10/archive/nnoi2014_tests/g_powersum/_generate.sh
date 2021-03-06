#!/bin/bash
# This file was automatically generated by daysper
# Please consider editing the original daysper script file(s) instead of this script
rm -f _daysper.log 

echo '===================================' 
echo 'Building ./g_powersum (id powersum)' 
echo '===================================' 
rm -rf ./work 
rm -rf ./tests-ready 
mkdir work 
cp tests/* work/ 
cd work 

echo 'Running test generation script(s)...' 
# Next text has been translated from file(s) do_st.d, do_all.d


cp st01.hand 01 


cp st02.hand 02 



cp 01.hand 03 


cp 02.hand 04 


cp 03.hand 05 


cp 04.hand 06 


cp 05.hand 07 


cp 06.hand 08 


cp 07.hand 09 


cp 08.hand 10 


cp 09.hand 11 


cp 10.hand 12 


cp 11.hand 13 


cp 12.hand 14 


cp 13.hand 15 


cp 14.hand 16 


cp 15.hand 17 


cp 16.hand 18 


cp 17.hand 19 


cp 18.hand 20 


cp 19.hand 21 


cp 20.hand 22 


# (End of translated text)

echo 'Compiling solution, validator and checker...' 
fpc -Mdelphi -FE. -Fu../../../res/testlib -Fu../../../res ../powersum_pk.pas  || { echo "'fpc -Mdelphi -FE. -Fu../../../res/testlib -Fu../../../res ../powersum_pk.pas' returned non-zero exit code!" ; exit 1; }
fpc -Mdelphi -FE. -Fu../../../res/testlib -Fu../../../res ../validate.dpr  || { echo "'fpc -Mdelphi -FE. -Fu../../../res/testlib -Fu../../../res ../validate.dpr' returned non-zero exit code!" ; exit 1; }
fpc -Mdelphi -FE. -Fu../../../res/testlib -Fu../../../res ../check.dpr  || { echo "'fpc -Mdelphi -FE. -Fu../../../res/testlib -Fu../../../res ../check.dpr' returned non-zero exit code!" ; exit 1; }

echo 'Building answer files, validating and checking them...' 

echo 'Test 1' 
rm -f powersum.out 
rm -f powersum.in 
cp 01 powersum.in 
./powersum_pk   || { echo "Test 1: './powersum_pk ' returned non-zero exit code!" ; exit 1; }
cp powersum.out 01.a 
./validate 01 01.a  || { echo "Test 1: './validate 01 01.a' returned non-zero exit code!" ; exit 1; }
./check 01 powersum.out 01.a  || { echo "Test 1: './check 01 powersum.out 01.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 2' 
rm -f powersum.out 
rm -f powersum.in 
cp 02 powersum.in 
./powersum_pk   || { echo "Test 2: './powersum_pk ' returned non-zero exit code!" ; exit 1; }
cp powersum.out 02.a 
./validate 02 02.a  || { echo "Test 2: './validate 02 02.a' returned non-zero exit code!" ; exit 1; }
./check 02 powersum.out 02.a  || { echo "Test 2: './check 02 powersum.out 02.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 3' 
rm -f powersum.out 
rm -f powersum.in 
cp 03 powersum.in 
./powersum_pk   || { echo "Test 3: './powersum_pk ' returned non-zero exit code!" ; exit 1; }
cp powersum.out 03.a 
./validate 03 03.a  || { echo "Test 3: './validate 03 03.a' returned non-zero exit code!" ; exit 1; }
./check 03 powersum.out 03.a  || { echo "Test 3: './check 03 powersum.out 03.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 4' 
rm -f powersum.out 
rm -f powersum.in 
cp 04 powersum.in 
./powersum_pk   || { echo "Test 4: './powersum_pk ' returned non-zero exit code!" ; exit 1; }
cp powersum.out 04.a 
./validate 04 04.a  || { echo "Test 4: './validate 04 04.a' returned non-zero exit code!" ; exit 1; }
./check 04 powersum.out 04.a  || { echo "Test 4: './check 04 powersum.out 04.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 5' 
rm -f powersum.out 
rm -f powersum.in 
cp 05 powersum.in 
./powersum_pk   || { echo "Test 5: './powersum_pk ' returned non-zero exit code!" ; exit 1; }
cp powersum.out 05.a 
./validate 05 05.a  || { echo "Test 5: './validate 05 05.a' returned non-zero exit code!" ; exit 1; }
./check 05 powersum.out 05.a  || { echo "Test 5: './check 05 powersum.out 05.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 6' 
rm -f powersum.out 
rm -f powersum.in 
cp 06 powersum.in 
./powersum_pk   || { echo "Test 6: './powersum_pk ' returned non-zero exit code!" ; exit 1; }
cp powersum.out 06.a 
./validate 06 06.a  || { echo "Test 6: './validate 06 06.a' returned non-zero exit code!" ; exit 1; }
./check 06 powersum.out 06.a  || { echo "Test 6: './check 06 powersum.out 06.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 7' 
rm -f powersum.out 
rm -f powersum.in 
cp 07 powersum.in 
./powersum_pk   || { echo "Test 7: './powersum_pk ' returned non-zero exit code!" ; exit 1; }
cp powersum.out 07.a 
./validate 07 07.a  || { echo "Test 7: './validate 07 07.a' returned non-zero exit code!" ; exit 1; }
./check 07 powersum.out 07.a  || { echo "Test 7: './check 07 powersum.out 07.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 8' 
rm -f powersum.out 
rm -f powersum.in 
cp 08 powersum.in 
./powersum_pk   || { echo "Test 8: './powersum_pk ' returned non-zero exit code!" ; exit 1; }
cp powersum.out 08.a 
./validate 08 08.a  || { echo "Test 8: './validate 08 08.a' returned non-zero exit code!" ; exit 1; }
./check 08 powersum.out 08.a  || { echo "Test 8: './check 08 powersum.out 08.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 9' 
rm -f powersum.out 
rm -f powersum.in 
cp 09 powersum.in 
./powersum_pk   || { echo "Test 9: './powersum_pk ' returned non-zero exit code!" ; exit 1; }
cp powersum.out 09.a 
./validate 09 09.a  || { echo "Test 9: './validate 09 09.a' returned non-zero exit code!" ; exit 1; }
./check 09 powersum.out 09.a  || { echo "Test 9: './check 09 powersum.out 09.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 10' 
rm -f powersum.out 
rm -f powersum.in 
cp 10 powersum.in 
./powersum_pk   || { echo "Test 10: './powersum_pk ' returned non-zero exit code!" ; exit 1; }
cp powersum.out 10.a 
./validate 10 10.a  || { echo "Test 10: './validate 10 10.a' returned non-zero exit code!" ; exit 1; }
./check 10 powersum.out 10.a  || { echo "Test 10: './check 10 powersum.out 10.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 11' 
rm -f powersum.out 
rm -f powersum.in 
cp 11 powersum.in 
./powersum_pk   || { echo "Test 11: './powersum_pk ' returned non-zero exit code!" ; exit 1; }
cp powersum.out 11.a 
./validate 11 11.a  || { echo "Test 11: './validate 11 11.a' returned non-zero exit code!" ; exit 1; }
./check 11 powersum.out 11.a  || { echo "Test 11: './check 11 powersum.out 11.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 12' 
rm -f powersum.out 
rm -f powersum.in 
cp 12 powersum.in 
./powersum_pk   || { echo "Test 12: './powersum_pk ' returned non-zero exit code!" ; exit 1; }
cp powersum.out 12.a 
./validate 12 12.a  || { echo "Test 12: './validate 12 12.a' returned non-zero exit code!" ; exit 1; }
./check 12 powersum.out 12.a  || { echo "Test 12: './check 12 powersum.out 12.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 13' 
rm -f powersum.out 
rm -f powersum.in 
cp 13 powersum.in 
./powersum_pk   || { echo "Test 13: './powersum_pk ' returned non-zero exit code!" ; exit 1; }
cp powersum.out 13.a 
./validate 13 13.a  || { echo "Test 13: './validate 13 13.a' returned non-zero exit code!" ; exit 1; }
./check 13 powersum.out 13.a  || { echo "Test 13: './check 13 powersum.out 13.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 14' 
rm -f powersum.out 
rm -f powersum.in 
cp 14 powersum.in 
./powersum_pk   || { echo "Test 14: './powersum_pk ' returned non-zero exit code!" ; exit 1; }
cp powersum.out 14.a 
./validate 14 14.a  || { echo "Test 14: './validate 14 14.a' returned non-zero exit code!" ; exit 1; }
./check 14 powersum.out 14.a  || { echo "Test 14: './check 14 powersum.out 14.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 15' 
rm -f powersum.out 
rm -f powersum.in 
cp 15 powersum.in 
./powersum_pk   || { echo "Test 15: './powersum_pk ' returned non-zero exit code!" ; exit 1; }
cp powersum.out 15.a 
./validate 15 15.a  || { echo "Test 15: './validate 15 15.a' returned non-zero exit code!" ; exit 1; }
./check 15 powersum.out 15.a  || { echo "Test 15: './check 15 powersum.out 15.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 16' 
rm -f powersum.out 
rm -f powersum.in 
cp 16 powersum.in 
./powersum_pk   || { echo "Test 16: './powersum_pk ' returned non-zero exit code!" ; exit 1; }
cp powersum.out 16.a 
./validate 16 16.a  || { echo "Test 16: './validate 16 16.a' returned non-zero exit code!" ; exit 1; }
./check 16 powersum.out 16.a  || { echo "Test 16: './check 16 powersum.out 16.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 17' 
rm -f powersum.out 
rm -f powersum.in 
cp 17 powersum.in 
./powersum_pk   || { echo "Test 17: './powersum_pk ' returned non-zero exit code!" ; exit 1; }
cp powersum.out 17.a 
./validate 17 17.a  || { echo "Test 17: './validate 17 17.a' returned non-zero exit code!" ; exit 1; }
./check 17 powersum.out 17.a  || { echo "Test 17: './check 17 powersum.out 17.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 18' 
rm -f powersum.out 
rm -f powersum.in 
cp 18 powersum.in 
./powersum_pk   || { echo "Test 18: './powersum_pk ' returned non-zero exit code!" ; exit 1; }
cp powersum.out 18.a 
./validate 18 18.a  || { echo "Test 18: './validate 18 18.a' returned non-zero exit code!" ; exit 1; }
./check 18 powersum.out 18.a  || { echo "Test 18: './check 18 powersum.out 18.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 19' 
rm -f powersum.out 
rm -f powersum.in 
cp 19 powersum.in 
./powersum_pk   || { echo "Test 19: './powersum_pk ' returned non-zero exit code!" ; exit 1; }
cp powersum.out 19.a 
./validate 19 19.a  || { echo "Test 19: './validate 19 19.a' returned non-zero exit code!" ; exit 1; }
./check 19 powersum.out 19.a  || { echo "Test 19: './check 19 powersum.out 19.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 20' 
rm -f powersum.out 
rm -f powersum.in 
cp 20 powersum.in 
./powersum_pk   || { echo "Test 20: './powersum_pk ' returned non-zero exit code!" ; exit 1; }
cp powersum.out 20.a 
./validate 20 20.a  || { echo "Test 20: './validate 20 20.a' returned non-zero exit code!" ; exit 1; }
./check 20 powersum.out 20.a  || { echo "Test 20: './check 20 powersum.out 20.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 21' 
rm -f powersum.out 
rm -f powersum.in 
cp 21 powersum.in 
./powersum_pk   || { echo "Test 21: './powersum_pk ' returned non-zero exit code!" ; exit 1; }
cp powersum.out 21.a 
./validate 21 21.a  || { echo "Test 21: './validate 21 21.a' returned non-zero exit code!" ; exit 1; }
./check 21 powersum.out 21.a  || { echo "Test 21: './check 21 powersum.out 21.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 22' 
rm -f powersum.out 
rm -f powersum.in 
cp 22 powersum.in 
./powersum_pk   || { echo "Test 22: './powersum_pk ' returned non-zero exit code!" ; exit 1; }
cp powersum.out 22.a 
./validate 22 22.a  || { echo "Test 22: './validate 22 22.a' returned non-zero exit code!" ; exit 1; }
./check 22 powersum.out 22.a  || { echo "Test 22: './check 22 powersum.out 22.a' returned non-zero exit code!" ; exit 1; }

echo 'Copying tests to tests-ready' 
mkdir ../tests-ready 
echo 'Test 1' 
cp 01 ../tests-ready/01 
cp 01.a ../tests-ready/01.a 
echo 'Test 2' 
cp 02 ../tests-ready/02 
cp 02.a ../tests-ready/02.a 
echo 'Test 3' 
cp 03 ../tests-ready/03 
cp 03.a ../tests-ready/03.a 
echo 'Test 4' 
cp 04 ../tests-ready/04 
cp 04.a ../tests-ready/04.a 
echo 'Test 5' 
cp 05 ../tests-ready/05 
cp 05.a ../tests-ready/05.a 
echo 'Test 6' 
cp 06 ../tests-ready/06 
cp 06.a ../tests-ready/06.a 
echo 'Test 7' 
cp 07 ../tests-ready/07 
cp 07.a ../tests-ready/07.a 
echo 'Test 8' 
cp 08 ../tests-ready/08 
cp 08.a ../tests-ready/08.a 
echo 'Test 9' 
cp 09 ../tests-ready/09 
cp 09.a ../tests-ready/09.a 
echo 'Test 10' 
cp 10 ../tests-ready/10 
cp 10.a ../tests-ready/10.a 
echo 'Test 11' 
cp 11 ../tests-ready/11 
cp 11.a ../tests-ready/11.a 
echo 'Test 12' 
cp 12 ../tests-ready/12 
cp 12.a ../tests-ready/12.a 
echo 'Test 13' 
cp 13 ../tests-ready/13 
cp 13.a ../tests-ready/13.a 
echo 'Test 14' 
cp 14 ../tests-ready/14 
cp 14.a ../tests-ready/14.a 
echo 'Test 15' 
cp 15 ../tests-ready/15 
cp 15.a ../tests-ready/15.a 
echo 'Test 16' 
cp 16 ../tests-ready/16 
cp 16.a ../tests-ready/16.a 
echo 'Test 17' 
cp 17 ../tests-ready/17 
cp 17.a ../tests-ready/17.a 
echo 'Test 18' 
cp 18 ../tests-ready/18 
cp 18.a ../tests-ready/18.a 
echo 'Test 19' 
cp 19 ../tests-ready/19 
cp 19.a ../tests-ready/19.a 
echo 'Test 20' 
cp 20 ../tests-ready/20 
cp 20.a ../tests-ready/20.a 
echo 'Test 21' 
cp 21 ../tests-ready/21 
cp 21.a ../tests-ready/21.a 
echo 'Test 22' 
cp 22 ../tests-ready/22 
cp 22.a ../tests-ready/22.a 
echo 'Problem built.' 
cd .. 
