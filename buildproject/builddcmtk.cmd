pushd repos
pushd dcmtk

git clone https://github.com/DCMTK/dcmtk.git source
pushd source
git checkout tags/DCMTK-3.6.4 -b DCMTK-3.6.4
popd

pushd build_%mode%
cmake -DBUILD_SHARED_LIBS:BOOL=ON ../source
cmake --build . --target ALL_BUILD --config %mode%
cmake --build . --target INSTALL --config %mode%

popd
popd
popd