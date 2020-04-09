:: Script to check if file exists or not 
@echo off

if exist test.cmd echo "File exists" 

if exist test1.cmd (
	echo "File exists"
) else (
	echo "File does not exist"
)

:: script to check if variable is defined or not 
set str1=String1 
set str2=String2 

if defined str1 echo "Variable str1 is defined"

if defined str3 (echo "Variable str3 is defined") else (echo "Variable str3 is not defined")