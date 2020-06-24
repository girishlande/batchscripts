:: Script to check git status of all repositories 
:: This will tell us if we have uncommited changes in any of the repository 
@echo off

setlocal

:: get current directory where this script resides 
set back=%cd%
echo current directory is %back%
set dirpath=%cd%

:: Get parent of current directory 
for %%a in ("%dirpath%") do set "p_dir=%%~dpa"

echo parent directory is %p_dir%

::for %%a in (%p_dir:~0,-1%) do set "p2_dir=%%~dpa"
::echo Parent directory is %p2_dir%

echo All directories within this parent directory are 
for /d %%i in (%p_dir%*) do (
echo %%i
pushd %%i
git pull
popd
)
cd %back%