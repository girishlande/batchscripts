:: script to iterate on all arguments of the command 
@echo off

set num=%1
if "%num%" == "" (
echo argument is not passed
exit /b
)

set /a n=%num%
echo input number is %n%
set /a r=%n% %% 2
echo remainder is %r%
if %r% == 0 (
  echo           ------------------NUMBER IS EVEN
) else (
  echo           ------------------NUMBER IS ODD
)