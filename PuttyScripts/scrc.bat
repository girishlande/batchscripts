@echo off

start putty.exe 192.168.60.201 -l vctuser -pw password -m "d:\analogic\sccmd.txt" -t

start putty.exe 192.168.60.201 -l vctuser -pw password -m "d:\analogic\rccmd.txt" -t
