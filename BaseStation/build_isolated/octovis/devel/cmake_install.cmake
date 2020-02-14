# Install script for directory: /home/kalana/Xavier/BaseStation/src/octomap-devel/octovis

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/kalana/Xavier/BaseStation/devel_isolated/octovis")
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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/octovis" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/octovis")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/octovis"
         RPATH "/home/kalana/Xavier/BaseStation/devel_isolated/octovis/lib:/home/kalana/Xavier/BaseStation/devel_isolated/octomap/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/bin/octovis")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/octovis" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/octovis")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/octovis"
         OLD_RPATH "/home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/src/extern/QGLViewer:/home/kalana/Xavier/BaseStation/devel_isolated/octomap/lib:/home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/lib:"
         NEW_RPATH "/home/kalana/Xavier/BaseStation/devel_isolated/octovis/lib:/home/kalana/Xavier/BaseStation/devel_isolated/octomap/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/octovis")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/lib/liboctovis.a")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liboctovis.so.1.9.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liboctovis.so.1.9"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liboctovis.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "/home/kalana/Xavier/BaseStation/devel_isolated/octovis/lib:/home/kalana/Xavier/BaseStation/devel_isolated/octomap/lib")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/lib/liboctovis.so.1.9.0"
    "/home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/lib/liboctovis.so.1.9"
    "/home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/lib/liboctovis.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liboctovis.so.1.9.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liboctovis.so.1.9"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liboctovis.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/src/extern/QGLViewer:/home/kalana/Xavier/BaseStation/devel_isolated/octomap/lib:"
           NEW_RPATH "/home/kalana/Xavier/BaseStation/devel_isolated/octovis/lib:/home/kalana/Xavier/BaseStation/devel_isolated/octomap/lib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/octovis/octovis-targets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/octovis/octovis-targets.cmake"
         "/home/kalana/Xavier/BaseStation/build_isolated/octovis/devel/CMakeFiles/Export/share/octovis/octovis-targets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/octovis/octovis-targets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/octovis/octovis-targets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/octovis" TYPE FILE FILES "/home/kalana/Xavier/BaseStation/build_isolated/octovis/devel/CMakeFiles/Export/share/octovis/octovis-targets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/octovis" TYPE FILE FILES "/home/kalana/Xavier/BaseStation/build_isolated/octovis/devel/CMakeFiles/Export/share/octovis/octovis-targets-release.cmake")
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/octovis" TYPE FILE FILES
    "/home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/include/octovis/OcTreeRecord.h"
    "/home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/include/octovis/SelectionBox.h"
    "/home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/include/octovis/TrajectoryDrawer.h"
    "/home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/include/octovis/SceneObject.h"
    "/home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/include/octovis/PointcloudDrawer.h"
    "/home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/include/octovis/ColorOcTreeDrawer.h"
    "/home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/include/octovis/OcTreeDrawer.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/octovis" TYPE FILE FILES
    "/home/kalana/Xavier/BaseStation/build_isolated/octovis/devel/InstallFiles/octovis-config.cmake"
    "/home/kalana/Xavier/BaseStation/build_isolated/octovis/devel/InstallFiles/octovis-config-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/octovis" TYPE FILE FILES "/home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/package.xml")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/kalana/Xavier/BaseStation/build_isolated/octovis/devel/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
