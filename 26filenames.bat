@echo off 
dir /s /b /a-d >list1.txt

for /f "tokens=*" %%A in (list1.txt) do echo %%~nxA >> filelist.txt

del list1.txt