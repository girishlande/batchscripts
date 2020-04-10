@echo off
for %%i in (%mydir%/libs/*.zip) do robocopy /NFL /NDL /NJH /NJS /nc /ns /np /mir libs/%%~ni repos/%%~ni/source

