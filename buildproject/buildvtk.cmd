pushd repos
pushd vtk

git clone --single-branch https://gitlab.kitware.com/vtk/vtk.git source

pushd build_%mode%
cmake -DBUILD_SHARED_LIBS:BOOL=ON -DVTK_QT_VERSION:STRING=5 -DCMAKE_PREFIX_PATH:PATH=<Path to Qt5 install>/lib/cmake/ -DModule_vtkGUISupportQt:BOOL=ON -DVTK_DEBUG_LEAKS:BOOL=ON -DBUILD_TESTING:BOOL=OFF -DCMAKE_BUILD_TYPE=%mode% ../source

cmake --build . --target ALL_BUILD --config %mode%
cmake --build . --target INSTALL --config %mode%

popd
popd
popd