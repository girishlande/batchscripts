:: script to iterate on all arguments of the command and display them 
@echo off

set arg=%1
if [%arg%]==[] (
  echo Pass some arguments to script
  goto :eof
)

:loop
set arg=%1
if [%arg%] == [] 
  goto :eof

echo %arg%
shift

goto :loop

