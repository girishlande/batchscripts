
set destdir=repos\vctgui\build_release\Release
echo "Copying all dlls to destination directory:" %destdir%

robocopy /NFL /NDL /NJH /NJS /nc /ns /np C:\dev\Packages\qt.bin.5.12.2\bin\ %destdir% *.dll
robocopy /NFL /NDL /NJH /NJS /nc /ns /np /mir "C:\dev\Packages\qt.bin.5.12.2\plugins\platforms" %destdir%\platforms
robocopy /NFL /NDL /NJH /NJS /nc /ns /np "C:\Program Files (x86)\VTK\bin" %destdir% *.dll
robocopy /NFL /NDL /NJH /NJS /nc /ns /np "C:\Program Files (x86)\DCMTK\bin" %destdir% *.dll
robocopy /NFL /NDL /NJH /NJS /nc /ns /np "C:\Program Files (x86)\pugixml\bin" %destdir% *.dll
robocopy /NFL /NDL /NJH /NJS /nc /ns /np "C:\Faxitron" %destdir% *.*

