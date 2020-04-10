@echo off

::iterate on all files in /libs folder and create folder for them in repos folder.
set mydir=%~dp0

mkdir repos
pushd repos

for %%i in (%mydir%/libs/*.zip) do call %mydir%/createbuildfolder.cmd %%~ni


call %mydir%/createbuildfolder.cmd dcmtk
call %mydir%/createbuildfolder.cmd json
call %mydir%/createbuildfolder.cmd libconfig
call %mydir%/createbuildfolder.cmd pugixml


popd