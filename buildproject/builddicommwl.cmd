pushd repos
pushd dicom_mwl
pushd build_release

cmake ../source
cmake --build . --target ALL_BUILD --config Release
cmake --build . --target INSTALL --config Release

popd
popd
popd