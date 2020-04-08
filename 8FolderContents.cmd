@echo off

setlocal
set dirpath=%~dp0
echo current directory is = %dirpath%

setlocal
cd /d %~dp0

for /R "%dirpath%" %%I in ("*.cmd") do (
  echo "%%~fI" 
)