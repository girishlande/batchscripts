:: script to Check if input is prime number of not 

@echo off

:: enable delayed expansion which let us use variable value 
:: using !variable! syntax and this doesn't get 
:: evaluted till its use 
setlocal enabledelayedexpansion

:: get value of argument 
set arg=%1
if [%arg%] == [] (
  echo Argument is missing
  exit /b
)

set /a n=%arg%
set /a limit=%n%-1

:: for loop starting with 2 and incrementing by 1 Till we
:: reach till the limit 
for /L %%g in (2,1,!limit!) do (

  set /a r=!n! %% %%g
  if !r! == 0 goto :notprime
)

echo %arg% IS PRIME
goto :eof

:notprime
echo %arg% IS NOT PRIME
