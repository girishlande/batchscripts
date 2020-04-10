pushd repos
pushd pugixml 

git clone https://github.com/zeux/pugixml.git source

pushd build_%mode%
cmake ../source
cmake --build . --target ALL_BUILD --config %mode%
cmake --build . --target INSTALL --config %mode%

popd
popd
popd