# Install script for directory: /home/kalana/Xavier/Robot/src/octomap/octomap

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/kalana/Xavier/Robot/devel_isolated/octomap")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/octomap" TYPE FILE FILES
    "/home/kalana/Xavier/Robot/src/octomap/octomap/include/octomap/Pointcloud.h"
    "/home/kalana/Xavier/Robot/src/octomap/octomap/include/octomap/octomap_timing.h"
    "/home/kalana/Xavier/Robot/src/octomap/octomap/include/octomap/AbstractOccupancyOcTree.h"
    "/home/kalana/Xavier/Robot/src/octomap/octomap/include/octomap/OccupancyOcTreeBase.h"
    "/home/kalana/Xavier/Robot/src/octomap/octomap/include/octomap/MapCollection.h"
    "/home/kalana/Xavier/Robot/src/octomap/octomap/include/octomap/OcTreeNode.h"
    "/home/kalana/Xavier/Robot/src/octomap/octomap/include/octomap/ScanGraph.h"
    "/home/kalana/Xavier/Robot/src/octomap/octomap/include/octomap/octomap_deprecated.h"
    "/home/kalana/Xavier/Robot/src/octomap/octomap/include/octomap/OcTreeBase.h"
    "/home/kalana/Xavier/Robot/src/octomap/octomap/include/octomap/OcTreeKey.h"
    "/home/kalana/Xavier/Robot/src/octomap/octomap/include/octomap/OcTreeStamped.h"
    "/home/kalana/Xavier/Robot/src/octomap/octomap/include/octomap/OcTreeBaseImpl.h"
    "/home/kalana/Xavier/Robot/src/octomap/octomap/include/octomap/octomap_types.h"
    "/home/kalana/Xavier/Robot/src/octomap/octomap/include/octomap/AbstractOcTree.h"
    "/home/kalana/Xavier/Robot/src/octomap/octomap/include/octomap/CountingOcTree.h"
    "/home/kalana/Xavier/Robot/src/octomap/octomap/include/octomap/MCTables.h"
    "/home/kalana/Xavier/Robot/src/octomap/octomap/include/octomap/OcTreeDataNode.h"
    "/home/kalana/Xavier/Robot/src/octomap/octomap/include/octomap/octomap_utils.h"
    "/home/kalana/Xavier/Robot/src/octomap/octomap/include/octomap/MapNode.h"
    "/home/kalana/Xavier/Robot/src/octomap/octomap/include/octomap/OcTree.h"
    "/home/kalana/Xavier/Robot/src/octomap/octomap/include/octomap/ColorOcTree.h"
    "/home/kalana/Xavier/Robot/src/octomap/octomap/include/octomap/octomap.h"
    "/home/kalana/Xavier/Robot/src/octomap/octomap/include/octomap/OcTreeBaseImpl.hxx"
    "/home/kalana/Xavier/Robot/src/octomap/octomap/include/octomap/OccupancyOcTreeBase.hxx"
    "/home/kalana/Xavier/Robot/src/octomap/octomap/include/octomap/MapCollection.hxx"
    "/home/kalana/Xavier/Robot/src/octomap/octomap/include/octomap/OcTreeIterator.hxx"
    "/home/kalana/Xavier/Robot/src/octomap/octomap/include/octomap/MapNode.hxx"
    "/home/kalana/Xavier/Robot/src/octomap/octomap/include/octomap/OcTreeDataNode.hxx"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/octomap/math" TYPE FILE FILES
    "/home/kalana/Xavier/Robot/src/octomap/octomap/include/octomap/math/Pose6D.h"
    "/home/kalana/Xavier/Robot/src/octomap/octomap/include/octomap/math/Utils.h"
    "/home/kalana/Xavier/Robot/src/octomap/octomap/include/octomap/math/Quaternion.h"
    "/home/kalana/Xavier/Robot/src/octomap/octomap/include/octomap/math/Vector3.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/octomap" TYPE FILE FILES "/home/kalana/Xavier/Robot/src/octomap/octomap/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/octomap" TYPE FILE FILES
    "/home/kalana/Xavier/Robot/build_isolated/octomap/devel/InstallFiles/octomap-config.cmake"
    "/home/kalana/Xavier/Robot/build_isolated/octomap/devel/InstallFiles/octomap-config-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/kalana/Xavier/Robot/build_isolated/octomap/devel/lib/pkgconfig/octomap.pc")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/kalana/Xavier/Robot/build_isolated/octomap/devel/src/math/cmake_install.cmake")
  include("/home/kalana/Xavier/Robot/build_isolated/octomap/devel/src/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/kalana/Xavier/Robot/build_isolated/octomap/devel/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
