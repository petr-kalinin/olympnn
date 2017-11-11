#!/bin/bash
# This file was automatically generated by daysper
# Please consider editing the original daysper script file(s) instead of this script
rm -f _daysper.log 

echo '===================================' 
echo 'Making examples for statements for  ./i_circles (id circles)' 
echo '===================================' 
echo 'Building examples' 
rm -rf ./work 
rm -rf ./statement/examples 
mkdir work 
cp tests/* work/ 
cd work 

echo 'Running test generation script(s)...' 
# Next text has been translated from file(s) do_st.d


cp 01.st.hand _001.in 

cp 01.st.hand.a _001.ans 


cp 02.st.hand _002.in 

cp 02.st.hand.a _002.ans 


# (End of translated text)

echo 'Compiling solution, validator and checker...' 
fpc -Mdelphi -FE. -Fu../../../res/testlib -Fu../../../res ../circles_pk.dpr  || { echo "'fpc -Mdelphi -FE. -Fu../../../res/testlib -Fu../../../res ../circles_pk.dpr' returned non-zero exit code!" ; exit 1; }
fpc -Mdelphi -FE. -Fu../../../res/testlib -Fu../../../res ../validate.dpr  || { echo "'fpc -Mdelphi -FE. -Fu../../../res/testlib -Fu../../../res ../validate.dpr' returned non-zero exit code!" ; exit 1; }
fpc -Mdelphi -FE. -Fu../../../res/testlib -Fu../../../res ../check.dpr  || { echo "'fpc -Mdelphi -FE. -Fu../../../res/testlib -Fu../../../res ../check.dpr' returned non-zero exit code!" ; exit 1; }

echo 'Building answer files, validating and checking them...' 

echo 'Test 1' 
rm -f circles.out 
rm -f circles.in 
cp _001.in circles.in 
./circles_pk   || { echo "Test 1: './circles_pk ' returned non-zero exit code!" ; exit 1; }
./validate _001.in _001.ans  || { echo "Test 1: './validate _001.in _001.ans' returned non-zero exit code!" ; exit 1; }
./check _001.in circles.out _001.ans  || { echo "Test 1: './check _001.in circles.out _001.ans' returned non-zero exit code!" ; exit 1; }
cp _001.ans _tmp.out 
./check _001.in _tmp.out _001.ans  || { echo "Test 1: './check _001.in _tmp.out _001.ans' returned non-zero exit code!" ; exit 1; }

echo 'Test 2' 
rm -f circles.out 
rm -f circles.in 
cp _002.in circles.in 
./circles_pk   || { echo "Test 2: './circles_pk ' returned non-zero exit code!" ; exit 1; }
./validate _002.in _002.ans  || { echo "Test 2: './validate _002.in _002.ans' returned non-zero exit code!" ; exit 1; }
./check _002.in circles.out _002.ans  || { echo "Test 2: './check _002.in circles.out _002.ans' returned non-zero exit code!" ; exit 1; }
cp _002.ans _tmp.out 
./check _002.in _tmp.out _002.ans  || { echo "Test 2: './check _002.in _tmp.out _002.ans' returned non-zero exit code!" ; exit 1; }

echo 'Copying tests to statement/examples' 
mkdir ../statement/examples 
echo 'Test 1' 
cp _001.in ../statement/examples/_001.in 
cp _001.ans ../statement/examples/_001.ans 
echo 'Test 2' 
cp _002.in ../statement/examples/_002.in 
cp _002.ans ../statement/examples/_002.ans 
echo 'Problem built.' 
cd .. 
echo '\FilesWithExample{examples/_001.in}{examples/_001.ans}\FilesWithExample{examples/_002.in}{examples/_002.ans}%'  >statement/_examples.tex
echo 'Examples created.' 