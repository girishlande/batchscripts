:: script to check argument and set variable which decides mode of operation 
@echo off
setlocal 

set mode=release

set arg=%1
if [%arg%]==[] (
  echo Argument is not passed, using default mode: %mode%  
  goto :main
) 

:checkmode
if [%arg%]==[debug] set mode=debug

if [%arg%]==[release] (
  set mode=release
) else (
  echo use only debug or release as argument
)


:main
 
echo current mode: %mode%
call ta.cmd

endlocal