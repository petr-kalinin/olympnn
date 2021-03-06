#!/bin/bash
# This file was automatically generated by daysper
# Please consider editing the original daysper script file(s) instead of this script
rm -f _daysper.log 

echo '===================================' 
echo 'Making examples for statements for  ./g_powersum (id powersum)' 
echo '===================================' 
echo 'Building examples' 
rm -rf ./work 
rm -rf ./statement/examples 
mkdir work 
cp tests/* work/ 
cd work 

echo 'Running test generation script(s)...' 
# Next text has been translated from file(s) do_st.d


cp st01.hand _001.in 


cp st02.hand _002.in 


# (End of translated text)

echo 'Compiling solution, validator and checker...' 
fpc -Mdelphi -FE. -Fu../../../res/testlib -Fu../../../res ../powersum_tir.dpr  || { echo "'fpc -Mdelphi -FE. -Fu../../../res/testlib -Fu../../../res ../powersum_tir.dpr' returned non-zero exit code!" ; exit 1; }
fpc -Mdelphi -FE. -Fu../../../res/testlib -Fu../../../res ../validate.dpr  || { echo "'fpc -Mdelphi -FE. -Fu../../../res/testlib -Fu../../../res ../validate.dpr' returned non-zero exit code!" ; exit 1; }
fpc -Mdelphi -FE. -Fu../../../res/testlib -Fu../../../res ../check.dpr  || { echo "'fpc -Mdelphi -FE. -Fu../../../res/testlib -Fu../../../res ../check.dpr' returned non-zero exit code!" ; exit 1; }

echo 'Building answer files, validating and checking them...' 

echo 'Test 1' 
rm -f powersum.out 
rm -f powersum.in 
cp _001.in powersum.in 
./powersum_tir   || { echo "Test 1: './powersum_tir ' returned non-zero exit code!" ; exit 1; }
cp powersum.out _001.ans 
./validate _001.in _001.ans  || { echo "Test 1: './validate _001.in _001.ans' returned non-zero exit code!" ; exit 1; }
./check _001.in powersum.out _001.ans  || { echo "Test 1: './check _001.in powersum.out _001.ans' returned non-zero exit code!" ; exit 1; }

echo 'Test 2' 
rm -f powersum.out 
rm -f powersum.in 
cp _002.in powersum.in 
./powersum_tir   || { echo "Test 2: './powersum_tir ' returned non-zero exit code!" ; exit 1; }
cp powersum.out _002.ans 
./validate _002.in _002.ans  || { echo "Test 2: './validate _002.in _002.ans' returned non-zero exit code!" ; exit 1; }
./check _002.in powersum.out _002.ans  || { echo "Test 2: './check _002.in powersum.out _002.ans' returned non-zero exit code!" ; exit 1; }

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
