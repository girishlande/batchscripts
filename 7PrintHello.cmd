:: script to print hello n times
@echo off

setlocal enabledelayedexpansion

set arg=%1

if "%arg%" == "" (
  echo argument is not passed
  exit /b 
) 

set /a n=%arg%

:loop
 if %n% == 0 goto :last
 echo "Hello"
 set /a n=%n% - 1
goto :loop

:last
 