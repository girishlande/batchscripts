#Dont use net use command as it has some problems 
@echo off

setlocal 

net use O: \\plm\pnnas\ugdev
net use R: \\plm\pnnas\release
net use S: \\plm\pnnas\ugmenu

endlocal 