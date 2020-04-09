:: script shows use of setlocal to create local variables 
:: which are visible in children but not in parent 

:: turn of display oc commands in script on console 
@echo off

:: jump to execution of main function 
goto :main

:: local function 
:func
setlocal
echo func says x: %x%
set y=20
echo func says y: %y%
endlocal
goto :eof

:main
setlocal 
	set x=10
	echo main says x:%x%
	call :func
	echo main says y:%y%
endlocal
goto :eof
