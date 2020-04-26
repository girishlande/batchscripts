:: script to display all siblings folders of parent folder 
:: and perform git pull in all of them 
@echo off

setlocal

:: get current directory where this script resides 
set back=%cd%
echo current directory is %back%

:: Get parent of current directory 
for %%a in ("%dirpath%") do set "p_dir=%%~dpa"
for %%a in (%p_dir:~0,-1%) do set "p2_dir=%%~dpa"
echo Parent directory is %p2_dir%

echo All directories within this parent directory are 
for /d %%i in (%p2_dir%*) do (
echo %%i
pushd %%i
git pull
popd
)
cd %back%