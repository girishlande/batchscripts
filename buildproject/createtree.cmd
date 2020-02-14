mkdir repos
pushd repos

call %vctcore%/createbuildfolder.cmd dicom_mwl
call %vctcore%/createbuildfolder.cmd dicom_send
call %vctcore%/createbuildfolder.cmd json
call %vctcore%/createbuildfolder.cmd libconfig
call %vctcore%/createbuildfolder.cmd libpeq
call %vctcore%/createbuildfolder.cmd make_dicom
call %vctcore%/createbuildfolder.cmd pugixml
call %vctcore%/createbuildfolder.cmd vctgui
call %vctcore%/createbuildfolder.cmd vtk
call %vctcore%/createbuildfolder.cmd dcmtk

popd