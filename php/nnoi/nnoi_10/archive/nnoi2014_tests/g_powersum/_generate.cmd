@echo off
rem This file was automatically generated by daysper 
rem Please consider editing the original daysper script file(s) instead of this script 
IF EXIST _daysper.log del _daysper.log >nul  

echo =================================== 
echo Building ./g_powersum (id powersum) 
echo =================================== 
IF EXIST work rmdir /q /s work 
IF EXIST tests-ready rmdir /q /s tests-ready 
mkdir work 
copy tests\*.* work\*.* 
cd work 

echo Running test generation script(s)... 
rem Next text has been translated from file(s) do_all.d 


copy 01.hand 01 >nul 


copy 02.hand 02 >nul 


copy 03.hand 03 >nul 


copy 04.hand 04 >nul 


copy 05.hand 05 >nul 


copy 06.hand 06 >nul 


copy 07.hand 07 >nul 


copy 08.hand 08 >nul 


copy 09.hand 09 >nul 


copy 10.hand 10 >nul 


copy 11.hand 11 >nul 


copy 12.hand 12 >nul 


copy 13.hand 13 >nul 


copy 14.hand 14 >nul 


copy 15.hand 15 >nul 


copy 16.hand 16 >nul 


copy 17.hand 17 >nul 


copy 18.hand 18 >nul 


copy 19.hand 19 >nul 


copy 20.hand 20 >nul 


rem (End of translated text) 

echo Compiling solution, validator and checker... 
fpc -Mdelphi -FE. -Fu..\..\..\res\testlib -Fu..\..\..\res ..\powersum_pk.pas 
IF errorlevel 1 (
  echo 'fpc -Mdelphi -FE. -Fu..\..\..\res\testlib -Fu..\..\..\res ..\powersum_pk.pas' returned non-zero exit code!
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
IF EXIST powersum.out del powersum.out >nul  
IF EXIST powersum.in del powersum.in >nul  
copy 01 powersum.in >nul 
powersum_pk  
IF errorlevel 1 (
  echo Test 1: 'powersum_pk ' returned non-zero exit code!
  goto error
)
copy powersum.out 01.a >nul 
validate 01 01.a 
IF errorlevel 1 (
  echo Test 1: 'validate 01 01.a' returned non-zero exit code!
  goto error
)
check 01 powersum.out 01.a 
IF errorlevel 1 (
  echo Test 1: 'check 01 powersum.out 01.a' returned non-zero exit code!
  goto error
)

echo Test 2 
IF EXIST powersum.out del powersum.out >nul  
IF EXIST powersum.in del powersum.in >nul  
copy 02 powersum.in >nul 
powersum_pk  
IF errorlevel 1 (
  echo Test 2: 'powersum_pk ' returned non-zero exit code!
  goto error
)
copy powersum.out 02.a >nul 
validate 02 02.a 
IF errorlevel 1 (
  echo Test 2: 'validate 02 02.a' returned non-zero exit code!
  goto error
)
check 02 powersum.out 02.a 
IF errorlevel 1 (
  echo Test 2: 'check 02 powersum.out 02.a' returned non-zero exit code!
  goto error
)

echo Test 3 
IF EXIST powersum.out del powersum.out >nul  
IF EXIST powersum.in del powersum.in >nul  
copy 03 powersum.in >nul 
powersum_pk  
IF errorlevel 1 (
  echo Test 3: 'powersum_pk ' returned non-zero exit code!
  goto error
)
copy powersum.out 03.a >nul 
validate 03 03.a 
IF errorlevel 1 (
  echo Test 3: 'validate 03 03.a' returned non-zero exit code!
  goto error
)
check 03 powersum.out 03.a 
IF errorlevel 1 (
  echo Test 3: 'check 03 powersum.out 03.a' returned non-zero exit code!
  goto error
)

echo Test 4 
IF EXIST powersum.out del powersum.out >nul  
IF EXIST powersum.in del powersum.in >nul  
copy 04 powersum.in >nul 
powersum_pk  
IF errorlevel 1 (
  echo Test 4: 'powersum_pk ' returned non-zero exit code!
  goto error
)
copy powersum.out 04.a >nul 
validate 04 04.a 
IF errorlevel 1 (
  echo Test 4: 'validate 04 04.a' returned non-zero exit code!
  goto error
)
check 04 powersum.out 04.a 
IF errorlevel 1 (
  echo Test 4: 'check 04 powersum.out 04.a' returned non-zero exit code!
  goto error
)

echo Test 5 
IF EXIST powersum.out del powersum.out >nul  
IF EXIST powersum.in del powersum.in >nul  
copy 05 powersum.in >nul 
powersum_pk  
IF errorlevel 1 (
  echo Test 5: 'powersum_pk ' returned non-zero exit code!
  goto error
)
copy powersum.out 05.a >nul 
validate 05 05.a 
IF errorlevel 1 (
  echo Test 5: 'validate 05 05.a' returned non-zero exit code!
  goto error
)
check 05 powersum.out 05.a 
IF errorlevel 1 (
  echo Test 5: 'check 05 powersum.out 05.a' returned non-zero exit code!
  goto error
)

echo Test 6 
IF EXIST powersum.out del powersum.out >nul  
IF EXIST powersum.in del powersum.in >nul  
copy 06 powersum.in >nul 
powersum_pk  
IF errorlevel 1 (
  echo Test 6: 'powersum_pk ' returned non-zero exit code!
  goto error
)
copy powersum.out 06.a >nul 
validate 06 06.a 
IF errorlevel 1 (
  echo Test 6: 'validate 06 06.a' returned non-zero exit code!
  goto error
)
check 06 powersum.out 06.a 
IF errorlevel 1 (
  echo Test 6: 'check 06 powersum.out 06.a' returned non-zero exit code!
  goto error
)

echo Test 7 
IF EXIST powersum.out del powersum.out >nul  
IF EXIST powersum.in del powersum.in >nul  
copy 07 powersum.in >nul 
powersum_pk  
IF errorlevel 1 (
  echo Test 7: 'powersum_pk ' returned non-zero exit code!
  goto error
)
copy powersum.out 07.a >nul 
validate 07 07.a 
IF errorlevel 1 (
  echo Test 7: 'validate 07 07.a' returned non-zero exit code!
  goto error
)
check 07 powersum.out 07.a 
IF errorlevel 1 (
  echo Test 7: 'check 07 powersum.out 07.a' returned non-zero exit code!
  goto error
)

echo Test 8 
IF EXIST powersum.out del powersum.out >nul  
IF EXIST powersum.in del powersum.in >nul  
copy 08 powersum.in >nul 
powersum_pk  
IF errorlevel 1 (
  echo Test 8: 'powersum_pk ' returned non-zero exit code!
  goto error
)
copy powersum.out 08.a >nul 
validate 08 08.a 
IF errorlevel 1 (
  echo Test 8: 'validate 08 08.a' returned non-zero exit code!
  goto error
)
check 08 powersum.out 08.a 
IF errorlevel 1 (
  echo Test 8: 'check 08 powersum.out 08.a' returned non-zero exit code!
  goto error
)

echo Test 9 
IF EXIST powersum.out del powersum.out >nul  
IF EXIST powersum.in del powersum.in >nul  
copy 09 powersum.in >nul 
powersum_pk  
IF errorlevel 1 (
  echo Test 9: 'powersum_pk ' returned non-zero exit code!
  goto error
)
copy powersum.out 09.a >nul 
validate 09 09.a 
IF errorlevel 1 (
  echo Test 9: 'validate 09 09.a' returned non-zero exit code!
  goto error
)
check 09 powersum.out 09.a 
IF errorlevel 1 (
  echo Test 9: 'check 09 powersum.out 09.a' returned non-zero exit code!
  goto error
)

echo Test 10 
IF EXIST powersum.out del powersum.out >nul  
IF EXIST powersum.in del powersum.in >nul  
copy 10 powersum.in >nul 
powersum_pk  
IF errorlevel 1 (
  echo Test 10: 'powersum_pk ' returned non-zero exit code!
  goto error
)
copy powersum.out 10.a >nul 
validate 10 10.a 
IF errorlevel 1 (
  echo Test 10: 'validate 10 10.a' returned non-zero exit code!
  goto error
)
check 10 powersum.out 10.a 
IF errorlevel 1 (
  echo Test 10: 'check 10 powersum.out 10.a' returned non-zero exit code!
  goto error
)

echo Test 11 
IF EXIST powersum.out del powersum.out >nul  
IF EXIST powersum.in del powersum.in >nul  
copy 11 powersum.in >nul 
powersum_pk  
IF errorlevel 1 (
  echo Test 11: 'powersum_pk ' returned non-zero exit code!
  goto error
)
copy powersum.out 11.a >nul 
validate 11 11.a 
IF errorlevel 1 (
  echo Test 11: 'validate 11 11.a' returned non-zero exit code!
  goto error
)
check 11 powersum.out 11.a 
IF errorlevel 1 (
  echo Test 11: 'check 11 powersum.out 11.a' returned non-zero exit code!
  goto error
)

echo Test 12 
IF EXIST powersum.out del powersum.out >nul  
IF EXIST powersum.in del powersum.in >nul  
copy 12 powersum.in >nul 
powersum_pk  
IF errorlevel 1 (
  echo Test 12: 'powersum_pk ' returned non-zero exit code!
  goto error
)
copy powersum.out 12.a >nul 
validate 12 12.a 
IF errorlevel 1 (
  echo Test 12: 'validate 12 12.a' returned non-zero exit code!
  goto error
)
check 12 powersum.out 12.a 
IF errorlevel 1 (
  echo Test 12: 'check 12 powersum.out 12.a' returned non-zero exit code!
  goto error
)

echo Test 13 
IF EXIST powersum.out del powersum.out >nul  
IF EXIST powersum.in del powersum.in >nul  
copy 13 powersum.in >nul 
powersum_pk  
IF errorlevel 1 (
  echo Test 13: 'powersum_pk ' returned non-zero exit code!
  goto error
)
copy powersum.out 13.a >nul 
validate 13 13.a 
IF errorlevel 1 (
  echo Test 13: 'validate 13 13.a' returned non-zero exit code!
  goto error
)
check 13 powersum.out 13.a 
IF errorlevel 1 (
  echo Test 13: 'check 13 powersum.out 13.a' returned non-zero exit code!
  goto error
)

echo Test 14 
IF EXIST powersum.out del powersum.out >nul  
IF EXIST powersum.in del powersum.in >nul  
copy 14 powersum.in >nul 
powersum_pk  
IF errorlevel 1 (
  echo Test 14: 'powersum_pk ' returned non-zero exit code!
  goto error
)
copy powersum.out 14.a >nul 
validate 14 14.a 
IF errorlevel 1 (
  echo Test 14: 'validate 14 14.a' returned non-zero exit code!
  goto error
)
check 14 powersum.out 14.a 
IF errorlevel 1 (
  echo Test 14: 'check 14 powersum.out 14.a' returned non-zero exit code!
  goto error
)

echo Test 15 
IF EXIST powersum.out del powersum.out >nul  
IF EXIST powersum.in del powersum.in >nul  
copy 15 powersum.in >nul 
powersum_pk  
IF errorlevel 1 (
  echo Test 15: 'powersum_pk ' returned non-zero exit code!
  goto error
)
copy powersum.out 15.a >nul 
validate 15 15.a 
IF errorlevel 1 (
  echo Test 15: 'validate 15 15.a' returned non-zero exit code!
  goto error
)
check 15 powersum.out 15.a 
IF errorlevel 1 (
  echo Test 15: 'check 15 powersum.out 15.a' returned non-zero exit code!
  goto error
)

echo Test 16 
IF EXIST powersum.out del powersum.out >nul  
IF EXIST powersum.in del powersum.in >nul  
copy 16 powersum.in >nul 
powersum_pk  
IF errorlevel 1 (
  echo Test 16: 'powersum_pk ' returned non-zero exit code!
  goto error
)
copy powersum.out 16.a >nul 
validate 16 16.a 
IF errorlevel 1 (
  echo Test 16: 'validate 16 16.a' returned non-zero exit code!
  goto error
)
check 16 powersum.out 16.a 
IF errorlevel 1 (
  echo Test 16: 'check 16 powersum.out 16.a' returned non-zero exit code!
  goto error
)

echo Test 17 
IF EXIST powersum.out del powersum.out >nul  
IF EXIST powersum.in del powersum.in >nul  
copy 17 powersum.in >nul 
powersum_pk  
IF errorlevel 1 (
  echo Test 17: 'powersum_pk ' returned non-zero exit code!
  goto error
)
copy powersum.out 17.a >nul 
validate 17 17.a 
IF errorlevel 1 (
  echo Test 17: 'validate 17 17.a' returned non-zero exit code!
  goto error
)
check 17 powersum.out 17.a 
IF errorlevel 1 (
  echo Test 17: 'check 17 powersum.out 17.a' returned non-zero exit code!
  goto error
)

echo Test 18 
IF EXIST powersum.out del powersum.out >nul  
IF EXIST powersum.in del powersum.in >nul  
copy 18 powersum.in >nul 
powersum_pk  
IF errorlevel 1 (
  echo Test 18: 'powersum_pk ' returned non-zero exit code!
  goto error
)
copy powersum.out 18.a >nul 
validate 18 18.a 
IF errorlevel 1 (
  echo Test 18: 'validate 18 18.a' returned non-zero exit code!
  goto error
)
check 18 powersum.out 18.a 
IF errorlevel 1 (
  echo Test 18: 'check 18 powersum.out 18.a' returned non-zero exit code!
  goto error
)

echo Test 19 
IF EXIST powersum.out del powersum.out >nul  
IF EXIST powersum.in del powersum.in >nul  
copy 19 powersum.in >nul 
powersum_pk  
IF errorlevel 1 (
  echo Test 19: 'powersum_pk ' returned non-zero exit code!
  goto error
)
copy powersum.out 19.a >nul 
validate 19 19.a 
IF errorlevel 1 (
  echo Test 19: 'validate 19 19.a' returned non-zero exit code!
  goto error
)
check 19 powersum.out 19.a 
IF errorlevel 1 (
  echo Test 19: 'check 19 powersum.out 19.a' returned non-zero exit code!
  goto error
)

echo Test 20 
IF EXIST powersum.out del powersum.out >nul  
IF EXIST powersum.in del powersum.in >nul  
copy 20 powersum.in >nul 
powersum_pk  
IF errorlevel 1 (
  echo Test 20: 'powersum_pk ' returned non-zero exit code!
  goto error
)
copy powersum.out 20.a >nul 
validate 20 20.a 
IF errorlevel 1 (
  echo Test 20: 'validate 20 20.a' returned non-zero exit code!
  goto error
)
check 20 powersum.out 20.a 
IF errorlevel 1 (
  echo Test 20: 'check 20 powersum.out 20.a' returned non-zero exit code!
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
echo Problem built. 
cd .. 
goto end
:error
echo An error occured! Exiting
exit /b 1
:end
