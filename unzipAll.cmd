setlocal
set dirpath=%~dp0
echo current directory is = %dirpath%

@echo off
setlocal
cd /d %~dp0

for /R "%dirpath%" %%I in ("*.zip") do (
  "%ProgramFiles%\7-Zip\7z.exe" x -y -o"%%~dpnI" "%%~fI" 
)