@echo off
rem This file was automatically generated by daysper 
rem Please consider editing the original daysper script file(s) instead of this script 
IF EXIST _daysper.log del _daysper.log >nul  

cd a_classics 
call _generate.cmd  
IF errorlevel 1 (
  echo Problem a_classics: '_generate.cmd' returned non-zero exit code!
  goto error
)
IF EXIST _daysper.log (
 echo Dir ./a_classics >> ..\_daysper.log 
type _daysper.log >> ..\_daysper.log
)
cd .. 

cd b_happy 
call _generate.cmd  
IF errorlevel 1 (
  echo Problem b_happy: '_generate.cmd' returned non-zero exit code!
  goto error
)
IF EXIST _daysper.log (
 echo Dir ./b_happy >> ..\_daysper.log 
type _daysper.log >> ..\_daysper.log
)
cd .. 

cd c_pots 
call _generate.cmd  
IF errorlevel 1 (
  echo Problem c_pots: '_generate.cmd' returned non-zero exit code!
  goto error
)
IF EXIST _daysper.log (
 echo Dir ./c_pots >> ..\_daysper.log 
type _daysper.log >> ..\_daysper.log
)
cd .. 

cd d_lottery 
call _generate.cmd  
IF errorlevel 1 (
  echo Problem d_lottery: '_generate.cmd' returned non-zero exit code!
  goto error
)
IF EXIST _daysper.log (
 echo Dir ./d_lottery >> ..\_daysper.log 
type _daysper.log >> ..\_daysper.log
)
cd .. 

cd e_trains 
call _generate.cmd  
IF errorlevel 1 (
  echo Problem e_trains: '_generate.cmd' returned non-zero exit code!
  goto error
)
IF EXIST _daysper.log (
 echo Dir ./e_trains >> ..\_daysper.log 
type _daysper.log >> ..\_daysper.log
)
cd .. 

cd g_powersum 
call _generate.cmd  
IF errorlevel 1 (
  echo Problem g_powersum: '_generate.cmd' returned non-zero exit code!
  goto error
)
IF EXIST _daysper.log (
 echo Dir ./g_powersum >> ..\_daysper.log 
type _daysper.log >> ..\_daysper.log
)
cd .. 

cd i_circles 
call _generate.cmd  
IF errorlevel 1 (
  echo Problem i_circles: '_generate.cmd' returned non-zero exit code!
  goto error
)
IF EXIST _daysper.log (
 echo Dir ./i_circles >> ..\_daysper.log 
type _daysper.log >> ..\_daysper.log
)
cd .. 

goto end
:error
echo An error occured! Exiting
exit /b 1
:end