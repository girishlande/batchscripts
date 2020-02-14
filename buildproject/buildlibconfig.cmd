pushd repos
pushd libconfig 
git clone https://github.com/hyperrealm/libconfig.git source
pushd build_release
cmake -DBUILD_EXAMPLES:BOOL=OFF -DBUILD_TESTS:BOOL=OFF ../source
cmake --build . --target ALL_BUILD --config Release
cmake --build . --target INSTALL --config Release
popd
popd
popd