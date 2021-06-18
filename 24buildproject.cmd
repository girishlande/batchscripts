@echo off

setlocal 

mkdir build
pushd build

cmake ../source
cmake --build . --target ALL_BUILD --config debug

popd

endlocal 