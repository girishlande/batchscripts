@echo off
SET EXIT_CODE=0

echo Doing some business
echo.
echo Step 1...
if %ERRORLEVEL% NEQ 0 SET EXIT_CODE=%ERRORLEVEL%
echo.
:: some command 
echo.
echo Step 2...
if %ERRORLEVEL% NEQ 0 SET EXIT_CODE=%ERRORLEVEL%
echo.
echo Step 3 ...
xcopy .\Packages\abc.exe .\myfolder\ /D /V /Y /Q

exit /b %EXIT_CODE%
