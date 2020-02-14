# It defines the following variables
#  OCTOVIS_INCLUDE_DIRS  - include directories for OctoMap viewer
#  OCTOVIS_LIBRARY_DIRS  - library directories for OctoMap viewer
#  OCTOVIS_LIBRARIES     - libraries to link against
#  OCTOVIS_MAJOR_VERSION - major version
#  OCTOVIS_MINOR_VERSION - minor version
#  OCTOVIS_PATCH_VERSION - patch version
#  OCTOVIS_VERSION       - major.minor.patch version


####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was octovis-config.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

macro(check_required_components _NAME)
  foreach(comp ${${_NAME}_FIND_COMPONENTS})
    if(NOT ${_NAME}_${comp}_FOUND)
      if(${_NAME}_FIND_REQUIRED_${comp})
        set(${_NAME}_FOUND FALSE)
      endif()
    endif()
  endforeach()
endmacro()

####################################################################################

set(OCTOVIS_MAJOR_VERSION "1")
set(OCTOVIS_MINOR_VERSION "9")
set(OCTOVIS_PATCH_VERSION "0")
set(OCTOVIS_VERSION "1.9.0")

set_and_check(OCTOVIS_INCLUDE_DIRS "${PACKAGE_PREFIX_DIR}/include" "/home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/src/extern/QGLViewer")
set_and_check(OCTOVIS_LIBRARY_DIRS "${PACKAGE_PREFIX_DIR}/lib" "/home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/src/extern/QGLViewer")

# Set library names as absolute paths:
set(OCTOVIS_LIBRARIES
  "QGLViewer"
  "optimized;/usr/lib/x86_64-linux-gnu/libQtOpenGL.so;debug;/usr/lib/x86_64-linux-gnu/libQtOpenGL.so;optimized;/usr/lib/x86_64-linux-gnu/libQtGui.so;debug;/usr/lib/x86_64-linux-gnu/libQtGui.so;optimized;/usr/lib/x86_64-linux-gnu/libQtXml.so;debug;/usr/lib/x86_64-linux-gnu/libQtXml.so;optimized;/usr/lib/x86_64-linux-gnu/libQtCore.so;debug;/usr/lib/x86_64-linux-gnu/libQtCore.so"
  "${PACKAGE_PREFIX_DIR}/lib/liboctovis.so"
)

include(${CMAKE_CURRENT_LIST_DIR}/octovis-targets.cmake)
