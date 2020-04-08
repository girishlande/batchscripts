:: script to iterate on all arguments of the command 
@echo off

set arg=%1

if "%arg%" == "" (
  echo argument is not passed
  exit /b 
) 

set /a n=%arg%
set /a fact=1

:loop
 if %n% == 0 goto :last
 set /a fact=%fact% * %n%
 set /a n=%n% - 1
goto :loop

:last
echo factorial of number is: %fact% 
