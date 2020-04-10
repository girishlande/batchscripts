@echo off

setlocal
set dirpath=%~dp0/libs
echo current directory is = %dirpath%

setlocal
cd /d %~dp0

for /R "%dirpath%" %%I in ("*.zip") do (
  "%ProgramFiles%\7-Zip\7z.exe" x -y -o"%%~dpnI" "%%~fI" 
)