pushd repos
pushd vtk

git clone --single-branch https://gitlab.kitware.com/vtk/vtk.git source

pushd build_release
cmake -DBUILD_SHARED_LIBS:BOOL=ON ../source
cmake --build . --target ALL_BUILD --config Release
cmake --build . --target INSTALL --config Release

popd
popd
popd