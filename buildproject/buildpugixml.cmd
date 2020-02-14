pushd repos
pushd pugixml 

git clone https://github.com/zeux/pugixml.git source

pushd build_release
cmake ../source
cmake --build . --target ALL_BUILD --config Release
cmake --build . --target INSTALL --config Release

popd
popd
popd