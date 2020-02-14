# Install script for directory: /home/kalana/Xavier/BaseStation/src/octomap-devel/dynamicEDT3D/src

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
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdynamicedt3d.so.1.9.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdynamicedt3d.so.1.9"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdynamicedt3d.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "/home/kalana/Xavier/BaseStation/devel_isolated/dynamic_edt_3d/lib:/home/kalana/Xavier/BaseStation/devel_isolated/octomap/lib")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/kalana/Xavier/BaseStation/src/octomap-devel/dynamicEDT3D/lib/libdynamicedt3d.so.1.9.0"
    "/home/kalana/Xavier/BaseStation/src/octomap-devel/dynamicEDT3D/lib/libdynamicedt3d.so.1.9"
    "/home/kalana/Xavier/BaseStation/src/octomap-devel/dynamicEDT3D/lib/libdynamicedt3d.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdynamicedt3d.so.1.9.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdynamicedt3d.so.1.9"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdynamicedt3d.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/kalana/Xavier/BaseStation/src/octomap-devel/dynamicEDT3D/lib:/home/kalana/Xavier/BaseStation/devel_isolated/octomap/lib:"
           NEW_RPATH "/home/kalana/Xavier/BaseStation/devel_isolated/dynamic_edt_3d/lib:/home/kalana/Xavier/BaseStation/devel_isolated/octomap/lib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/kalana/Xavier/BaseStation/src/octomap-devel/dynamicEDT3D/lib/libdynamicedt3d.a")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/dynamicEDT3D/dynamicEDT3DTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/dynamicEDT3D/dynamicEDT3DTargets.cmake"
         "/home/kalana/Xavier/BaseStation/build_isolated/dynamic_edt_3d/devel/src/CMakeFiles/Export/share/dynamicEDT3D/dynamicEDT3DTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/dynamicEDT3D/dynamicEDT3DTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/dynamicEDT3D/dynamicEDT3DTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dynamicEDT3D" TYPE FILE FILES "/home/kalana/Xavier/BaseStation/build_isolated/dynamic_edt_3d/devel/src/CMakeFiles/Export/share/dynamicEDT3D/dynamicEDT3DTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dynamicEDT3D" TYPE FILE FILES "/home/kalana/Xavier/BaseStation/build_isolated/dynamic_edt_3d/devel/src/CMakeFiles/Export/share/dynamicEDT3D/dynamicEDT3DTargets-release.cmake")
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/kalana/Xavier/BaseStation/build_isolated/dynamic_edt_3d/devel/src/examples/cmake_install.cmake")

endif()

