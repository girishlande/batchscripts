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
if [%arg%]==[debug] (
  set mode=debug
  goto :main
)

if [%arg%]==[release] (
  set mode=release
) else (
  echo use only debug or release as argument
)


:main
 
echo current mode: %mode%
mkdir build_%mode%
pushd build_%mode%
echo inside build directory
dir > log.txt
popd
call ta.cmd

endlocal