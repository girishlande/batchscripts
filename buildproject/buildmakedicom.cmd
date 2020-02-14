pushd repos
pushd make_dicom 
pushd build_release

cmake ../source
cmake --build . --target ALL_BUILD --config Release
cmake --build . --target INSTALL --config Release

popd
popd
popd