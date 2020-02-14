:: Copy main project source
robocopy /NFL /NDL /NJH /NJS /nc /ns /np /mir src-vctgui-mainline@2d7accf15f6 repos/vctgui/source

:: copy other libs 
robocopy /NFL /NDL /NJH /NJS /nc /ns /np /mir libs/libs/dicom_mwl-mainline@4eb06d3ebf3 repos/dicom_mwl/source
robocopy /NFL /NDL /NJH /NJS /nc /ns /np /mir libs/libs/dicom_send-master@2dbb9623665 repos/dicom_send/source
robocopy /NFL /NDL /NJH /NJS /nc /ns /np /mir libs/libs/libpeq-mainline@921102f9f51 repos/libpeq/source
robocopy /NFL /NDL /NJH /NJS /nc /ns /np /mir libs/libs/make_dicom-mainline@7383b9eead1 repos/make_dicom/source