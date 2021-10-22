cmake_minimum_required(VERSION 3.14.5)
project(Prima)

include("./Build/cmake/paths.cmake")

set(CMAKE_CONFIGURATION_TYPES Debug Release CACHE STRING INTERNAL FORCE)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_DEBUG "${DIST_PATH}/Debug")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELEASE "${DIST_PATH}/Release")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_DEBUG "${DIST_PATH}/Debug")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_RELEASE "${DIST_PATH}/Release")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_DEBUG "${DIST_PATH}/Debug")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_RELEASE "${DIST_PATH}/Release")

set_property(GLOBAL PROPERTY USE_FOLDERS ON)

set(FILES_TO_TRANSLATE)

# with cmake >= 2.8.4 a manually specified variable which is not used will produces a warning.
# However, we do not want this warning for the variable QT_QMAKE_EXECUTABLE.
set(__suppress_unused_warning_for_QT_QMAKE_EXECUTABLE_var "${QT_QMAKE_EXECUTABLE}")

include(FeatureSummary)
include(GenerateExportHeader)
include("${NUGET_PACKAGE_PATH}/Packages.cmake") # do not use add_subdirectory as this prevents settings from "bubbling up"
include("${BACKEND_PROJECTS_PATH}/Common/LaurelBridgeLogAdapter/LaurelBridgeLogAdapter.cmake") # do not use add_subdirectory as this prevents settings from "bubbling up"
include("${BACKEND_PROJECTS_PATH}/Common/IGittCodecAdapter/IGittCodecAdapter.cmake") # do not use add_subdirectory as this prevents settings from "bubbling up"
include("./Build/cmake/plugin.cmake")
include("./Build/cmake/clr.cmake")
include("./Build/cmake/create.cmake")
include("./Build/cmake/EvResources.cmake")
include("./Build/cmake/EvCreateQmldir.cmake")

string(REPLACE "/EHsc" "/EHa" CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS})
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /WX /we4062 /wd4267 /wd26444 /std:c++17")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} /Zi")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /WX")
set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} /WX")

set(CMAKE_SHARED_LINKER_FLAGS_RELEASE "${CMAKE_SHARED_LINKER_FLAGS_RELEASE} /DEBUG /OPT:REF /OPT:ICF")
set(CMAKE_EXE_LINKER_FLAGS_RELEASE "${CMAKE_EXE_LINKER_FLAGS_RELEASE} /DEBUG /OPT:REF /OPT:ICF")

# TODO
#add_definitions("-DQT_DISABLE_DEPRECATED_BEFORE=0x050000")
#add_definitions("-DQT_USE_QSTRINGBUILDER")

include_directories(${VERSION_FILE_DIRECTORY})
add_subdirectory(Sources)
add_subdirectory(i18ndemo)

# This add_subdirectory call must be below all other add_subdirectory calls!
add_subdirectory(Translations)

set_property(DIRECTORY PROPERTY VS_STARTUP_PROJECT "Main")
set(QML_IMPORT_PATH "${CMAKE_CURRENT_SOURCE_DIR}/Sources" CACHE STRING "Qt Creator 4.1 extra qml import paths")

feature_summary(WHAT ALL)
