:: Script to rename folders by using index 
:: how to use?
:: copy this script in parent folder 
:: Give folder name as input argument in which you want to rename all folders with index 

@echo off
setlocal enableDelayedExpansion

set arg=%1
if [%arg%]==[] (
  echo Argument should be folder name where you want to rename files with index
  goto :eof
)

if exist %arg% (
  echo Input folder exists
) else (
  echo Input folder does not exist
  goto :eof
)

pushd %arg%

:: Iterate on all folders in given folder and rename them with index 
set /a count=1
for /d %%D in (*) do (
  echo %%~fD
  set "name=%%D"
  ren "!name!" "!count!!name!"
  echo !name!
  set /a count+=1
)

popd

