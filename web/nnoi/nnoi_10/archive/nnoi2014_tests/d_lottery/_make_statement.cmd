@echo off
rem This file was automatically generated by daysper 
rem Please consider editing the original daysper script file(s) instead of this script 
IF EXIST _daysper.log del _daysper.log >nul  

echo =================================== 
echo Making statement for  ./d_lottery (id lottery) 
echo =================================== 
call _generate_examples.cmd  
IF errorlevel 1 (
  echo '_generate_examples.cmd' returned non-zero exit code!
  goto error
)
IF EXIST work rmdir /q /s work 
IF EXIST statement-ready rmdir /q /s statement-ready 
mkdir work 
cd work 
echo \input{../../_prologue.tex}\import{../statement/}{lottery.tex}\end{document}  >lottery_full.tex
latex lottery_full 
IF errorlevel 1 echo 'latex lottery_full' returned non-zero exit code >> ../_daysper.log
latex lottery_full 
IF errorlevel 1 echo 'latex lottery_full' returned non-zero exit code >> ../_daysper.log
dvips lottery_full 
IF errorlevel 1 echo 'dvips lottery_full' returned non-zero exit code >> ../_daysper.log
dvipdfmx lottery_full 
IF errorlevel 1 echo 'dvipdfmx lottery_full' returned non-zero exit code >> ../_daysper.log
mkdir ..\statement-ready 
copy lottery_full.ps ..\statement-ready\lottery_full.ps >nul 
copy lottery_full.pdf ..\statement-ready\lottery_full.pdf >nul 
cd .. 
echo Statement created. 
goto end
:error
echo An error occured! Exiting
exit /b 1
:end
