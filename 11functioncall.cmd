:: demo of how to call function 
:: call keyword will call a function whereas goto will simply move execution to particular label
:: call keyword will get function execution back to the point using :eof
@echo off
goto :main

:function1 
echo function 1 called 
echo function argument is %~1
exit /b 0

:function2
echo function 2 called
echo function argument is %~1
goto :eof

:main
echo main function start
call :function1 Girish 
call :function2 Ajit Lande
echo main function end
