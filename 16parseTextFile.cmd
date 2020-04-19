:: Script to read file and use words present in it to display something useful
:: You can use it like $parseTextFile.cmd > output.txt
@echo off

for /f "tokens=*" %%a in (temp.txt) do (

  echo add_executable(%%~na %%a ^)^

)

echo.

for /f "tokens=*" %%a in (temp.txt) do (

  echo target_link_libraries(%%~na  PUBLIC ${VTK_LIBRARIES}  ^)^

)
