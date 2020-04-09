:: script to check whether input number is even or odd
@echo off

setlocal 

set /p num=Enter a number:
echo you entered: %num%
set /a ans=%num% %% 2

IF %ans% == 0 (
  echo %num% is Even Number 
) ELSE (
  echo %num% is Odd number 
)

endlocal

:: @echo off is used to stop displaying commands in output

:: set /p i used to prompt user for input

:: set /a is used to treat variable / operation as numeric

:: setlocal is used so that variables declared in script 
:: are not accessed outside script 