# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/yws/UMV_Project/rotor/src/rotors_simulator/rotors_gazebo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yws/UMV_Project/rotor/build_isolated/rotors_gazebo

# Include any dependencies generated for this target.
include CMakeFiles/waypoint_publisher_file.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/waypoint_publisher_file.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/waypoint_publisher_file.dir/flags.make

CMakeFiles/waypoint_publisher_file.dir/src/waypoint_publisher_file.cpp.o: CMakeFiles/waypoint_publisher_file.dir/flags.make
CMakeFiles/waypoint_publisher_file.dir/src/waypoint_publisher_file.cpp.o: /home/yws/UMV_Project/rotor/src/rotors_simulator/rotors_gazebo/src/waypoint_publisher_file.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yws/UMV_Project/rotor/build_isolated/rotors_gazebo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/waypoint_publisher_file.dir/src/waypoint_publisher_file.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/waypoint_publisher_file.dir/src/waypoint_publisher_file.cpp.o -c /home/yws/UMV_Project/rotor/src/rotors_simulator/rotors_gazebo/src/waypoint_publisher_file.cpp

CMakeFiles/waypoint_publisher_file.dir/src/waypoint_publisher_file.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/waypoint_publisher_file.dir/src/waypoint_publisher_file.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yws/UMV_Project/rotor/src/rotors_simulator/rotors_gazebo/src/waypoint_publisher_file.cpp > CMakeFiles/waypoint_publisher_file.dir/src/waypoint_publisher_file.cpp.i

CMakeFiles/waypoint_publisher_file.dir/src/waypoint_publisher_file.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/waypoint_publisher_file.dir/src/waypoint_publisher_file.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yws/UMV_Project/rotor/src/rotors_simulator/rotors_gazebo/src/waypoint_publisher_file.cpp -o CMakeFiles/waypoint_publisher_file.dir/src/waypoint_publisher_file.cpp.s

CMakeFiles/waypoint_publisher_file.dir/src/waypoint_publisher_file.cpp.o.requires:

.PHONY : CMakeFiles/waypoint_publisher_file.dir/src/waypoint_publisher_file.cpp.o.requires

CMakeFiles/waypoint_publisher_file.dir/src/waypoint_publisher_file.cpp.o.provides: CMakeFiles/waypoint_publisher_file.dir/src/waypoint_publisher_file.cpp.o.requires
	$(MAKE) -f CMakeFiles/waypoint_publisher_file.dir/build.make CMakeFiles/waypoint_publisher_file.dir/src/waypoint_publisher_file.cpp.o.provides.build
.PHONY : CMakeFiles/waypoint_publisher_file.dir/src/waypoint_publisher_file.cpp.o.provides

CMakeFiles/waypoint_publisher_file.dir/src/waypoint_publisher_file.cpp.o.provides.build: CMakeFiles/waypoint_publisher_file.dir/src/waypoint_publisher_file.cpp.o


# Object files for target waypoint_publisher_file
waypoint_publisher_file_OBJECTS = \
"CMakeFiles/waypoint_publisher_file.dir/src/waypoint_publisher_file.cpp.o"

# External object files for target waypoint_publisher_file
waypoint_publisher_file_EXTERNAL_OBJECTS =

/home/yws/UMV_Project/rotor/devel_isolated/rotors_gazebo/lib/rotors_gazebo/waypoint_publisher_file: CMakeFiles/waypoint_publisher_file.dir/src/waypoint_publisher_file.cpp.o
/home/yws/UMV_Project/rotor/devel_isolated/rotors_gazebo/lib/rotors_gazebo/waypoint_publisher_file: CMakeFiles/waypoint_publisher_file.dir/build.make
/home/yws/UMV_Project/rotor/devel_isolated/rotors_gazebo/lib/rotors_gazebo/waypoint_publisher_file: /opt/ros/melodic/lib/libroscpp.so
/home/yws/UMV_Project/rotor/devel_isolated/rotors_gazebo/lib/rotors_gazebo/waypoint_publisher_file: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/yws/UMV_Project/rotor/devel_isolated/rotors_gazebo/lib/rotors_gazebo/waypoint_publisher_file: /opt/ros/melodic/lib/librosconsole.so
/home/yws/UMV_Project/rotor/devel_isolated/rotors_gazebo/lib/rotors_gazebo/waypoint_publisher_file: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/yws/UMV_Project/rotor/devel_isolated/rotors_gazebo/lib/rotors_gazebo/waypoint_publisher_file: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/yws/UMV_Project/rotor/devel_isolated/rotors_gazebo/lib/rotors_gazebo/waypoint_publisher_file: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/yws/UMV_Project/rotor/devel_isolated/rotors_gazebo/lib/rotors_gazebo/waypoint_publisher_file: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/yws/UMV_Project/rotor/devel_isolated/rotors_gazebo/lib/rotors_gazebo/waypoint_publisher_file: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/yws/UMV_Project/rotor/devel_isolated/rotors_gazebo/lib/rotors_gazebo/waypoint_publisher_file: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/yws/UMV_Project/rotor/devel_isolated/rotors_gazebo/lib/rotors_gazebo/waypoint_publisher_file: /opt/ros/melodic/lib/librostime.so
/home/yws/UMV_Project/rotor/devel_isolated/rotors_gazebo/lib/rotors_gazebo/waypoint_publisher_file: /opt/ros/melodic/lib/libcpp_common.so
/home/yws/UMV_Project/rotor/devel_isolated/rotors_gazebo/lib/rotors_gazebo/waypoint_publisher_file: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/yws/UMV_Project/rotor/devel_isolated/rotors_gazebo/lib/rotors_gazebo/waypoint_publisher_file: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/yws/UMV_Project/rotor/devel_isolated/rotors_gazebo/lib/rotors_gazebo/waypoint_publisher_file: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/yws/UMV_Project/rotor/devel_isolated/rotors_gazebo/lib/rotors_gazebo/waypoint_publisher_file: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/yws/UMV_Project/rotor/devel_isolated/rotors_gazebo/lib/rotors_gazebo/waypoint_publisher_file: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/yws/UMV_Project/rotor/devel_isolated/rotors_gazebo/lib/rotors_gazebo/waypoint_publisher_file: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/yws/UMV_Project/rotor/devel_isolated/rotors_gazebo/lib/rotors_gazebo/waypoint_publisher_file: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/yws/UMV_Project/rotor/devel_isolated/rotors_gazebo/lib/rotors_gazebo/waypoint_publisher_file: CMakeFiles/waypoint_publisher_file.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yws/UMV_Project/rotor/build_isolated/rotors_gazebo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/yws/UMV_Project/rotor/devel_isolated/rotors_gazebo/lib/rotors_gazebo/waypoint_publisher_file"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/waypoint_publisher_file.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/waypoint_publisher_file.dir/build: /home/yws/UMV_Project/rotor/devel_isolated/rotors_gazebo/lib/rotors_gazebo/waypoint_publisher_file

.PHONY : CMakeFiles/waypoint_publisher_file.dir/build

CMakeFiles/waypoint_publisher_file.dir/requires: CMakeFiles/waypoint_publisher_file.dir/src/waypoint_publisher_file.cpp.o.requires

.PHONY : CMakeFiles/waypoint_publisher_file.dir/requires

CMakeFiles/waypoint_publisher_file.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/waypoint_publisher_file.dir/cmake_clean.cmake
.PHONY : CMakeFiles/waypoint_publisher_file.dir/clean

CMakeFiles/waypoint_publisher_file.dir/depend:
	cd /home/yws/UMV_Project/rotor/build_isolated/rotors_gazebo && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yws/UMV_Project/rotor/src/rotors_simulator/rotors_gazebo /home/yws/UMV_Project/rotor/src/rotors_simulator/rotors_gazebo /home/yws/UMV_Project/rotor/build_isolated/rotors_gazebo /home/yws/UMV_Project/rotor/build_isolated/rotors_gazebo /home/yws/UMV_Project/rotor/build_isolated/rotors_gazebo/CMakeFiles/waypoint_publisher_file.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/waypoint_publisher_file.dir/depend

