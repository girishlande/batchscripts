:: script to check argument and set variable which decides mode of operation 
@echo off
setlocal 

set mode=release

set arg=%1
if [%arg%]==[] (
  echo pass argument for which build to create [debug / release]
  exit /b 0
) 

if [%arg%]==[debug] (
  set mode=debug
  goto :main
)

if [%arg%]==[release] (
  set mode=release
) else (
  echo only [debug/release] is valid mode 
  exit /b 0
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