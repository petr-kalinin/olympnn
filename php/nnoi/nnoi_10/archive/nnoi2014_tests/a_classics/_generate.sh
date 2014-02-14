#!/bin/bash
# This file was automatically generated by daysper
# Please consider editing the original daysper script file(s) instead of this script
rm -f _daysper.log 

echo '===================================' 
echo 'Building ./a_classics (id classics)' 
echo '===================================' 
rm -rf ./work 
rm -rf ./tests-ready 
mkdir work 
cp tests/* work/ 
cd work 

echo 'Running test generation script(s)...' 
# Next text has been translated from file(s) do_st.d, do_all.d


cp st01.hand 01 

cp st01.hand.a 01.a 


cp st02.hand 02 

cp st02.hand.a 02.a 


cp st03.hand 03 

cp st03.hand.a 03.a 


cp st04.hand 04 

cp st04.hand.a 04.a 



cp 01.hand 05 

cp 01.hand.a 05.a 


cp 02.hand 06 

cp 02.hand.a 06.a 


cp 03.hand 07 

cp 03.hand.a 07.a 


cp 04.hand 08 

cp 04.hand.a 08.a 


cp 05.hand 09 

cp 05.hand.a 09.a 


cp 06.hand 10 

cp 06.hand.a 10.a 


cp 07.hand 11 

cp 07.hand.a 11.a 


cp 08.hand 12 

cp 08.hand.a 12.a 


cp 09.hand 13 

cp 09.hand.a 13.a 


cp 10.hand 14 

cp 10.hand.a 14.a 


cp 11.hand 15 

cp 11.hand.a 15.a 


cp 12.hand 16 

cp 12.hand.a 16.a 


cp 13.hand 17 

cp 13.hand.a 17.a 


cp 14.hand 18 

cp 14.hand.a 18.a 


cp 15.hand 19 

cp 15.hand.a 19.a 


cp 16.hand 20 

cp 16.hand.a 20.a 


cp 17.hand 21 

cp 17.hand.a 21.a 


cp 18.hand 22 

cp 18.hand.a 22.a 


cp 19.hand 23 

cp 19.hand.a 23.a 


cp 20.hand 24 

cp 20.hand.a 24.a 


cp 21.hand 25 

cp 21.hand.a 25.a 


cp 22.hand 26 

cp 22.hand.a 26.a 


cp 23.hand 27 

cp 23.hand.a 27.a 


cp 24.hand 28 

cp 24.hand.a 28.a 


cp 25.hand 29 

cp 25.hand.a 29.a 


cp 26.hand 30 

cp 26.hand.a 30.a 


cp 27.hand 31 

cp 27.hand.a 31.a 


cp 28.hand 32 

cp 28.hand.a 32.a 


cp 29.hand 33 

cp 29.hand.a 33.a 


cp 30.hand 34 

cp 30.hand.a 34.a 


# (End of translated text)

echo 'Compiling solution, validator and checker...' 
fpc -Mdelphi -FE. -Fu../../../res/testlib -Fu../../../res ../classics_pk.dpr  || { echo "'fpc -Mdelphi -FE. -Fu../../../res/testlib -Fu../../../res ../classics_pk.dpr' returned non-zero exit code!" ; exit 1; }
fpc -Mdelphi -FE. -Fu../../../res/testlib -Fu../../../res ../validate.dpr  || { echo "'fpc -Mdelphi -FE. -Fu../../../res/testlib -Fu../../../res ../validate.dpr' returned non-zero exit code!" ; exit 1; }
fpc -Mdelphi -FE. -Fu../../../res/testlib -Fu../../../res ../check.dpr  || { echo "'fpc -Mdelphi -FE. -Fu../../../res/testlib -Fu../../../res ../check.dpr' returned non-zero exit code!" ; exit 1; }

echo 'Building answer files, validating and checking them...' 

echo 'Test 1' 
rm -f classics.out 
rm -f classics.in 
cp 01 classics.in 
./classics_pk   || { echo "Test 1: './classics_pk ' returned non-zero exit code!" ; exit 1; }
./validate 01 01.a  || { echo "Test 1: './validate 01 01.a' returned non-zero exit code!" ; exit 1; }
./check 01 classics.out 01.a  || { echo "Test 1: './check 01 classics.out 01.a' returned non-zero exit code!" ; exit 1; }
cp 01.a _tmp.out 
./check 01 _tmp.out 01.a  || { echo "Test 1: './check 01 _tmp.out 01.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 2' 
rm -f classics.out 
rm -f classics.in 
cp 02 classics.in 
./classics_pk   || { echo "Test 2: './classics_pk ' returned non-zero exit code!" ; exit 1; }
./validate 02 02.a  || { echo "Test 2: './validate 02 02.a' returned non-zero exit code!" ; exit 1; }
./check 02 classics.out 02.a  || { echo "Test 2: './check 02 classics.out 02.a' returned non-zero exit code!" ; exit 1; }
cp 02.a _tmp.out 
./check 02 _tmp.out 02.a  || { echo "Test 2: './check 02 _tmp.out 02.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 3' 
rm -f classics.out 
rm -f classics.in 
cp 03 classics.in 
./classics_pk   || { echo "Test 3: './classics_pk ' returned non-zero exit code!" ; exit 1; }
./validate 03 03.a  || { echo "Test 3: './validate 03 03.a' returned non-zero exit code!" ; exit 1; }
./check 03 classics.out 03.a  || { echo "Test 3: './check 03 classics.out 03.a' returned non-zero exit code!" ; exit 1; }
cp 03.a _tmp.out 
./check 03 _tmp.out 03.a  || { echo "Test 3: './check 03 _tmp.out 03.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 4' 
rm -f classics.out 
rm -f classics.in 
cp 04 classics.in 
./classics_pk   || { echo "Test 4: './classics_pk ' returned non-zero exit code!" ; exit 1; }
./validate 04 04.a  || { echo "Test 4: './validate 04 04.a' returned non-zero exit code!" ; exit 1; }
./check 04 classics.out 04.a  || { echo "Test 4: './check 04 classics.out 04.a' returned non-zero exit code!" ; exit 1; }
cp 04.a _tmp.out 
./check 04 _tmp.out 04.a  || { echo "Test 4: './check 04 _tmp.out 04.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 5' 
rm -f classics.out 
rm -f classics.in 
cp 05 classics.in 
./classics_pk   || { echo "Test 5: './classics_pk ' returned non-zero exit code!" ; exit 1; }
./validate 05 05.a  || { echo "Test 5: './validate 05 05.a' returned non-zero exit code!" ; exit 1; }
./check 05 classics.out 05.a  || { echo "Test 5: './check 05 classics.out 05.a' returned non-zero exit code!" ; exit 1; }
cp 05.a _tmp.out 
./check 05 _tmp.out 05.a  || { echo "Test 5: './check 05 _tmp.out 05.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 6' 
rm -f classics.out 
rm -f classics.in 
cp 06 classics.in 
./classics_pk   || { echo "Test 6: './classics_pk ' returned non-zero exit code!" ; exit 1; }
./validate 06 06.a  || { echo "Test 6: './validate 06 06.a' returned non-zero exit code!" ; exit 1; }
./check 06 classics.out 06.a  || { echo "Test 6: './check 06 classics.out 06.a' returned non-zero exit code!" ; exit 1; }
cp 06.a _tmp.out 
./check 06 _tmp.out 06.a  || { echo "Test 6: './check 06 _tmp.out 06.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 7' 
rm -f classics.out 
rm -f classics.in 
cp 07 classics.in 
./classics_pk   || { echo "Test 7: './classics_pk ' returned non-zero exit code!" ; exit 1; }
./validate 07 07.a  || { echo "Test 7: './validate 07 07.a' returned non-zero exit code!" ; exit 1; }
./check 07 classics.out 07.a  || { echo "Test 7: './check 07 classics.out 07.a' returned non-zero exit code!" ; exit 1; }
cp 07.a _tmp.out 
./check 07 _tmp.out 07.a  || { echo "Test 7: './check 07 _tmp.out 07.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 8' 
rm -f classics.out 
rm -f classics.in 
cp 08 classics.in 
./classics_pk   || { echo "Test 8: './classics_pk ' returned non-zero exit code!" ; exit 1; }
./validate 08 08.a  || { echo "Test 8: './validate 08 08.a' returned non-zero exit code!" ; exit 1; }
./check 08 classics.out 08.a  || { echo "Test 8: './check 08 classics.out 08.a' returned non-zero exit code!" ; exit 1; }
cp 08.a _tmp.out 
./check 08 _tmp.out 08.a  || { echo "Test 8: './check 08 _tmp.out 08.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 9' 
rm -f classics.out 
rm -f classics.in 
cp 09 classics.in 
./classics_pk   || { echo "Test 9: './classics_pk ' returned non-zero exit code!" ; exit 1; }
./validate 09 09.a  || { echo "Test 9: './validate 09 09.a' returned non-zero exit code!" ; exit 1; }
./check 09 classics.out 09.a  || { echo "Test 9: './check 09 classics.out 09.a' returned non-zero exit code!" ; exit 1; }
cp 09.a _tmp.out 
./check 09 _tmp.out 09.a  || { echo "Test 9: './check 09 _tmp.out 09.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 10' 
rm -f classics.out 
rm -f classics.in 
cp 10 classics.in 
./classics_pk   || { echo "Test 10: './classics_pk ' returned non-zero exit code!" ; exit 1; }
./validate 10 10.a  || { echo "Test 10: './validate 10 10.a' returned non-zero exit code!" ; exit 1; }
./check 10 classics.out 10.a  || { echo "Test 10: './check 10 classics.out 10.a' returned non-zero exit code!" ; exit 1; }
cp 10.a _tmp.out 
./check 10 _tmp.out 10.a  || { echo "Test 10: './check 10 _tmp.out 10.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 11' 
rm -f classics.out 
rm -f classics.in 
cp 11 classics.in 
./classics_pk   || { echo "Test 11: './classics_pk ' returned non-zero exit code!" ; exit 1; }
./validate 11 11.a  || { echo "Test 11: './validate 11 11.a' returned non-zero exit code!" ; exit 1; }
./check 11 classics.out 11.a  || { echo "Test 11: './check 11 classics.out 11.a' returned non-zero exit code!" ; exit 1; }
cp 11.a _tmp.out 
./check 11 _tmp.out 11.a  || { echo "Test 11: './check 11 _tmp.out 11.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 12' 
rm -f classics.out 
rm -f classics.in 
cp 12 classics.in 
./classics_pk   || { echo "Test 12: './classics_pk ' returned non-zero exit code!" ; exit 1; }
./validate 12 12.a  || { echo "Test 12: './validate 12 12.a' returned non-zero exit code!" ; exit 1; }
./check 12 classics.out 12.a  || { echo "Test 12: './check 12 classics.out 12.a' returned non-zero exit code!" ; exit 1; }
cp 12.a _tmp.out 
./check 12 _tmp.out 12.a  || { echo "Test 12: './check 12 _tmp.out 12.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 13' 
rm -f classics.out 
rm -f classics.in 
cp 13 classics.in 
./classics_pk   || { echo "Test 13: './classics_pk ' returned non-zero exit code!" ; exit 1; }
./validate 13 13.a  || { echo "Test 13: './validate 13 13.a' returned non-zero exit code!" ; exit 1; }
./check 13 classics.out 13.a  || { echo "Test 13: './check 13 classics.out 13.a' returned non-zero exit code!" ; exit 1; }
cp 13.a _tmp.out 
./check 13 _tmp.out 13.a  || { echo "Test 13: './check 13 _tmp.out 13.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 14' 
rm -f classics.out 
rm -f classics.in 
cp 14 classics.in 
./classics_pk   || { echo "Test 14: './classics_pk ' returned non-zero exit code!" ; exit 1; }
./validate 14 14.a  || { echo "Test 14: './validate 14 14.a' returned non-zero exit code!" ; exit 1; }
./check 14 classics.out 14.a  || { echo "Test 14: './check 14 classics.out 14.a' returned non-zero exit code!" ; exit 1; }
cp 14.a _tmp.out 
./check 14 _tmp.out 14.a  || { echo "Test 14: './check 14 _tmp.out 14.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 15' 
rm -f classics.out 
rm -f classics.in 
cp 15 classics.in 
./classics_pk   || { echo "Test 15: './classics_pk ' returned non-zero exit code!" ; exit 1; }
./validate 15 15.a  || { echo "Test 15: './validate 15 15.a' returned non-zero exit code!" ; exit 1; }
./check 15 classics.out 15.a  || { echo "Test 15: './check 15 classics.out 15.a' returned non-zero exit code!" ; exit 1; }
cp 15.a _tmp.out 
./check 15 _tmp.out 15.a  || { echo "Test 15: './check 15 _tmp.out 15.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 16' 
rm -f classics.out 
rm -f classics.in 
cp 16 classics.in 
./classics_pk   || { echo "Test 16: './classics_pk ' returned non-zero exit code!" ; exit 1; }
./validate 16 16.a  || { echo "Test 16: './validate 16 16.a' returned non-zero exit code!" ; exit 1; }
./check 16 classics.out 16.a  || { echo "Test 16: './check 16 classics.out 16.a' returned non-zero exit code!" ; exit 1; }
cp 16.a _tmp.out 
./check 16 _tmp.out 16.a  || { echo "Test 16: './check 16 _tmp.out 16.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 17' 
rm -f classics.out 
rm -f classics.in 
cp 17 classics.in 
./classics_pk   || { echo "Test 17: './classics_pk ' returned non-zero exit code!" ; exit 1; }
./validate 17 17.a  || { echo "Test 17: './validate 17 17.a' returned non-zero exit code!" ; exit 1; }
./check 17 classics.out 17.a  || { echo "Test 17: './check 17 classics.out 17.a' returned non-zero exit code!" ; exit 1; }
cp 17.a _tmp.out 
./check 17 _tmp.out 17.a  || { echo "Test 17: './check 17 _tmp.out 17.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 18' 
rm -f classics.out 
rm -f classics.in 
cp 18 classics.in 
./classics_pk   || { echo "Test 18: './classics_pk ' returned non-zero exit code!" ; exit 1; }
./validate 18 18.a  || { echo "Test 18: './validate 18 18.a' returned non-zero exit code!" ; exit 1; }
./check 18 classics.out 18.a  || { echo "Test 18: './check 18 classics.out 18.a' returned non-zero exit code!" ; exit 1; }
cp 18.a _tmp.out 
./check 18 _tmp.out 18.a  || { echo "Test 18: './check 18 _tmp.out 18.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 19' 
rm -f classics.out 
rm -f classics.in 
cp 19 classics.in 
./classics_pk   || { echo "Test 19: './classics_pk ' returned non-zero exit code!" ; exit 1; }
./validate 19 19.a  || { echo "Test 19: './validate 19 19.a' returned non-zero exit code!" ; exit 1; }
./check 19 classics.out 19.a  || { echo "Test 19: './check 19 classics.out 19.a' returned non-zero exit code!" ; exit 1; }
cp 19.a _tmp.out 
./check 19 _tmp.out 19.a  || { echo "Test 19: './check 19 _tmp.out 19.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 20' 
rm -f classics.out 
rm -f classics.in 
cp 20 classics.in 
./classics_pk   || { echo "Test 20: './classics_pk ' returned non-zero exit code!" ; exit 1; }
./validate 20 20.a  || { echo "Test 20: './validate 20 20.a' returned non-zero exit code!" ; exit 1; }
./check 20 classics.out 20.a  || { echo "Test 20: './check 20 classics.out 20.a' returned non-zero exit code!" ; exit 1; }
cp 20.a _tmp.out 
./check 20 _tmp.out 20.a  || { echo "Test 20: './check 20 _tmp.out 20.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 21' 
rm -f classics.out 
rm -f classics.in 
cp 21 classics.in 
./classics_pk   || { echo "Test 21: './classics_pk ' returned non-zero exit code!" ; exit 1; }
./validate 21 21.a  || { echo "Test 21: './validate 21 21.a' returned non-zero exit code!" ; exit 1; }
./check 21 classics.out 21.a  || { echo "Test 21: './check 21 classics.out 21.a' returned non-zero exit code!" ; exit 1; }
cp 21.a _tmp.out 
./check 21 _tmp.out 21.a  || { echo "Test 21: './check 21 _tmp.out 21.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 22' 
rm -f classics.out 
rm -f classics.in 
cp 22 classics.in 
./classics_pk   || { echo "Test 22: './classics_pk ' returned non-zero exit code!" ; exit 1; }
./validate 22 22.a  || { echo "Test 22: './validate 22 22.a' returned non-zero exit code!" ; exit 1; }
./check 22 classics.out 22.a  || { echo "Test 22: './check 22 classics.out 22.a' returned non-zero exit code!" ; exit 1; }
cp 22.a _tmp.out 
./check 22 _tmp.out 22.a  || { echo "Test 22: './check 22 _tmp.out 22.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 23' 
rm -f classics.out 
rm -f classics.in 
cp 23 classics.in 
./classics_pk   || { echo "Test 23: './classics_pk ' returned non-zero exit code!" ; exit 1; }
./validate 23 23.a  || { echo "Test 23: './validate 23 23.a' returned non-zero exit code!" ; exit 1; }
./check 23 classics.out 23.a  || { echo "Test 23: './check 23 classics.out 23.a' returned non-zero exit code!" ; exit 1; }
cp 23.a _tmp.out 
./check 23 _tmp.out 23.a  || { echo "Test 23: './check 23 _tmp.out 23.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 24' 
rm -f classics.out 
rm -f classics.in 
cp 24 classics.in 
./classics_pk   || { echo "Test 24: './classics_pk ' returned non-zero exit code!" ; exit 1; }
./validate 24 24.a  || { echo "Test 24: './validate 24 24.a' returned non-zero exit code!" ; exit 1; }
./check 24 classics.out 24.a  || { echo "Test 24: './check 24 classics.out 24.a' returned non-zero exit code!" ; exit 1; }
cp 24.a _tmp.out 
./check 24 _tmp.out 24.a  || { echo "Test 24: './check 24 _tmp.out 24.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 25' 
rm -f classics.out 
rm -f classics.in 
cp 25 classics.in 
./classics_pk   || { echo "Test 25: './classics_pk ' returned non-zero exit code!" ; exit 1; }
./validate 25 25.a  || { echo "Test 25: './validate 25 25.a' returned non-zero exit code!" ; exit 1; }
./check 25 classics.out 25.a  || { echo "Test 25: './check 25 classics.out 25.a' returned non-zero exit code!" ; exit 1; }
cp 25.a _tmp.out 
./check 25 _tmp.out 25.a  || { echo "Test 25: './check 25 _tmp.out 25.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 26' 
rm -f classics.out 
rm -f classics.in 
cp 26 classics.in 
./classics_pk   || { echo "Test 26: './classics_pk ' returned non-zero exit code!" ; exit 1; }
./validate 26 26.a  || { echo "Test 26: './validate 26 26.a' returned non-zero exit code!" ; exit 1; }
./check 26 classics.out 26.a  || { echo "Test 26: './check 26 classics.out 26.a' returned non-zero exit code!" ; exit 1; }
cp 26.a _tmp.out 
./check 26 _tmp.out 26.a  || { echo "Test 26: './check 26 _tmp.out 26.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 27' 
rm -f classics.out 
rm -f classics.in 
cp 27 classics.in 
./classics_pk   || { echo "Test 27: './classics_pk ' returned non-zero exit code!" ; exit 1; }
./validate 27 27.a  || { echo "Test 27: './validate 27 27.a' returned non-zero exit code!" ; exit 1; }
./check 27 classics.out 27.a  || { echo "Test 27: './check 27 classics.out 27.a' returned non-zero exit code!" ; exit 1; }
cp 27.a _tmp.out 
./check 27 _tmp.out 27.a  || { echo "Test 27: './check 27 _tmp.out 27.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 28' 
rm -f classics.out 
rm -f classics.in 
cp 28 classics.in 
./classics_pk   || { echo "Test 28: './classics_pk ' returned non-zero exit code!" ; exit 1; }
./validate 28 28.a  || { echo "Test 28: './validate 28 28.a' returned non-zero exit code!" ; exit 1; }
./check 28 classics.out 28.a  || { echo "Test 28: './check 28 classics.out 28.a' returned non-zero exit code!" ; exit 1; }
cp 28.a _tmp.out 
./check 28 _tmp.out 28.a  || { echo "Test 28: './check 28 _tmp.out 28.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 29' 
rm -f classics.out 
rm -f classics.in 
cp 29 classics.in 
./classics_pk   || { echo "Test 29: './classics_pk ' returned non-zero exit code!" ; exit 1; }
./validate 29 29.a  || { echo "Test 29: './validate 29 29.a' returned non-zero exit code!" ; exit 1; }
./check 29 classics.out 29.a  || { echo "Test 29: './check 29 classics.out 29.a' returned non-zero exit code!" ; exit 1; }
cp 29.a _tmp.out 
./check 29 _tmp.out 29.a  || { echo "Test 29: './check 29 _tmp.out 29.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 30' 
rm -f classics.out 
rm -f classics.in 
cp 30 classics.in 
./classics_pk   || { echo "Test 30: './classics_pk ' returned non-zero exit code!" ; exit 1; }
./validate 30 30.a  || { echo "Test 30: './validate 30 30.a' returned non-zero exit code!" ; exit 1; }
./check 30 classics.out 30.a  || { echo "Test 30: './check 30 classics.out 30.a' returned non-zero exit code!" ; exit 1; }
cp 30.a _tmp.out 
./check 30 _tmp.out 30.a  || { echo "Test 30: './check 30 _tmp.out 30.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 31' 
rm -f classics.out 
rm -f classics.in 
cp 31 classics.in 
./classics_pk   || { echo "Test 31: './classics_pk ' returned non-zero exit code!" ; exit 1; }
./validate 31 31.a  || { echo "Test 31: './validate 31 31.a' returned non-zero exit code!" ; exit 1; }
./check 31 classics.out 31.a  || { echo "Test 31: './check 31 classics.out 31.a' returned non-zero exit code!" ; exit 1; }
cp 31.a _tmp.out 
./check 31 _tmp.out 31.a  || { echo "Test 31: './check 31 _tmp.out 31.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 32' 
rm -f classics.out 
rm -f classics.in 
cp 32 classics.in 
./classics_pk   || { echo "Test 32: './classics_pk ' returned non-zero exit code!" ; exit 1; }
./validate 32 32.a  || { echo "Test 32: './validate 32 32.a' returned non-zero exit code!" ; exit 1; }
./check 32 classics.out 32.a  || { echo "Test 32: './check 32 classics.out 32.a' returned non-zero exit code!" ; exit 1; }
cp 32.a _tmp.out 
./check 32 _tmp.out 32.a  || { echo "Test 32: './check 32 _tmp.out 32.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 33' 
rm -f classics.out 
rm -f classics.in 
cp 33 classics.in 
./classics_pk   || { echo "Test 33: './classics_pk ' returned non-zero exit code!" ; exit 1; }
./validate 33 33.a  || { echo "Test 33: './validate 33 33.a' returned non-zero exit code!" ; exit 1; }
./check 33 classics.out 33.a  || { echo "Test 33: './check 33 classics.out 33.a' returned non-zero exit code!" ; exit 1; }
cp 33.a _tmp.out 
./check 33 _tmp.out 33.a  || { echo "Test 33: './check 33 _tmp.out 33.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 34' 
rm -f classics.out 
rm -f classics.in 
cp 34 classics.in 
./classics_pk   || { echo "Test 34: './classics_pk ' returned non-zero exit code!" ; exit 1; }
./validate 34 34.a  || { echo "Test 34: './validate 34 34.a' returned non-zero exit code!" ; exit 1; }
./check 34 classics.out 34.a  || { echo "Test 34: './check 34 classics.out 34.a' returned non-zero exit code!" ; exit 1; }
cp 34.a _tmp.out 
./check 34 _tmp.out 34.a  || { echo "Test 34: './check 34 _tmp.out 34.a' returned non-zero exit code!" ; exit 1; }

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
echo 'Test 23' 
cp 23 ../tests-ready/23 
cp 23.a ../tests-ready/23.a 
echo 'Test 24' 
cp 24 ../tests-ready/24 
cp 24.a ../tests-ready/24.a 
echo 'Test 25' 
cp 25 ../tests-ready/25 
cp 25.a ../tests-ready/25.a 
echo 'Test 26' 
cp 26 ../tests-ready/26 
cp 26.a ../tests-ready/26.a 
echo 'Test 27' 
cp 27 ../tests-ready/27 
cp 27.a ../tests-ready/27.a 
echo 'Test 28' 
cp 28 ../tests-ready/28 
cp 28.a ../tests-ready/28.a 
echo 'Test 29' 
cp 29 ../tests-ready/29 
cp 29.a ../tests-ready/29.a 
echo 'Test 30' 
cp 30 ../tests-ready/30 
cp 30.a ../tests-ready/30.a 
echo 'Test 31' 
cp 31 ../tests-ready/31 
cp 31.a ../tests-ready/31.a 
echo 'Test 32' 
cp 32 ../tests-ready/32 
cp 32.a ../tests-ready/32.a 
echo 'Test 33' 
cp 33 ../tests-ready/33 
cp 33.a ../tests-ready/33.a 
echo 'Test 34' 
cp 34 ../tests-ready/34 
cp 34.a ../tests-ready/34.a 
echo 'Problem built.' 
cd .. 
