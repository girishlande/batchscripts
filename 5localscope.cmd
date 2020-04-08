@echo off

goto :main

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
