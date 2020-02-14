# Install script for directory: /home/kalana/Xavier/BaseStation/src/octomap-devel/dynamicEDT3D

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/kalana/Xavier/BaseStation/devel_isolated/dynamic_edt_3d")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dynamicEDT3D" TYPE FILE FILES
    "/home/kalana/Xavier/BaseStation/src/octomap-devel/dynamicEDT3D/include/dynamicEDT3D/point.h"
    "/home/kalana/Xavier/BaseStation/src/octomap-devel/dynamicEDT3D/include/dynamicEDT3D/bucketedqueue.h"
    "/home/kalana/Xavier/BaseStation/src/octomap-devel/dynamicEDT3D/include/dynamicEDT3D/dynamicEDTOctomap.h"
    "/home/kalana/Xavier/BaseStation/src/octomap-devel/dynamicEDT3D/include/dynamicEDT3D/dynamicEDT3D.h"
    "/home/kalana/Xavier/BaseStation/src/octomap-devel/dynamicEDT3D/include/dynamicEDT3D/bucketedqueue.hxx"
    "/home/kalana/Xavier/BaseStation/src/octomap-devel/dynamicEDT3D/include/dynamicEDT3D/dynamicEDTOctomap.hxx"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dynamic_edt_3d" TYPE FILE FILES "/home/kalana/Xavier/BaseStation/src/octomap-devel/dynamicEDT3D/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dynamicEDT3D" TYPE FILE FILES
    "/home/kalana/Xavier/BaseStation/build_isolated/dynamic_edt_3d/devel/InstallFiles/dynamicEDT3DConfig.cmake"
    "/home/kalana/Xavier/BaseStation/build_isolated/dynamic_edt_3d/devel/InstallFiles/dynamicEDT3DConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/kalana/Xavier/BaseStation/build_isolated/dynamic_edt_3d/devel/lib/pkgconfig/dynamicEDT3D.pc")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/kalana/Xavier/BaseStation/build_isolated/dynamic_edt_3d/devel/src/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/kalana/Xavier/BaseStation/build_isolated/dynamic_edt_3d/devel/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
