:: script to check whether input number is even or odd
@echo off
set /p num=Enter a number:
echo you entered: %num%
set /a ans=%num% %% 2

set /a aa=2
IF "%ans%" == "0" (
  echo "Even number"
) ELSE (
  echo "Odd number"
)

