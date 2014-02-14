@echo off
rem This file was automatically generated by daysper 
rem Please consider editing the original daysper script file(s) instead of this script 
IF EXIST _daysper.log del _daysper.log >nul  

echo =================================== 
echo Making statement for  ./c_pots (id pots) 
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
echo \input{../../_prologue.tex}\import{../statement/}{pots.tex}\end{document}  >pots_full.tex
latex pots_full 
IF errorlevel 1 echo 'latex pots_full' returned non-zero exit code >> ../_daysper.log
latex pots_full 
IF errorlevel 1 echo 'latex pots_full' returned non-zero exit code >> ../_daysper.log
dvips pots_full 
IF errorlevel 1 echo 'dvips pots_full' returned non-zero exit code >> ../_daysper.log
dvipdfmx pots_full 
IF errorlevel 1 echo 'dvipdfmx pots_full' returned non-zero exit code >> ../_daysper.log
mkdir ..\statement-ready 
copy pots_full.ps ..\statement-ready\pots_full.ps >nul 
copy pots_full.pdf ..\statement-ready\pots_full.pdf >nul 
cd .. 
echo Statement created. 
goto end
:error
echo An error occured! Exiting
exit /b 1
:end
