:: script to iterate on all arguments of the command 
@echo off
setlocal enabledelayedexpansion

set arg=%1
if "%arg%" == "" (
  echo Argument is missing
  exit /b
)

set /a n=%arg%
set /a limit=%n%-1

for /L %%g in (2,1,!limit!) do (

set /a r=!n! %% %%g
if !r! == 0 goto :notprime
)

echo %arg% IS PRIME
goto :eof


:notprime
echo %arg% IS NOT PRIME
