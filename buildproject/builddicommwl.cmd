pushd repos
pushd dicom_mwl
pushd build_%mode%

cmake ../source
cmake --build . --target ALL_BUILD --config %mode%
cmake --build . --target INSTALL --config %mode%

popd
popd
popd