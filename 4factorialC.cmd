:: script to iterate on all arguments of the command 
@echo off

:: read argument of the script (which is input number)
set arg=%1

:: check if argument is present 
if [%arg%] == [] (
  echo argument is not passed
  exit /b 
) 

:: convert argument to numberic value 
set /a n=%arg%
set /a fact=1

:: calculate factorial using loop 
:loop
 if %n% == 0 goto :last
 set /a fact=%fact% * %n%
 set /a n=%n% - 1
goto :loop

:last
echo factorial of number is: %fact% 
