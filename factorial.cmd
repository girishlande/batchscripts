:: script to calculate factorial of a number 
@echo off
set /a fact=1
set /p num=Enter a number:
echo you entered: %num%

:mloop
set /a fact=%fact% * %num%
set /a num=%num% - 1

IF "%num%" NEQ "1" (
  goto :mloop
)

echo factorial is: %fact%