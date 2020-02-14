pushd repos
pushd json
 
git clone https://github.com/nlohmann/json.git source

pushd build_release

cmake ../source
cmake --build . --target ALL_BUILD --config Release
cmake --build . --target INSTALL --config Release
popd
popd
popd