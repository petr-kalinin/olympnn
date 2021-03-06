@echo off
rem This file was automatically generated by daysper 
rem Please consider editing the original daysper script file(s) instead of this script 
IF EXIST _daysper.log del _daysper.log >nul  

echo =================================== 
echo Building ./a_classics (id classics) 
echo =================================== 
IF EXIST work rmdir /q /s work 
IF EXIST tests-ready rmdir /q /s tests-ready 
mkdir work 
copy tests\*.* work\*.* 
cd work 

echo Running test generation script(s)... 
rem Next text has been translated from file(s) do_all.d 


copy 01.hand 01 >nul 

copy 01.hand.a 01.a >nul 


copy 02.hand 02 >nul 

copy 02.hand.a 02.a >nul 


copy 03.hand 03 >nul 

copy 03.hand.a 03.a >nul 


copy 04.hand 04 >nul 

copy 04.hand.a 04.a >nul 


copy 05.hand 05 >nul 

copy 05.hand.a 05.a >nul 


copy 06.hand 06 >nul 

copy 06.hand.a 06.a >nul 


copy 07.hand 07 >nul 

copy 07.hand.a 07.a >nul 


copy 08.hand 08 >nul 

copy 08.hand.a 08.a >nul 


copy 09.hand 09 >nul 

copy 09.hand.a 09.a >nul 


copy 10.hand 10 >nul 

copy 10.hand.a 10.a >nul 


copy 11.hand 11 >nul 

copy 11.hand.a 11.a >nul 


copy 12.hand 12 >nul 

copy 12.hand.a 12.a >nul 


copy 13.hand 13 >nul 

copy 13.hand.a 13.a >nul 


copy 14.hand 14 >nul 

copy 14.hand.a 14.a >nul 


copy 15.hand 15 >nul 

copy 15.hand.a 15.a >nul 


copy 16.hand 16 >nul 

copy 16.hand.a 16.a >nul 


copy 17.hand 17 >nul 

copy 17.hand.a 17.a >nul 


copy 18.hand 18 >nul 

copy 18.hand.a 18.a >nul 


copy 19.hand 19 >nul 

copy 19.hand.a 19.a >nul 


copy 20.hand 20 >nul 

copy 20.hand.a 20.a >nul 


copy 21.hand 21 >nul 

copy 21.hand.a 21.a >nul 


copy 22.hand 22 >nul 

copy 22.hand.a 22.a >nul 


copy 23.hand 23 >nul 

copy 23.hand.a 23.a >nul 


copy 24.hand 24 >nul 

copy 24.hand.a 24.a >nul 


copy 25.hand 25 >nul 

copy 25.hand.a 25.a >nul 


copy 26.hand 26 >nul 

copy 26.hand.a 26.a >nul 


copy 27.hand 27 >nul 

copy 27.hand.a 27.a >nul 


copy 28.hand 28 >nul 

copy 28.hand.a 28.a >nul 


copy 29.hand 29 >nul 

copy 29.hand.a 29.a >nul 


copy 30.hand 30 >nul 

copy 30.hand.a 30.a >nul 


rem (End of translated text) 

echo Compiling solution, validator and checker... 
fpc -Mdelphi -FE. -Fu..\..\..\res\testlib -Fu..\..\..\res ..\classics_pk.pas 
IF errorlevel 1 (
  echo 'fpc -Mdelphi -FE. -Fu..\..\..\res\testlib -Fu..\..\..\res ..\classics_pk.pas' returned non-zero exit code!
  goto error
)
fpc -Mdelphi -FE. -Fu..\..\..\res\testlib -Fu..\..\..\res ..\validate.dpr 
IF errorlevel 1 (
  echo 'fpc -Mdelphi -FE. -Fu..\..\..\res\testlib -Fu..\..\..\res ..\validate.dpr' returned non-zero exit code!
  goto error
)
fpc -Mdelphi -FE. -Fu..\..\..\res\testlib -Fu..\..\..\res ..\check.dpr 
IF errorlevel 1 (
  echo 'fpc -Mdelphi -FE. -Fu..\..\..\res\testlib -Fu..\..\..\res ..\check.dpr' returned non-zero exit code!
  goto error
)

echo Building answer files, validating and checking them... 

echo Test 1 
IF EXIST classics.out del classics.out >nul  
IF EXIST classics.in del classics.in >nul  
copy 01 classics.in >nul 
classics_pk  
IF errorlevel 1 (
  echo Test 1: 'classics_pk ' returned non-zero exit code!
  goto error
)
validate 01 01.a 
IF errorlevel 1 (
  echo Test 1: 'validate 01 01.a' returned non-zero exit code!
  goto error
)
check 01 classics.out 01.a 
IF errorlevel 1 (
  echo Test 1: 'check 01 classics.out 01.a' returned non-zero exit code!
  goto error
)
copy 01.a _tmp.out >nul 
check 01 _tmp.out 01.a 
IF errorlevel 1 (
  echo Test 1: 'check 01 _tmp.out 01.a' returned non-zero exit code!
  goto error
)

echo Test 2 
IF EXIST classics.out del classics.out >nul  
IF EXIST classics.in del classics.in >nul  
copy 02 classics.in >nul 
classics_pk  
IF errorlevel 1 (
  echo Test 2: 'classics_pk ' returned non-zero exit code!
  goto error
)
validate 02 02.a 
IF errorlevel 1 (
  echo Test 2: 'validate 02 02.a' returned non-zero exit code!
  goto error
)
check 02 classics.out 02.a 
IF errorlevel 1 (
  echo Test 2: 'check 02 classics.out 02.a' returned non-zero exit code!
  goto error
)
copy 02.a _tmp.out >nul 
check 02 _tmp.out 02.a 
IF errorlevel 1 (
  echo Test 2: 'check 02 _tmp.out 02.a' returned non-zero exit code!
  goto error
)

echo Test 3 
IF EXIST classics.out del classics.out >nul  
IF EXIST classics.in del classics.in >nul  
copy 03 classics.in >nul 
classics_pk  
IF errorlevel 1 (
  echo Test 3: 'classics_pk ' returned non-zero exit code!
  goto error
)
validate 03 03.a 
IF errorlevel 1 (
  echo Test 3: 'validate 03 03.a' returned non-zero exit code!
  goto error
)
check 03 classics.out 03.a 
IF errorlevel 1 (
  echo Test 3: 'check 03 classics.out 03.a' returned non-zero exit code!
  goto error
)
copy 03.a _tmp.out >nul 
check 03 _tmp.out 03.a 
IF errorlevel 1 (
  echo Test 3: 'check 03 _tmp.out 03.a' returned non-zero exit code!
  goto error
)

echo Test 4 
IF EXIST classics.out del classics.out >nul  
IF EXIST classics.in del classics.in >nul  
copy 04 classics.in >nul 
classics_pk  
IF errorlevel 1 (
  echo Test 4: 'classics_pk ' returned non-zero exit code!
  goto error
)
validate 04 04.a 
IF errorlevel 1 (
  echo Test 4: 'validate 04 04.a' returned non-zero exit code!
  goto error
)
check 04 classics.out 04.a 
IF errorlevel 1 (
  echo Test 4: 'check 04 classics.out 04.a' returned non-zero exit code!
  goto error
)
copy 04.a _tmp.out >nul 
check 04 _tmp.out 04.a 
IF errorlevel 1 (
  echo Test 4: 'check 04 _tmp.out 04.a' returned non-zero exit code!
  goto error
)

echo Test 5 
IF EXIST classics.out del classics.out >nul  
IF EXIST classics.in del classics.in >nul  
copy 05 classics.in >nul 
classics_pk  
IF errorlevel 1 (
  echo Test 5: 'classics_pk ' returned non-zero exit code!
  goto error
)
validate 05 05.a 
IF errorlevel 1 (
  echo Test 5: 'validate 05 05.a' returned non-zero exit code!
  goto error
)
check 05 classics.out 05.a 
IF errorlevel 1 (
  echo Test 5: 'check 05 classics.out 05.a' returned non-zero exit code!
  goto error
)
copy 05.a _tmp.out >nul 
check 05 _tmp.out 05.a 
IF errorlevel 1 (
  echo Test 5: 'check 05 _tmp.out 05.a' returned non-zero exit code!
  goto error
)

echo Test 6 
IF EXIST classics.out del classics.out >nul  
IF EXIST classics.in del classics.in >nul  
copy 06 classics.in >nul 
classics_pk  
IF errorlevel 1 (
  echo Test 6: 'classics_pk ' returned non-zero exit code!
  goto error
)
validate 06 06.a 
IF errorlevel 1 (
  echo Test 6: 'validate 06 06.a' returned non-zero exit code!
  goto error
)
check 06 classics.out 06.a 
IF errorlevel 1 (
  echo Test 6: 'check 06 classics.out 06.a' returned non-zero exit code!
  goto error
)
copy 06.a _tmp.out >nul 
check 06 _tmp.out 06.a 
IF errorlevel 1 (
  echo Test 6: 'check 06 _tmp.out 06.a' returned non-zero exit code!
  goto error
)

echo Test 7 
IF EXIST classics.out del classics.out >nul  
IF EXIST classics.in del classics.in >nul  
copy 07 classics.in >nul 
classics_pk  
IF errorlevel 1 (
  echo Test 7: 'classics_pk ' returned non-zero exit code!
  goto error
)
validate 07 07.a 
IF errorlevel 1 (
  echo Test 7: 'validate 07 07.a' returned non-zero exit code!
  goto error
)
check 07 classics.out 07.a 
IF errorlevel 1 (
  echo Test 7: 'check 07 classics.out 07.a' returned non-zero exit code!
  goto error
)
copy 07.a _tmp.out >nul 
check 07 _tmp.out 07.a 
IF errorlevel 1 (
  echo Test 7: 'check 07 _tmp.out 07.a' returned non-zero exit code!
  goto error
)

echo Test 8 
IF EXIST classics.out del classics.out >nul  
IF EXIST classics.in del classics.in >nul  
copy 08 classics.in >nul 
classics_pk  
IF errorlevel 1 (
  echo Test 8: 'classics_pk ' returned non-zero exit code!
  goto error
)
validate 08 08.a 
IF errorlevel 1 (
  echo Test 8: 'validate 08 08.a' returned non-zero exit code!
  goto error
)
check 08 classics.out 08.a 
IF errorlevel 1 (
  echo Test 8: 'check 08 classics.out 08.a' returned non-zero exit code!
  goto error
)
copy 08.a _tmp.out >nul 
check 08 _tmp.out 08.a 
IF errorlevel 1 (
  echo Test 8: 'check 08 _tmp.out 08.a' returned non-zero exit code!
  goto error
)

echo Test 9 
IF EXIST classics.out del classics.out >nul  
IF EXIST classics.in del classics.in >nul  
copy 09 classics.in >nul 
classics_pk  
IF errorlevel 1 (
  echo Test 9: 'classics_pk ' returned non-zero exit code!
  goto error
)
validate 09 09.a 
IF errorlevel 1 (
  echo Test 9: 'validate 09 09.a' returned non-zero exit code!
  goto error
)
check 09 classics.out 09.a 
IF errorlevel 1 (
  echo Test 9: 'check 09 classics.out 09.a' returned non-zero exit code!
  goto error
)
copy 09.a _tmp.out >nul 
check 09 _tmp.out 09.a 
IF errorlevel 1 (
  echo Test 9: 'check 09 _tmp.out 09.a' returned non-zero exit code!
  goto error
)

echo Test 10 
IF EXIST classics.out del classics.out >nul  
IF EXIST classics.in del classics.in >nul  
copy 10 classics.in >nul 
classics_pk  
IF errorlevel 1 (
  echo Test 10: 'classics_pk ' returned non-zero exit code!
  goto error
)
validate 10 10.a 
IF errorlevel 1 (
  echo Test 10: 'validate 10 10.a' returned non-zero exit code!
  goto error
)
check 10 classics.out 10.a 
IF errorlevel 1 (
  echo Test 10: 'check 10 classics.out 10.a' returned non-zero exit code!
  goto error
)
copy 10.a _tmp.out >nul 
check 10 _tmp.out 10.a 
IF errorlevel 1 (
  echo Test 10: 'check 10 _tmp.out 10.a' returned non-zero exit code!
  goto error
)

echo Test 11 
IF EXIST classics.out del classics.out >nul  
IF EXIST classics.in del classics.in >nul  
copy 11 classics.in >nul 
classics_pk  
IF errorlevel 1 (
  echo Test 11: 'classics_pk ' returned non-zero exit code!
  goto error
)
validate 11 11.a 
IF errorlevel 1 (
  echo Test 11: 'validate 11 11.a' returned non-zero exit code!
  goto error
)
check 11 classics.out 11.a 
IF errorlevel 1 (
  echo Test 11: 'check 11 classics.out 11.a' returned non-zero exit code!
  goto error
)
copy 11.a _tmp.out >nul 
check 11 _tmp.out 11.a 
IF errorlevel 1 (
  echo Test 11: 'check 11 _tmp.out 11.a' returned non-zero exit code!
  goto error
)

echo Test 12 
IF EXIST classics.out del classics.out >nul  
IF EXIST classics.in del classics.in >nul  
copy 12 classics.in >nul 
classics_pk  
IF errorlevel 1 (
  echo Test 12: 'classics_pk ' returned non-zero exit code!
  goto error
)
validate 12 12.a 
IF errorlevel 1 (
  echo Test 12: 'validate 12 12.a' returned non-zero exit code!
  goto error
)
check 12 classics.out 12.a 
IF errorlevel 1 (
  echo Test 12: 'check 12 classics.out 12.a' returned non-zero exit code!
  goto error
)
copy 12.a _tmp.out >nul 
check 12 _tmp.out 12.a 
IF errorlevel 1 (
  echo Test 12: 'check 12 _tmp.out 12.a' returned non-zero exit code!
  goto error
)

echo Test 13 
IF EXIST classics.out del classics.out >nul  
IF EXIST classics.in del classics.in >nul  
copy 13 classics.in >nul 
classics_pk  
IF errorlevel 1 (
  echo Test 13: 'classics_pk ' returned non-zero exit code!
  goto error
)
validate 13 13.a 
IF errorlevel 1 (
  echo Test 13: 'validate 13 13.a' returned non-zero exit code!
  goto error
)
check 13 classics.out 13.a 
IF errorlevel 1 (
  echo Test 13: 'check 13 classics.out 13.a' returned non-zero exit code!
  goto error
)
copy 13.a _tmp.out >nul 
check 13 _tmp.out 13.a 
IF errorlevel 1 (
  echo Test 13: 'check 13 _tmp.out 13.a' returned non-zero exit code!
  goto error
)

echo Test 14 
IF EXIST classics.out del classics.out >nul  
IF EXIST classics.in del classics.in >nul  
copy 14 classics.in >nul 
classics_pk  
IF errorlevel 1 (
  echo Test 14: 'classics_pk ' returned non-zero exit code!
  goto error
)
validate 14 14.a 
IF errorlevel 1 (
  echo Test 14: 'validate 14 14.a' returned non-zero exit code!
  goto error
)
check 14 classics.out 14.a 
IF errorlevel 1 (
  echo Test 14: 'check 14 classics.out 14.a' returned non-zero exit code!
  goto error
)
copy 14.a _tmp.out >nul 
check 14 _tmp.out 14.a 
IF errorlevel 1 (
  echo Test 14: 'check 14 _tmp.out 14.a' returned non-zero exit code!
  goto error
)

echo Test 15 
IF EXIST classics.out del classics.out >nul  
IF EXIST classics.in del classics.in >nul  
copy 15 classics.in >nul 
classics_pk  
IF errorlevel 1 (
  echo Test 15: 'classics_pk ' returned non-zero exit code!
  goto error
)
validate 15 15.a 
IF errorlevel 1 (
  echo Test 15: 'validate 15 15.a' returned non-zero exit code!
  goto error
)
check 15 classics.out 15.a 
IF errorlevel 1 (
  echo Test 15: 'check 15 classics.out 15.a' returned non-zero exit code!
  goto error
)
copy 15.a _tmp.out >nul 
check 15 _tmp.out 15.a 
IF errorlevel 1 (
  echo Test 15: 'check 15 _tmp.out 15.a' returned non-zero exit code!
  goto error
)

echo Test 16 
IF EXIST classics.out del classics.out >nul  
IF EXIST classics.in del classics.in >nul  
copy 16 classics.in >nul 
classics_pk  
IF errorlevel 1 (
  echo Test 16: 'classics_pk ' returned non-zero exit code!
  goto error
)
validate 16 16.a 
IF errorlevel 1 (
  echo Test 16: 'validate 16 16.a' returned non-zero exit code!
  goto error
)
check 16 classics.out 16.a 
IF errorlevel 1 (
  echo Test 16: 'check 16 classics.out 16.a' returned non-zero exit code!
  goto error
)
copy 16.a _tmp.out >nul 
check 16 _tmp.out 16.a 
IF errorlevel 1 (
  echo Test 16: 'check 16 _tmp.out 16.a' returned non-zero exit code!
  goto error
)

echo Test 17 
IF EXIST classics.out del classics.out >nul  
IF EXIST classics.in del classics.in >nul  
copy 17 classics.in >nul 
classics_pk  
IF errorlevel 1 (
  echo Test 17: 'classics_pk ' returned non-zero exit code!
  goto error
)
validate 17 17.a 
IF errorlevel 1 (
  echo Test 17: 'validate 17 17.a' returned non-zero exit code!
  goto error
)
check 17 classics.out 17.a 
IF errorlevel 1 (
  echo Test 17: 'check 17 classics.out 17.a' returned non-zero exit code!
  goto error
)
copy 17.a _tmp.out >nul 
check 17 _tmp.out 17.a 
IF errorlevel 1 (
  echo Test 17: 'check 17 _tmp.out 17.a' returned non-zero exit code!
  goto error
)

echo Test 18 
IF EXIST classics.out del classics.out >nul  
IF EXIST classics.in del classics.in >nul  
copy 18 classics.in >nul 
classics_pk  
IF errorlevel 1 (
  echo Test 18: 'classics_pk ' returned non-zero exit code!
  goto error
)
validate 18 18.a 
IF errorlevel 1 (
  echo Test 18: 'validate 18 18.a' returned non-zero exit code!
  goto error
)
check 18 classics.out 18.a 
IF errorlevel 1 (
  echo Test 18: 'check 18 classics.out 18.a' returned non-zero exit code!
  goto error
)
copy 18.a _tmp.out >nul 
check 18 _tmp.out 18.a 
IF errorlevel 1 (
  echo Test 18: 'check 18 _tmp.out 18.a' returned non-zero exit code!
  goto error
)

echo Test 19 
IF EXIST classics.out del classics.out >nul  
IF EXIST classics.in del classics.in >nul  
copy 19 classics.in >nul 
classics_pk  
IF errorlevel 1 (
  echo Test 19: 'classics_pk ' returned non-zero exit code!
  goto error
)
validate 19 19.a 
IF errorlevel 1 (
  echo Test 19: 'validate 19 19.a' returned non-zero exit code!
  goto error
)
check 19 classics.out 19.a 
IF errorlevel 1 (
  echo Test 19: 'check 19 classics.out 19.a' returned non-zero exit code!
  goto error
)
copy 19.a _tmp.out >nul 
check 19 _tmp.out 19.a 
IF errorlevel 1 (
  echo Test 19: 'check 19 _tmp.out 19.a' returned non-zero exit code!
  goto error
)

echo Test 20 
IF EXIST classics.out del classics.out >nul  
IF EXIST classics.in del classics.in >nul  
copy 20 classics.in >nul 
classics_pk  
IF errorlevel 1 (
  echo Test 20: 'classics_pk ' returned non-zero exit code!
  goto error
)
validate 20 20.a 
IF errorlevel 1 (
  echo Test 20: 'validate 20 20.a' returned non-zero exit code!
  goto error
)
check 20 classics.out 20.a 
IF errorlevel 1 (
  echo Test 20: 'check 20 classics.out 20.a' returned non-zero exit code!
  goto error
)
copy 20.a _tmp.out >nul 
check 20 _tmp.out 20.a 
IF errorlevel 1 (
  echo Test 20: 'check 20 _tmp.out 20.a' returned non-zero exit code!
  goto error
)

echo Test 21 
IF EXIST classics.out del classics.out >nul  
IF EXIST classics.in del classics.in >nul  
copy 21 classics.in >nul 
classics_pk  
IF errorlevel 1 (
  echo Test 21: 'classics_pk ' returned non-zero exit code!
  goto error
)
validate 21 21.a 
IF errorlevel 1 (
  echo Test 21: 'validate 21 21.a' returned non-zero exit code!
  goto error
)
check 21 classics.out 21.a 
IF errorlevel 1 (
  echo Test 21: 'check 21 classics.out 21.a' returned non-zero exit code!
  goto error
)
copy 21.a _tmp.out >nul 
check 21 _tmp.out 21.a 
IF errorlevel 1 (
  echo Test 21: 'check 21 _tmp.out 21.a' returned non-zero exit code!
  goto error
)

echo Test 22 
IF EXIST classics.out del classics.out >nul  
IF EXIST classics.in del classics.in >nul  
copy 22 classics.in >nul 
classics_pk  
IF errorlevel 1 (
  echo Test 22: 'classics_pk ' returned non-zero exit code!
  goto error
)
validate 22 22.a 
IF errorlevel 1 (
  echo Test 22: 'validate 22 22.a' returned non-zero exit code!
  goto error
)
check 22 classics.out 22.a 
IF errorlevel 1 (
  echo Test 22: 'check 22 classics.out 22.a' returned non-zero exit code!
  goto error
)
copy 22.a _tmp.out >nul 
check 22 _tmp.out 22.a 
IF errorlevel 1 (
  echo Test 22: 'check 22 _tmp.out 22.a' returned non-zero exit code!
  goto error
)

echo Test 23 
IF EXIST classics.out del classics.out >nul  
IF EXIST classics.in del classics.in >nul  
copy 23 classics.in >nul 
classics_pk  
IF errorlevel 1 (
  echo Test 23: 'classics_pk ' returned non-zero exit code!
  goto error
)
validate 23 23.a 
IF errorlevel 1 (
  echo Test 23: 'validate 23 23.a' returned non-zero exit code!
  goto error
)
check 23 classics.out 23.a 
IF errorlevel 1 (
  echo Test 23: 'check 23 classics.out 23.a' returned non-zero exit code!
  goto error
)
copy 23.a _tmp.out >nul 
check 23 _tmp.out 23.a 
IF errorlevel 1 (
  echo Test 23: 'check 23 _tmp.out 23.a' returned non-zero exit code!
  goto error
)

echo Test 24 
IF EXIST classics.out del classics.out >nul  
IF EXIST classics.in del classics.in >nul  
copy 24 classics.in >nul 
classics_pk  
IF errorlevel 1 (
  echo Test 24: 'classics_pk ' returned non-zero exit code!
  goto error
)
validate 24 24.a 
IF errorlevel 1 (
  echo Test 24: 'validate 24 24.a' returned non-zero exit code!
  goto error
)
check 24 classics.out 24.a 
IF errorlevel 1 (
  echo Test 24: 'check 24 classics.out 24.a' returned non-zero exit code!
  goto error
)
copy 24.a _tmp.out >nul 
check 24 _tmp.out 24.a 
IF errorlevel 1 (
  echo Test 24: 'check 24 _tmp.out 24.a' returned non-zero exit code!
  goto error
)

echo Test 25 
IF EXIST classics.out del classics.out >nul  
IF EXIST classics.in del classics.in >nul  
copy 25 classics.in >nul 
classics_pk  
IF errorlevel 1 (
  echo Test 25: 'classics_pk ' returned non-zero exit code!
  goto error
)
validate 25 25.a 
IF errorlevel 1 (
  echo Test 25: 'validate 25 25.a' returned non-zero exit code!
  goto error
)
check 25 classics.out 25.a 
IF errorlevel 1 (
  echo Test 25: 'check 25 classics.out 25.a' returned non-zero exit code!
  goto error
)
copy 25.a _tmp.out >nul 
check 25 _tmp.out 25.a 
IF errorlevel 1 (
  echo Test 25: 'check 25 _tmp.out 25.a' returned non-zero exit code!
  goto error
)

echo Test 26 
IF EXIST classics.out del classics.out >nul  
IF EXIST classics.in del classics.in >nul  
copy 26 classics.in >nul 
classics_pk  
IF errorlevel 1 (
  echo Test 26: 'classics_pk ' returned non-zero exit code!
  goto error
)
validate 26 26.a 
IF errorlevel 1 (
  echo Test 26: 'validate 26 26.a' returned non-zero exit code!
  goto error
)
check 26 classics.out 26.a 
IF errorlevel 1 (
  echo Test 26: 'check 26 classics.out 26.a' returned non-zero exit code!
  goto error
)
copy 26.a _tmp.out >nul 
check 26 _tmp.out 26.a 
IF errorlevel 1 (
  echo Test 26: 'check 26 _tmp.out 26.a' returned non-zero exit code!
  goto error
)

echo Test 27 
IF EXIST classics.out del classics.out >nul  
IF EXIST classics.in del classics.in >nul  
copy 27 classics.in >nul 
classics_pk  
IF errorlevel 1 (
  echo Test 27: 'classics_pk ' returned non-zero exit code!
  goto error
)
validate 27 27.a 
IF errorlevel 1 (
  echo Test 27: 'validate 27 27.a' returned non-zero exit code!
  goto error
)
check 27 classics.out 27.a 
IF errorlevel 1 (
  echo Test 27: 'check 27 classics.out 27.a' returned non-zero exit code!
  goto error
)
copy 27.a _tmp.out >nul 
check 27 _tmp.out 27.a 
IF errorlevel 1 (
  echo Test 27: 'check 27 _tmp.out 27.a' returned non-zero exit code!
  goto error
)

echo Test 28 
IF EXIST classics.out del classics.out >nul  
IF EXIST classics.in del classics.in >nul  
copy 28 classics.in >nul 
classics_pk  
IF errorlevel 1 (
  echo Test 28: 'classics_pk ' returned non-zero exit code!
  goto error
)
validate 28 28.a 
IF errorlevel 1 (
  echo Test 28: 'validate 28 28.a' returned non-zero exit code!
  goto error
)
check 28 classics.out 28.a 
IF errorlevel 1 (
  echo Test 28: 'check 28 classics.out 28.a' returned non-zero exit code!
  goto error
)
copy 28.a _tmp.out >nul 
check 28 _tmp.out 28.a 
IF errorlevel 1 (
  echo Test 28: 'check 28 _tmp.out 28.a' returned non-zero exit code!
  goto error
)

echo Test 29 
IF EXIST classics.out del classics.out >nul  
IF EXIST classics.in del classics.in >nul  
copy 29 classics.in >nul 
classics_pk  
IF errorlevel 1 (
  echo Test 29: 'classics_pk ' returned non-zero exit code!
  goto error
)
validate 29 29.a 
IF errorlevel 1 (
  echo Test 29: 'validate 29 29.a' returned non-zero exit code!
  goto error
)
check 29 classics.out 29.a 
IF errorlevel 1 (
  echo Test 29: 'check 29 classics.out 29.a' returned non-zero exit code!
  goto error
)
copy 29.a _tmp.out >nul 
check 29 _tmp.out 29.a 
IF errorlevel 1 (
  echo Test 29: 'check 29 _tmp.out 29.a' returned non-zero exit code!
  goto error
)

echo Test 30 
IF EXIST classics.out del classics.out >nul  
IF EXIST classics.in del classics.in >nul  
copy 30 classics.in >nul 
classics_pk  
IF errorlevel 1 (
  echo Test 30: 'classics_pk ' returned non-zero exit code!
  goto error
)
validate 30 30.a 
IF errorlevel 1 (
  echo Test 30: 'validate 30 30.a' returned non-zero exit code!
  goto error
)
check 30 classics.out 30.a 
IF errorlevel 1 (
  echo Test 30: 'check 30 classics.out 30.a' returned non-zero exit code!
  goto error
)
copy 30.a _tmp.out >nul 
check 30 _tmp.out 30.a 
IF errorlevel 1 (
  echo Test 30: 'check 30 _tmp.out 30.a' returned non-zero exit code!
  goto error
)

echo Copying tests to tests-ready 
mkdir ..\tests-ready 
echo Test 1 
copy 01 ..\tests-ready\01 >nul 
copy 01.a ..\tests-ready\01.a >nul 
echo Test 2 
copy 02 ..\tests-ready\02 >nul 
copy 02.a ..\tests-ready\02.a >nul 
echo Test 3 
copy 03 ..\tests-ready\03 >nul 
copy 03.a ..\tests-ready\03.a >nul 
echo Test 4 
copy 04 ..\tests-ready\04 >nul 
copy 04.a ..\tests-ready\04.a >nul 
echo Test 5 
copy 05 ..\tests-ready\05 >nul 
copy 05.a ..\tests-ready\05.a >nul 
echo Test 6 
copy 06 ..\tests-ready\06 >nul 
copy 06.a ..\tests-ready\06.a >nul 
echo Test 7 
copy 07 ..\tests-ready\07 >nul 
copy 07.a ..\tests-ready\07.a >nul 
echo Test 8 
copy 08 ..\tests-ready\08 >nul 
copy 08.a ..\tests-ready\08.a >nul 
echo Test 9 
copy 09 ..\tests-ready\09 >nul 
copy 09.a ..\tests-ready\09.a >nul 
echo Test 10 
copy 10 ..\tests-ready\10 >nul 
copy 10.a ..\tests-ready\10.a >nul 
echo Test 11 
copy 11 ..\tests-ready\11 >nul 
copy 11.a ..\tests-ready\11.a >nul 
echo Test 12 
copy 12 ..\tests-ready\12 >nul 
copy 12.a ..\tests-ready\12.a >nul 
echo Test 13 
copy 13 ..\tests-ready\13 >nul 
copy 13.a ..\tests-ready\13.a >nul 
echo Test 14 
copy 14 ..\tests-ready\14 >nul 
copy 14.a ..\tests-ready\14.a >nul 
echo Test 15 
copy 15 ..\tests-ready\15 >nul 
copy 15.a ..\tests-ready\15.a >nul 
echo Test 16 
copy 16 ..\tests-ready\16 >nul 
copy 16.a ..\tests-ready\16.a >nul 
echo Test 17 
copy 17 ..\tests-ready\17 >nul 
copy 17.a ..\tests-ready\17.a >nul 
echo Test 18 
copy 18 ..\tests-ready\18 >nul 
copy 18.a ..\tests-ready\18.a >nul 
echo Test 19 
copy 19 ..\tests-ready\19 >nul 
copy 19.a ..\tests-ready\19.a >nul 
echo Test 20 
copy 20 ..\tests-ready\20 >nul 
copy 20.a ..\tests-ready\20.a >nul 
echo Test 21 
copy 21 ..\tests-ready\21 >nul 
copy 21.a ..\tests-ready\21.a >nul 
echo Test 22 
copy 22 ..\tests-ready\22 >nul 
copy 22.a ..\tests-ready\22.a >nul 
echo Test 23 
copy 23 ..\tests-ready\23 >nul 
copy 23.a ..\tests-ready\23.a >nul 
echo Test 24 
copy 24 ..\tests-ready\24 >nul 
copy 24.a ..\tests-ready\24.a >nul 
echo Test 25 
copy 25 ..\tests-ready\25 >nul 
copy 25.a ..\tests-ready\25.a >nul 
echo Test 26 
copy 26 ..\tests-ready\26 >nul 
copy 26.a ..\tests-ready\26.a >nul 
echo Test 27 
copy 27 ..\tests-ready\27 >nul 
copy 27.a ..\tests-ready\27.a >nul 
echo Test 28 
copy 28 ..\tests-ready\28 >nul 
copy 28.a ..\tests-ready\28.a >nul 
echo Test 29 
copy 29 ..\tests-ready\29 >nul 
copy 29.a ..\tests-ready\29.a >nul 
echo Test 30 
copy 30 ..\tests-ready\30 >nul 
copy 30.a ..\tests-ready\30.a >nul 
echo Problem built. 
cd .. 
goto end
:error
echo An error occured! Exiting
exit /b 1
:end
