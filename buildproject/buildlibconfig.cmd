pushd repos
pushd libconfig 

git clone https://github.com/hyperrealm/libconfig.git source

pushd build_%mode%
cmake -DBUILD_EXAMPLES:BOOL=OFF -DBUILD_TESTS:BOOL=OFF ../source
cmake --build . --target ALL_BUILD --config %mode%
cmake --build . --target INSTALL --config %mode%

popd
popd
popd