:: script to print hello n times using loop 
@echo off

setlocal enabledelayedexpansion

set arg=%1

if [%arg%] == [] (
  echo Pass loop count 
  exit /b 
) 

set /a n=%arg%
set /a ncopy=%arg%

echo ------------------------
echo using goto and label  
echo ------------------------
:loop
 if %n% == 0 goto :last
 echo Hello
 set /a n-= 1
goto :loop

:last

:: Add empty line 
echo.
echo ------------------------
echo using for loop 
echo ------------------------
for /L %%g in (1,1,%ncopy%) do (
  echo Hello 
)

 