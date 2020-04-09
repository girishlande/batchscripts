:: program to check whether input number is prime or not 
@echo off
setlocal enabledelayedexpansion

set /a n=0
if !n! == 0 (
  echo Matching
)

set /p num=Enter a number:  
echo you entered number is: %num%
set /a limit=%num%-1
for /L %%g in (2,1,!limit!) do (
  set /a r=!num! %% %%g
  if !r! == 0 goto :notprime
)

:prime
cls
color 02
echo number is prime
pause
color 07
cls
exit /b

:notprime
cls
color 04
echo number is not prime
pause
color 07
cls

