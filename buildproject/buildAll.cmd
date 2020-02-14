@echo off

:: Precondition 7zip is installed on your machine
IF EXIST "%ProgramFiles%\7-Zip\7z.exe"  goto :startprocess

echo "script expects 7zip to be installed"
exit /b 0

:startprocess

set startime=%date% %time%
echo Started: %date% %time%

:: unzip all files
call unzipAll.cmd

:: create folder structure tree structure
set vctcore=%~dp0
call createtree.cmd

:: copy source code
call copysourcecode.cmd

call buildlibconfig.cmd

call buildlibpeq.cmd

call builddcmtk.cmd

call buildsenddicom.cmd

call buildmakedicom.cmd

call buildpugixml.cmd

call builddicommwl.cmd

call buildjson.cmd

call buildvctgui.cmd

echo Started: %starttime%
echo Completed: %date% %time%

exit /b
