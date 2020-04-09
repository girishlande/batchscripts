:: script to display all files with given extension in current directory and their subdirectories
@echo off

setlocal

:: get directory path where this script is located 
set dirpath=%~dp0
echo current directory is = %dirpath%

setlocal
cd /d %~dp0

:: /R means recursive 
for /R "%dirpath%" %%I in ("*.cmd") do (
  echo "%%~fI" 
)