:: Script to rename files by using index 
@echo off
setlocal enableDelayedExpansion

set /a count=1
for %%F in (*.txt) do (
  set "name=%%F"
  ren "!name!" "!count!!name!"
  echo !name!
  set /a count+=1
)