# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kalana/Xavier/BaseStation/src/octomap-devel/octovis

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kalana/Xavier/BaseStation/build_isolated/octovis/devel

# Include any dependencies generated for this target.
include CMakeFiles/octovis-shared.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/octovis-shared.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/octovis-shared.dir/flags.make

CMakeFiles/octovis-shared.dir/src/SceneObject.cpp.o: CMakeFiles/octovis-shared.dir/flags.make
CMakeFiles/octovis-shared.dir/src/SceneObject.cpp.o: /home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/src/SceneObject.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kalana/Xavier/BaseStation/build_isolated/octovis/devel/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/octovis-shared.dir/src/SceneObject.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/octovis-shared.dir/src/SceneObject.cpp.o -c /home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/src/SceneObject.cpp

CMakeFiles/octovis-shared.dir/src/SceneObject.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/octovis-shared.dir/src/SceneObject.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/src/SceneObject.cpp > CMakeFiles/octovis-shared.dir/src/SceneObject.cpp.i

CMakeFiles/octovis-shared.dir/src/SceneObject.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/octovis-shared.dir/src/SceneObject.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/src/SceneObject.cpp -o CMakeFiles/octovis-shared.dir/src/SceneObject.cpp.s

CMakeFiles/octovis-shared.dir/src/SceneObject.cpp.o.requires:

.PHONY : CMakeFiles/octovis-shared.dir/src/SceneObject.cpp.o.requires

CMakeFiles/octovis-shared.dir/src/SceneObject.cpp.o.provides: CMakeFiles/octovis-shared.dir/src/SceneObject.cpp.o.requires
	$(MAKE) -f CMakeFiles/octovis-shared.dir/build.make CMakeFiles/octovis-shared.dir/src/SceneObject.cpp.o.provides.build
.PHONY : CMakeFiles/octovis-shared.dir/src/SceneObject.cpp.o.provides

CMakeFiles/octovis-shared.dir/src/SceneObject.cpp.o.provides.build: CMakeFiles/octovis-shared.dir/src/SceneObject.cpp.o


CMakeFiles/octovis-shared.dir/src/PointcloudDrawer.cpp.o: CMakeFiles/octovis-shared.dir/flags.make
CMakeFiles/octovis-shared.dir/src/PointcloudDrawer.cpp.o: /home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/src/PointcloudDrawer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kalana/Xavier/BaseStation/build_isolated/octovis/devel/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/octovis-shared.dir/src/PointcloudDrawer.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/octovis-shared.dir/src/PointcloudDrawer.cpp.o -c /home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/src/PointcloudDrawer.cpp

CMakeFiles/octovis-shared.dir/src/PointcloudDrawer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/octovis-shared.dir/src/PointcloudDrawer.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/src/PointcloudDrawer.cpp > CMakeFiles/octovis-shared.dir/src/PointcloudDrawer.cpp.i

CMakeFiles/octovis-shared.dir/src/PointcloudDrawer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/octovis-shared.dir/src/PointcloudDrawer.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/src/PointcloudDrawer.cpp -o CMakeFiles/octovis-shared.dir/src/PointcloudDrawer.cpp.s

CMakeFiles/octovis-shared.dir/src/PointcloudDrawer.cpp.o.requires:

.PHONY : CMakeFiles/octovis-shared.dir/src/PointcloudDrawer.cpp.o.requires

CMakeFiles/octovis-shared.dir/src/PointcloudDrawer.cpp.o.provides: CMakeFiles/octovis-shared.dir/src/PointcloudDrawer.cpp.o.requires
	$(MAKE) -f CMakeFiles/octovis-shared.dir/build.make CMakeFiles/octovis-shared.dir/src/PointcloudDrawer.cpp.o.provides.build
.PHONY : CMakeFiles/octovis-shared.dir/src/PointcloudDrawer.cpp.o.provides

CMakeFiles/octovis-shared.dir/src/PointcloudDrawer.cpp.o.provides.build: CMakeFiles/octovis-shared.dir/src/PointcloudDrawer.cpp.o


CMakeFiles/octovis-shared.dir/src/OcTreeDrawer.cpp.o: CMakeFiles/octovis-shared.dir/flags.make
CMakeFiles/octovis-shared.dir/src/OcTreeDrawer.cpp.o: /home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/src/OcTreeDrawer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kalana/Xavier/BaseStation/build_isolated/octovis/devel/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/octovis-shared.dir/src/OcTreeDrawer.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/octovis-shared.dir/src/OcTreeDrawer.cpp.o -c /home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/src/OcTreeDrawer.cpp

CMakeFiles/octovis-shared.dir/src/OcTreeDrawer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/octovis-shared.dir/src/OcTreeDrawer.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/src/OcTreeDrawer.cpp > CMakeFiles/octovis-shared.dir/src/OcTreeDrawer.cpp.i

CMakeFiles/octovis-shared.dir/src/OcTreeDrawer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/octovis-shared.dir/src/OcTreeDrawer.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/src/OcTreeDrawer.cpp -o CMakeFiles/octovis-shared.dir/src/OcTreeDrawer.cpp.s

CMakeFiles/octovis-shared.dir/src/OcTreeDrawer.cpp.o.requires:

.PHONY : CMakeFiles/octovis-shared.dir/src/OcTreeDrawer.cpp.o.requires

CMakeFiles/octovis-shared.dir/src/OcTreeDrawer.cpp.o.provides: CMakeFiles/octovis-shared.dir/src/OcTreeDrawer.cpp.o.requires
	$(MAKE) -f CMakeFiles/octovis-shared.dir/build.make CMakeFiles/octovis-shared.dir/src/OcTreeDrawer.cpp.o.provides.build
.PHONY : CMakeFiles/octovis-shared.dir/src/OcTreeDrawer.cpp.o.provides

CMakeFiles/octovis-shared.dir/src/OcTreeDrawer.cpp.o.provides.build: CMakeFiles/octovis-shared.dir/src/OcTreeDrawer.cpp.o


CMakeFiles/octovis-shared.dir/src/SelectionBox.cpp.o: CMakeFiles/octovis-shared.dir/flags.make
CMakeFiles/octovis-shared.dir/src/SelectionBox.cpp.o: /home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/src/SelectionBox.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kalana/Xavier/BaseStation/build_isolated/octovis/devel/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/octovis-shared.dir/src/SelectionBox.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/octovis-shared.dir/src/SelectionBox.cpp.o -c /home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/src/SelectionBox.cpp

CMakeFiles/octovis-shared.dir/src/SelectionBox.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/octovis-shared.dir/src/SelectionBox.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/src/SelectionBox.cpp > CMakeFiles/octovis-shared.dir/src/SelectionBox.cpp.i

CMakeFiles/octovis-shared.dir/src/SelectionBox.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/octovis-shared.dir/src/SelectionBox.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/src/SelectionBox.cpp -o CMakeFiles/octovis-shared.dir/src/SelectionBox.cpp.s

CMakeFiles/octovis-shared.dir/src/SelectionBox.cpp.o.requires:

.PHONY : CMakeFiles/octovis-shared.dir/src/SelectionBox.cpp.o.requires

CMakeFiles/octovis-shared.dir/src/SelectionBox.cpp.o.provides: CMakeFiles/octovis-shared.dir/src/SelectionBox.cpp.o.requires
	$(MAKE) -f CMakeFiles/octovis-shared.dir/build.make CMakeFiles/octovis-shared.dir/src/SelectionBox.cpp.o.provides.build
.PHONY : CMakeFiles/octovis-shared.dir/src/SelectionBox.cpp.o.provides

CMakeFiles/octovis-shared.dir/src/SelectionBox.cpp.o.provides.build: CMakeFiles/octovis-shared.dir/src/SelectionBox.cpp.o


CMakeFiles/octovis-shared.dir/src/TrajectoryDrawer.cpp.o: CMakeFiles/octovis-shared.dir/flags.make
CMakeFiles/octovis-shared.dir/src/TrajectoryDrawer.cpp.o: /home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/src/TrajectoryDrawer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kalana/Xavier/BaseStation/build_isolated/octovis/devel/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/octovis-shared.dir/src/TrajectoryDrawer.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/octovis-shared.dir/src/TrajectoryDrawer.cpp.o -c /home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/src/TrajectoryDrawer.cpp

CMakeFiles/octovis-shared.dir/src/TrajectoryDrawer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/octovis-shared.dir/src/TrajectoryDrawer.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/src/TrajectoryDrawer.cpp > CMakeFiles/octovis-shared.dir/src/TrajectoryDrawer.cpp.i

CMakeFiles/octovis-shared.dir/src/TrajectoryDrawer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/octovis-shared.dir/src/TrajectoryDrawer.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/src/TrajectoryDrawer.cpp -o CMakeFiles/octovis-shared.dir/src/TrajectoryDrawer.cpp.s

CMakeFiles/octovis-shared.dir/src/TrajectoryDrawer.cpp.o.requires:

.PHONY : CMakeFiles/octovis-shared.dir/src/TrajectoryDrawer.cpp.o.requires

CMakeFiles/octovis-shared.dir/src/TrajectoryDrawer.cpp.o.provides: CMakeFiles/octovis-shared.dir/src/TrajectoryDrawer.cpp.o.requires
	$(MAKE) -f CMakeFiles/octovis-shared.dir/build.make CMakeFiles/octovis-shared.dir/src/TrajectoryDrawer.cpp.o.provides.build
.PHONY : CMakeFiles/octovis-shared.dir/src/TrajectoryDrawer.cpp.o.provides

CMakeFiles/octovis-shared.dir/src/TrajectoryDrawer.cpp.o.provides.build: CMakeFiles/octovis-shared.dir/src/TrajectoryDrawer.cpp.o


CMakeFiles/octovis-shared.dir/src/ColorOcTreeDrawer.cpp.o: CMakeFiles/octovis-shared.dir/flags.make
CMakeFiles/octovis-shared.dir/src/ColorOcTreeDrawer.cpp.o: /home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/src/ColorOcTreeDrawer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kalana/Xavier/BaseStation/build_isolated/octovis/devel/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/octovis-shared.dir/src/ColorOcTreeDrawer.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/octovis-shared.dir/src/ColorOcTreeDrawer.cpp.o -c /home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/src/ColorOcTreeDrawer.cpp

CMakeFiles/octovis-shared.dir/src/ColorOcTreeDrawer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/octovis-shared.dir/src/ColorOcTreeDrawer.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/src/ColorOcTreeDrawer.cpp > CMakeFiles/octovis-shared.dir/src/ColorOcTreeDrawer.cpp.i

CMakeFiles/octovis-shared.dir/src/ColorOcTreeDrawer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/octovis-shared.dir/src/ColorOcTreeDrawer.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/src/ColorOcTreeDrawer.cpp -o CMakeFiles/octovis-shared.dir/src/ColorOcTreeDrawer.cpp.s

CMakeFiles/octovis-shared.dir/src/ColorOcTreeDrawer.cpp.o.requires:

.PHONY : CMakeFiles/octovis-shared.dir/src/ColorOcTreeDrawer.cpp.o.requires

CMakeFiles/octovis-shared.dir/src/ColorOcTreeDrawer.cpp.o.provides: CMakeFiles/octovis-shared.dir/src/ColorOcTreeDrawer.cpp.o.requires
	$(MAKE) -f CMakeFiles/octovis-shared.dir/build.make CMakeFiles/octovis-shared.dir/src/ColorOcTreeDrawer.cpp.o.provides.build
.PHONY : CMakeFiles/octovis-shared.dir/src/ColorOcTreeDrawer.cpp.o.provides

CMakeFiles/octovis-shared.dir/src/ColorOcTreeDrawer.cpp.o.provides.build: CMakeFiles/octovis-shared.dir/src/ColorOcTreeDrawer.cpp.o


# Object files for target octovis-shared
octovis__shared_OBJECTS = \
"CMakeFiles/octovis-shared.dir/src/SceneObject.cpp.o" \
"CMakeFiles/octovis-shared.dir/src/PointcloudDrawer.cpp.o" \
"CMakeFiles/octovis-shared.dir/src/OcTreeDrawer.cpp.o" \
"CMakeFiles/octovis-shared.dir/src/SelectionBox.cpp.o" \
"CMakeFiles/octovis-shared.dir/src/TrajectoryDrawer.cpp.o" \
"CMakeFiles/octovis-shared.dir/src/ColorOcTreeDrawer.cpp.o"

# External object files for target octovis-shared
octovis__shared_EXTERNAL_OBJECTS =

/home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/lib/liboctovis.so.1.9.0: CMakeFiles/octovis-shared.dir/src/SceneObject.cpp.o
/home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/lib/liboctovis.so.1.9.0: CMakeFiles/octovis-shared.dir/src/PointcloudDrawer.cpp.o
/home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/lib/liboctovis.so.1.9.0: CMakeFiles/octovis-shared.dir/src/OcTreeDrawer.cpp.o
/home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/lib/liboctovis.so.1.9.0: CMakeFiles/octovis-shared.dir/src/SelectionBox.cpp.o
/home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/lib/liboctovis.so.1.9.0: CMakeFiles/octovis-shared.dir/src/TrajectoryDrawer.cpp.o
/home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/lib/liboctovis.so.1.9.0: CMakeFiles/octovis-shared.dir/src/ColorOcTreeDrawer.cpp.o
/home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/lib/liboctovis.so.1.9.0: CMakeFiles/octovis-shared.dir/build.make
/home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/lib/liboctovis.so.1.9.0: /usr/lib/x86_64-linux-gnu/libGL.so
/home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/lib/liboctovis.so.1.9.0: /usr/lib/x86_64-linux-gnu/libGLU.so
/home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/lib/liboctovis.so.1.9.0: /home/kalana/Xavier/BaseStation/devel_isolated/octomap/lib/liboctomap.so
/home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/lib/liboctovis.so.1.9.0: /home/kalana/Xavier/BaseStation/devel_isolated/octomap/lib/liboctomath.so
/home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/lib/liboctovis.so.1.9.0: CMakeFiles/octovis-shared.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kalana/Xavier/BaseStation/build_isolated/octovis/devel/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX shared library /home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/lib/liboctovis.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/octovis-shared.dir/link.txt --verbose=$(VERBOSE)
	$(CMAKE_COMMAND) -E cmake_symlink_library /home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/lib/liboctovis.so.1.9.0 /home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/lib/liboctovis.so.1.9 /home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/lib/liboctovis.so

/home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/lib/liboctovis.so.1.9: /home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/lib/liboctovis.so.1.9.0
	@$(CMAKE_COMMAND) -E touch_nocreate /home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/lib/liboctovis.so.1.9

/home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/lib/liboctovis.so: /home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/lib/liboctovis.so.1.9.0
	@$(CMAKE_COMMAND) -E touch_nocreate /home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/lib/liboctovis.so

# Rule to build all files generated by this target.
CMakeFiles/octovis-shared.dir/build: /home/kalana/Xavier/BaseStation/src/octomap-devel/octovis/lib/liboctovis.so

.PHONY : CMakeFiles/octovis-shared.dir/build

CMakeFiles/octovis-shared.dir/requires: CMakeFiles/octovis-shared.dir/src/SceneObject.cpp.o.requires
CMakeFiles/octovis-shared.dir/requires: CMakeFiles/octovis-shared.dir/src/PointcloudDrawer.cpp.o.requires
CMakeFiles/octovis-shared.dir/requires: CMakeFiles/octovis-shared.dir/src/OcTreeDrawer.cpp.o.requires
CMakeFiles/octovis-shared.dir/requires: CMakeFiles/octovis-shared.dir/src/SelectionBox.cpp.o.requires
CMakeFiles/octovis-shared.dir/requires: CMakeFiles/octovis-shared.dir/src/TrajectoryDrawer.cpp.o.requires
CMakeFiles/octovis-shared.dir/requires: CMakeFiles/octovis-shared.dir/src/ColorOcTreeDrawer.cpp.o.requires

.PHONY : CMakeFiles/octovis-shared.dir/requires

CMakeFiles/octovis-shared.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/octovis-shared.dir/cmake_clean.cmake
.PHONY : CMakeFiles/octovis-shared.dir/clean

CMakeFiles/octovis-shared.dir/depend:
	cd /home/kalana/Xavier/BaseStation/build_isolated/octovis/devel && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kalana/Xavier/BaseStation/src/octomap-devel/octovis /home/kalana/Xavier/BaseStation/src/octomap-devel/octovis /home/kalana/Xavier/BaseStation/build_isolated/octovis/devel /home/kalana/Xavier/BaseStation/build_isolated/octovis/devel /home/kalana/Xavier/BaseStation/build_isolated/octovis/devel/CMakeFiles/octovis-shared.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/octovis-shared.dir/depend
