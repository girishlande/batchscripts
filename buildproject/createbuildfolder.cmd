set dirname=%1

mkdir %dirname%
pushd %dirname%
mkdir source
mkdir build_%mode%
popd
