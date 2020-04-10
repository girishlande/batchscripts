
set destdir=repos\vctgui\build_%mode%\%mode%
echo "Copying all dlls to destination directory:" %destdir%

robocopy /NFL /NDL /NJH /NJS /nc /ns /np C:\dev\Packages\hologic.qt.bin.5.12.2\bin\ %destdir% *.dll
robocopy /NFL /NDL /NJH /NJS /nc /ns /np /mir "C:\dev\Packages\hologic.qt.bin.5.12.2\plugins\platforms" %destdir%\platforms
robocopy /NFL /NDL /NJH /NJS /nc /ns /np /mir "C:\dev\Packages\hologic.qt.bin.5.12.2\plugins\sqldrivers" %destdir%\sqldrivers
robocopy /NFL /NDL /NJH /NJS /nc /ns /np "C:\Program Files (x86)\VTK\bin" %destdir% *.dll
robocopy /NFL /NDL /NJH /NJS /nc /ns /np "C:\Program Files (x86)\DCMTK\bin" %destdir% *.dll
robocopy /NFL /NDL /NJH /NJS /nc /ns /np "C:\Program Files (x86)\pugixml\bin" %destdir% *.dll
robocopy /NFL /NDL /NJH /NJS /nc /ns /np "C:\Faxitron" %destdir% *.*
robocopy /NFL /NDL /NJH /NJS /nc /ns /np "C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\Common7\IDE\Extensions\Microsoft\Python\Miniconda\Miniconda3-x64" %destdir% python37.dll
