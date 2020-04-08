:: script to iterate on all arguments of the command 
@echo off

echo "Hello "

:loop
set arg=%1
if "%arg%" == "" goto :last
echo %arg%
shift
goto :loop



:last
echo "done"