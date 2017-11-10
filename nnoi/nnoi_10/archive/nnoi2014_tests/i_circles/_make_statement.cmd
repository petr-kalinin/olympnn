@echo off
rem This file was automatically generated by daysper 
rem Please consider editing the original daysper script file(s) instead of this script 
IF EXIST _daysper.log del _daysper.log >nul  

echo =================================== 
echo Making statement for  ./i_circles (id circles) 
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
echo \input{../../_prologue.tex}\import{../statement/}{circles.tex}\end{document}  >circles_full.tex
latex circles_full 
IF errorlevel 1 echo 'latex circles_full' returned non-zero exit code >> ../_daysper.log
latex circles_full 
IF errorlevel 1 echo 'latex circles_full' returned non-zero exit code >> ../_daysper.log
dvips circles_full 
IF errorlevel 1 echo 'dvips circles_full' returned non-zero exit code >> ../_daysper.log
dvipdfmx circles_full 
IF errorlevel 1 echo 'dvipdfmx circles_full' returned non-zero exit code >> ../_daysper.log
mkdir ..\statement-ready 
copy circles_full.ps ..\statement-ready\circles_full.ps >nul 
copy circles_full.pdf ..\statement-ready\circles_full.pdf >nul 
cd .. 
echo Statement created. 
goto end
:error
echo An error occured! Exiting
exit /b 1
:end