:: Script to rename files by using index 
:: Copy this script in folder where you want to perform renaming
:: Rename .txt 2 places with extension that you want to to . Note it simply renames to count 
@echo off
setlocal enableDelayedExpansion

set /a count=1
for %%F in (*.txt) do (
  set "name=%%F"
  ren "!name!" "!count!.txt"
  echo !name!
  set /a count+=1
)