#!/bin/bash
# This file was automatically generated by daysper
# Please consider editing the original daysper script file(s) instead of this script
rm -f _daysper.log 

echo '===================================' 
echo 'Building ./c_pots (id pots)' 
echo '===================================' 
rm -rf ./work 
rm -rf ./tests-ready 
mkdir work 
cp tests/* work/ 
cd work 

echo 'Running test generation script(s)...' 
# Next text has been translated from file(s) do_st.d, do_all.d


cp st01.hand 01 

cp st01.a.hand 01.a 



cp 01.hand 02 


cp 02.hand 03 


cp 03.hand 04 


cp 04.hand 05 


cp 05.hand 06 


g++ -I../../../res/testlib -O2 gen_all_coverable.cpp -o gen_all_coverable  || { echo "'g++ -I../../../res/testlib -O2 gen_all_coverable.cpp -o gen_all_coverable' returned non-zero exit code!" ; exit 1; }

g++ -I../../../res/testlib -O2 gen_all_the_same.cpp -o gen_all_the_same  || { echo "'g++ -I../../../res/testlib -O2 gen_all_the_same.cpp -o gen_all_the_same' returned non-zero exit code!" ; exit 1; }

g++ -I../../../res/testlib -O2 gen_rand.cpp -o gen_rand  || { echo "'g++ -I../../../res/testlib -O2 gen_rand.cpp -o gen_rand' returned non-zero exit code!" ; exit 1; }

g++ -I../../../res/testlib -O2 gen_inc_dec.cpp -o gen_inc_dec  || { echo "'g++ -I../../../res/testlib -O2 gen_inc_dec.cpp -o gen_inc_dec' returned non-zero exit code!" ; exit 1; }

g++ -I../../../res/testlib -O2 gen_inc_dec2.cpp -o gen_inc_dec2  || { echo "'g++ -I../../../res/testlib -O2 gen_inc_dec2.cpp -o gen_inc_dec2' returned non-zero exit code!" ; exit 1; }

./gen_rand  11 10 12  >07 || { echo "'./gen_rand  11 10 12' returned non-zero exit code!" ; exit 1; }

./gen_rand  12 23 22  >08 || { echo "'./gen_rand  12 23 22' returned non-zero exit code!" ; exit 1; }

./gen_rand  13 57 44  >09 || { echo "'./gen_rand  13 57 44' returned non-zero exit code!" ; exit 1; }

./gen_rand  14 33 19  >10 || { echo "'./gen_rand  14 33 19' returned non-zero exit code!" ; exit 1; }

./gen_rand  15 100 100  >11 || { echo "'./gen_rand  15 100 100' returned non-zero exit code!" ; exit 1; }

./gen_rand  16 555 550  >12 || { echo "'./gen_rand  16 555 550' returned non-zero exit code!" ; exit 1; }

./gen_all_the_same  1 1000 1000 999  >13 || { echo "'./gen_all_the_same  1 1000 1000 999' returned non-zero exit code!" ; exit 1; }

./gen_all_the_same  1000 1 1 1000  >14 || { echo "'./gen_all_the_same  1000 1 1 1000' returned non-zero exit code!" ; exit 1; }

./gen_all_the_same  1000 1 1000 1000  >15 || { echo "'./gen_all_the_same  1000 1 1000 1000' returned non-zero exit code!" ; exit 1; }

./gen_all_the_same  1000 1000 1000 999  >16 || { echo "'./gen_all_the_same  1000 1000 1000 999' returned non-zero exit code!" ; exit 1; }

./gen_rand  1 390 500  >17 || { echo "'./gen_rand  1 390 500' returned non-zero exit code!" ; exit 1; }

./gen_rand  2 490 500  >18 || { echo "'./gen_rand  2 490 500' returned non-zero exit code!" ; exit 1; }

./gen_rand  33 500 444  >19 || { echo "'./gen_rand  33 500 444' returned non-zero exit code!" ; exit 1; }

./gen_rand  4 500 499  >20 || { echo "'./gen_rand  4 500 499' returned non-zero exit code!" ; exit 1; }

./gen_rand  5 750 1000  >21 || { echo "'./gen_rand  5 750 1000' returned non-zero exit code!" ; exit 1; }

./gen_rand  6 1000 750  >22 || { echo "'./gen_rand  6 1000 750' returned non-zero exit code!" ; exit 1; }

./gen_rand  7 1000 1000  >23 || { echo "'./gen_rand  7 1000 1000' returned non-zero exit code!" ; exit 1; }

./gen_rand  8 1000 1000  >24 || { echo "'./gen_rand  8 1000 1000' returned non-zero exit code!" ; exit 1; }

./gen_rand  0 20 20  >25 || { echo "'./gen_rand  0 20 20' returned non-zero exit code!" ; exit 1; }

./gen_rand  1 50 50  >26 || { echo "'./gen_rand  1 50 50' returned non-zero exit code!" ; exit 1; }

./gen_inc_dec2  11 6 50 50  >27 || { echo "'./gen_inc_dec2  11 6 50 50' returned non-zero exit code!" ; exit 1; }

./gen_inc_dec2  22 30 150 50  >28 || { echo "'./gen_inc_dec2  22 30 150 50' returned non-zero exit code!" ; exit 1; }

./gen_inc_dec2  33 500 500 750  >29 || { echo "'./gen_inc_dec2  33 500 500 750' returned non-zero exit code!" ; exit 1; }

./gen_inc_dec2  44 100 900 900  >30 || { echo "'./gen_inc_dec2  44 100 900 900' returned non-zero exit code!" ; exit 1; }

./gen_inc_dec2  55 100 1000 1000  >31 || { echo "'./gen_inc_dec2  55 100 1000 1000' returned non-zero exit code!" ; exit 1; }

# (End of translated text)

echo 'Compiling solution, validator and checker...' 
g++ -I../../../res/testlib -O2 ../pots_el.cpp -o pots_el  || { echo "'g++ -I../../../res/testlib -O2 ../pots_el.cpp -o pots_el' returned non-zero exit code!" ; exit 1; }
fpc -Mdelphi -FE. -Fu../../../res/testlib -Fu../../../res ../validate.dpr  || { echo "'fpc -Mdelphi -FE. -Fu../../../res/testlib -Fu../../../res ../validate.dpr' returned non-zero exit code!" ; exit 1; }
fpc -Mdelphi -FE. -Fu../../../res/testlib -Fu../../../res ../check.dpr  || { echo "'fpc -Mdelphi -FE. -Fu../../../res/testlib -Fu../../../res ../check.dpr' returned non-zero exit code!" ; exit 1; }

echo 'Building answer files, validating and checking them...' 

echo 'Test 1' 
rm -f pots.out 
rm -f pots.in 
cp 01 pots.in 
./pots_el   || { echo "Test 1: './pots_el ' returned non-zero exit code!" ; exit 1; }
./validate 01 01.a  || { echo "Test 1: './validate 01 01.a' returned non-zero exit code!" ; exit 1; }
./check 01 pots.out 01.a  || { echo "Test 1: './check 01 pots.out 01.a' returned non-zero exit code!" ; exit 1; }
cp 01.a _tmp.out 
./check 01 _tmp.out 01.a  || { echo "Test 1: './check 01 _tmp.out 01.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 2' 
rm -f pots.out 
rm -f pots.in 
cp 02 pots.in 
./pots_el   || { echo "Test 2: './pots_el ' returned non-zero exit code!" ; exit 1; }
cp pots.out 02.a 
./validate 02 02.a  || { echo "Test 2: './validate 02 02.a' returned non-zero exit code!" ; exit 1; }
./check 02 pots.out 02.a  || { echo "Test 2: './check 02 pots.out 02.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 3' 
rm -f pots.out 
rm -f pots.in 
cp 03 pots.in 
./pots_el   || { echo "Test 3: './pots_el ' returned non-zero exit code!" ; exit 1; }
cp pots.out 03.a 
./validate 03 03.a  || { echo "Test 3: './validate 03 03.a' returned non-zero exit code!" ; exit 1; }
./check 03 pots.out 03.a  || { echo "Test 3: './check 03 pots.out 03.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 4' 
rm -f pots.out 
rm -f pots.in 
cp 04 pots.in 
./pots_el   || { echo "Test 4: './pots_el ' returned non-zero exit code!" ; exit 1; }
cp pots.out 04.a 
./validate 04 04.a  || { echo "Test 4: './validate 04 04.a' returned non-zero exit code!" ; exit 1; }
./check 04 pots.out 04.a  || { echo "Test 4: './check 04 pots.out 04.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 5' 
rm -f pots.out 
rm -f pots.in 
cp 05 pots.in 
./pots_el   || { echo "Test 5: './pots_el ' returned non-zero exit code!" ; exit 1; }
cp pots.out 05.a 
./validate 05 05.a  || { echo "Test 5: './validate 05 05.a' returned non-zero exit code!" ; exit 1; }
./check 05 pots.out 05.a  || { echo "Test 5: './check 05 pots.out 05.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 6' 
rm -f pots.out 
rm -f pots.in 
cp 06 pots.in 
./pots_el   || { echo "Test 6: './pots_el ' returned non-zero exit code!" ; exit 1; }
cp pots.out 06.a 
./validate 06 06.a  || { echo "Test 6: './validate 06 06.a' returned non-zero exit code!" ; exit 1; }
./check 06 pots.out 06.a  || { echo "Test 6: './check 06 pots.out 06.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 7' 
rm -f pots.out 
rm -f pots.in 
cp 07 pots.in 
./pots_el   || { echo "Test 7: './pots_el ' returned non-zero exit code!" ; exit 1; }
cp pots.out 07.a 
./validate 07 07.a  || { echo "Test 7: './validate 07 07.a' returned non-zero exit code!" ; exit 1; }
./check 07 pots.out 07.a  || { echo "Test 7: './check 07 pots.out 07.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 8' 
rm -f pots.out 
rm -f pots.in 
cp 08 pots.in 
./pots_el   || { echo "Test 8: './pots_el ' returned non-zero exit code!" ; exit 1; }
cp pots.out 08.a 
./validate 08 08.a  || { echo "Test 8: './validate 08 08.a' returned non-zero exit code!" ; exit 1; }
./check 08 pots.out 08.a  || { echo "Test 8: './check 08 pots.out 08.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 9' 
rm -f pots.out 
rm -f pots.in 
cp 09 pots.in 
./pots_el   || { echo "Test 9: './pots_el ' returned non-zero exit code!" ; exit 1; }
cp pots.out 09.a 
./validate 09 09.a  || { echo "Test 9: './validate 09 09.a' returned non-zero exit code!" ; exit 1; }
./check 09 pots.out 09.a  || { echo "Test 9: './check 09 pots.out 09.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 10' 
rm -f pots.out 
rm -f pots.in 
cp 10 pots.in 
./pots_el   || { echo "Test 10: './pots_el ' returned non-zero exit code!" ; exit 1; }
cp pots.out 10.a 
./validate 10 10.a  || { echo "Test 10: './validate 10 10.a' returned non-zero exit code!" ; exit 1; }
./check 10 pots.out 10.a  || { echo "Test 10: './check 10 pots.out 10.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 11' 
rm -f pots.out 
rm -f pots.in 
cp 11 pots.in 
./pots_el   || { echo "Test 11: './pots_el ' returned non-zero exit code!" ; exit 1; }
cp pots.out 11.a 
./validate 11 11.a  || { echo "Test 11: './validate 11 11.a' returned non-zero exit code!" ; exit 1; }
./check 11 pots.out 11.a  || { echo "Test 11: './check 11 pots.out 11.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 12' 
rm -f pots.out 
rm -f pots.in 
cp 12 pots.in 
./pots_el   || { echo "Test 12: './pots_el ' returned non-zero exit code!" ; exit 1; }
cp pots.out 12.a 
./validate 12 12.a  || { echo "Test 12: './validate 12 12.a' returned non-zero exit code!" ; exit 1; }
./check 12 pots.out 12.a  || { echo "Test 12: './check 12 pots.out 12.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 13' 
rm -f pots.out 
rm -f pots.in 
cp 13 pots.in 
./pots_el   || { echo "Test 13: './pots_el ' returned non-zero exit code!" ; exit 1; }
cp pots.out 13.a 
./validate 13 13.a  || { echo "Test 13: './validate 13 13.a' returned non-zero exit code!" ; exit 1; }
./check 13 pots.out 13.a  || { echo "Test 13: './check 13 pots.out 13.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 14' 
rm -f pots.out 
rm -f pots.in 
cp 14 pots.in 
./pots_el   || { echo "Test 14: './pots_el ' returned non-zero exit code!" ; exit 1; }
cp pots.out 14.a 
./validate 14 14.a  || { echo "Test 14: './validate 14 14.a' returned non-zero exit code!" ; exit 1; }
./check 14 pots.out 14.a  || { echo "Test 14: './check 14 pots.out 14.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 15' 
rm -f pots.out 
rm -f pots.in 
cp 15 pots.in 
./pots_el   || { echo "Test 15: './pots_el ' returned non-zero exit code!" ; exit 1; }
cp pots.out 15.a 
./validate 15 15.a  || { echo "Test 15: './validate 15 15.a' returned non-zero exit code!" ; exit 1; }
./check 15 pots.out 15.a  || { echo "Test 15: './check 15 pots.out 15.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 16' 
rm -f pots.out 
rm -f pots.in 
cp 16 pots.in 
./pots_el   || { echo "Test 16: './pots_el ' returned non-zero exit code!" ; exit 1; }
cp pots.out 16.a 
./validate 16 16.a  || { echo "Test 16: './validate 16 16.a' returned non-zero exit code!" ; exit 1; }
./check 16 pots.out 16.a  || { echo "Test 16: './check 16 pots.out 16.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 17' 
rm -f pots.out 
rm -f pots.in 
cp 17 pots.in 
./pots_el   || { echo "Test 17: './pots_el ' returned non-zero exit code!" ; exit 1; }
cp pots.out 17.a 
./validate 17 17.a  || { echo "Test 17: './validate 17 17.a' returned non-zero exit code!" ; exit 1; }
./check 17 pots.out 17.a  || { echo "Test 17: './check 17 pots.out 17.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 18' 
rm -f pots.out 
rm -f pots.in 
cp 18 pots.in 
./pots_el   || { echo "Test 18: './pots_el ' returned non-zero exit code!" ; exit 1; }
cp pots.out 18.a 
./validate 18 18.a  || { echo "Test 18: './validate 18 18.a' returned non-zero exit code!" ; exit 1; }
./check 18 pots.out 18.a  || { echo "Test 18: './check 18 pots.out 18.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 19' 
rm -f pots.out 
rm -f pots.in 
cp 19 pots.in 
./pots_el   || { echo "Test 19: './pots_el ' returned non-zero exit code!" ; exit 1; }
cp pots.out 19.a 
./validate 19 19.a  || { echo "Test 19: './validate 19 19.a' returned non-zero exit code!" ; exit 1; }
./check 19 pots.out 19.a  || { echo "Test 19: './check 19 pots.out 19.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 20' 
rm -f pots.out 
rm -f pots.in 
cp 20 pots.in 
./pots_el   || { echo "Test 20: './pots_el ' returned non-zero exit code!" ; exit 1; }
cp pots.out 20.a 
./validate 20 20.a  || { echo "Test 20: './validate 20 20.a' returned non-zero exit code!" ; exit 1; }
./check 20 pots.out 20.a  || { echo "Test 20: './check 20 pots.out 20.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 21' 
rm -f pots.out 
rm -f pots.in 
cp 21 pots.in 
./pots_el   || { echo "Test 21: './pots_el ' returned non-zero exit code!" ; exit 1; }
cp pots.out 21.a 
./validate 21 21.a  || { echo "Test 21: './validate 21 21.a' returned non-zero exit code!" ; exit 1; }
./check 21 pots.out 21.a  || { echo "Test 21: './check 21 pots.out 21.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 22' 
rm -f pots.out 
rm -f pots.in 
cp 22 pots.in 
./pots_el   || { echo "Test 22: './pots_el ' returned non-zero exit code!" ; exit 1; }
cp pots.out 22.a 
./validate 22 22.a  || { echo "Test 22: './validate 22 22.a' returned non-zero exit code!" ; exit 1; }
./check 22 pots.out 22.a  || { echo "Test 22: './check 22 pots.out 22.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 23' 
rm -f pots.out 
rm -f pots.in 
cp 23 pots.in 
./pots_el   || { echo "Test 23: './pots_el ' returned non-zero exit code!" ; exit 1; }
cp pots.out 23.a 
./validate 23 23.a  || { echo "Test 23: './validate 23 23.a' returned non-zero exit code!" ; exit 1; }
./check 23 pots.out 23.a  || { echo "Test 23: './check 23 pots.out 23.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 24' 
rm -f pots.out 
rm -f pots.in 
cp 24 pots.in 
./pots_el   || { echo "Test 24: './pots_el ' returned non-zero exit code!" ; exit 1; }
cp pots.out 24.a 
./validate 24 24.a  || { echo "Test 24: './validate 24 24.a' returned non-zero exit code!" ; exit 1; }
./check 24 pots.out 24.a  || { echo "Test 24: './check 24 pots.out 24.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 25' 
rm -f pots.out 
rm -f pots.in 
cp 25 pots.in 
./pots_el   || { echo "Test 25: './pots_el ' returned non-zero exit code!" ; exit 1; }
cp pots.out 25.a 
./validate 25 25.a  || { echo "Test 25: './validate 25 25.a' returned non-zero exit code!" ; exit 1; }
./check 25 pots.out 25.a  || { echo "Test 25: './check 25 pots.out 25.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 26' 
rm -f pots.out 
rm -f pots.in 
cp 26 pots.in 
./pots_el   || { echo "Test 26: './pots_el ' returned non-zero exit code!" ; exit 1; }
cp pots.out 26.a 
./validate 26 26.a  || { echo "Test 26: './validate 26 26.a' returned non-zero exit code!" ; exit 1; }
./check 26 pots.out 26.a  || { echo "Test 26: './check 26 pots.out 26.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 27' 
rm -f pots.out 
rm -f pots.in 
cp 27 pots.in 
./pots_el   || { echo "Test 27: './pots_el ' returned non-zero exit code!" ; exit 1; }
cp pots.out 27.a 
./validate 27 27.a  || { echo "Test 27: './validate 27 27.a' returned non-zero exit code!" ; exit 1; }
./check 27 pots.out 27.a  || { echo "Test 27: './check 27 pots.out 27.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 28' 
rm -f pots.out 
rm -f pots.in 
cp 28 pots.in 
./pots_el   || { echo "Test 28: './pots_el ' returned non-zero exit code!" ; exit 1; }
cp pots.out 28.a 
./validate 28 28.a  || { echo "Test 28: './validate 28 28.a' returned non-zero exit code!" ; exit 1; }
./check 28 pots.out 28.a  || { echo "Test 28: './check 28 pots.out 28.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 29' 
rm -f pots.out 
rm -f pots.in 
cp 29 pots.in 
./pots_el   || { echo "Test 29: './pots_el ' returned non-zero exit code!" ; exit 1; }
cp pots.out 29.a 
./validate 29 29.a  || { echo "Test 29: './validate 29 29.a' returned non-zero exit code!" ; exit 1; }
./check 29 pots.out 29.a  || { echo "Test 29: './check 29 pots.out 29.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 30' 
rm -f pots.out 
rm -f pots.in 
cp 30 pots.in 
./pots_el   || { echo "Test 30: './pots_el ' returned non-zero exit code!" ; exit 1; }
cp pots.out 30.a 
./validate 30 30.a  || { echo "Test 30: './validate 30 30.a' returned non-zero exit code!" ; exit 1; }
./check 30 pots.out 30.a  || { echo "Test 30: './check 30 pots.out 30.a' returned non-zero exit code!" ; exit 1; }

echo 'Test 31' 
rm -f pots.out 
rm -f pots.in 
cp 31 pots.in 
./pots_el   || { echo "Test 31: './pots_el ' returned non-zero exit code!" ; exit 1; }
cp pots.out 31.a 
./validate 31 31.a  || { echo "Test 31: './validate 31 31.a' returned non-zero exit code!" ; exit 1; }
./check 31 pots.out 31.a  || { echo "Test 31: './check 31 pots.out 31.a' returned non-zero exit code!" ; exit 1; }

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
echo 'Problem built.' 
cd .. 