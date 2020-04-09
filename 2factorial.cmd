:: script to calculate factorial of a number 
@echo off

setlocal 
set /a fact = 1
set /p num=Enter a number:
echo you entered: %num%

:mloop
set /a fact=%fact% * %num%
set /a num=%num% - 1

IF %num% NEQ 1 (
  goto :mloop
)

echo factorial is: %fact%

endlocal

:: Learnings 

:: Do not use spacing while assigning values to variables
:: set /p num = Enter a number: is not correct
:: set /p num=Enter a number: is CORRECT 

:: use loops correctly 
:: declare loop using label :mylabel and goto that label 
:: using goto :mylabel

:: neg is used to check not equal to 