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
CMAKE_SOURCE_DIR = /home/yws/UMV_Project/rotor/src/rotors_simulator/rotors_joy_interface

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yws/UMV_Project/rotor/build_isolated/rotors_joy_interface

# Include any dependencies generated for this target.
include CMakeFiles/rotors_joy_interface.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/rotors_joy_interface.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/rotors_joy_interface.dir/flags.make

CMakeFiles/rotors_joy_interface.dir/src/joy.cpp.o: CMakeFiles/rotors_joy_interface.dir/flags.make
CMakeFiles/rotors_joy_interface.dir/src/joy.cpp.o: /home/yws/UMV_Project/rotor/src/rotors_simulator/rotors_joy_interface/src/joy.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yws/UMV_Project/rotor/build_isolated/rotors_joy_interface/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/rotors_joy_interface.dir/src/joy.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rotors_joy_interface.dir/src/joy.cpp.o -c /home/yws/UMV_Project/rotor/src/rotors_simulator/rotors_joy_interface/src/joy.cpp

CMakeFiles/rotors_joy_interface.dir/src/joy.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rotors_joy_interface.dir/src/joy.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yws/UMV_Project/rotor/src/rotors_simulator/rotors_joy_interface/src/joy.cpp > CMakeFiles/rotors_joy_interface.dir/src/joy.cpp.i

CMakeFiles/rotors_joy_interface.dir/src/joy.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rotors_joy_interface.dir/src/joy.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yws/UMV_Project/rotor/src/rotors_simulator/rotors_joy_interface/src/joy.cpp -o CMakeFiles/rotors_joy_interface.dir/src/joy.cpp.s

CMakeFiles/rotors_joy_interface.dir/src/joy.cpp.o.requires:

.PHONY : CMakeFiles/rotors_joy_interface.dir/src/joy.cpp.o.requires

CMakeFiles/rotors_joy_interface.dir/src/joy.cpp.o.provides: CMakeFiles/rotors_joy_interface.dir/src/joy.cpp.o.requires
	$(MAKE) -f CMakeFiles/rotors_joy_interface.dir/build.make CMakeFiles/rotors_joy_interface.dir/src/joy.cpp.o.provides.build
.PHONY : CMakeFiles/rotors_joy_interface.dir/src/joy.cpp.o.provides

CMakeFiles/rotors_joy_interface.dir/src/joy.cpp.o.provides.build: CMakeFiles/rotors_joy_interface.dir/src/joy.cpp.o


# Object files for target rotors_joy_interface
rotors_joy_interface_OBJECTS = \
"CMakeFiles/rotors_joy_interface.dir/src/joy.cpp.o"

# External object files for target rotors_joy_interface
rotors_joy_interface_EXTERNAL_OBJECTS =

/home/yws/UMV_Project/rotor/devel_isolated/rotors_joy_interface/lib/rotors_joy_interface/rotors_joy_interface: CMakeFiles/rotors_joy_interface.dir/src/joy.cpp.o
/home/yws/UMV_Project/rotor/devel_isolated/rotors_joy_interface/lib/rotors_joy_interface/rotors_joy_interface: CMakeFiles/rotors_joy_interface.dir/build.make
/home/yws/UMV_Project/rotor/devel_isolated/rotors_joy_interface/lib/rotors_joy_interface/rotors_joy_interface: /opt/ros/melodic/lib/libroscpp.so
/home/yws/UMV_Project/rotor/devel_isolated/rotors_joy_interface/lib/rotors_joy_interface/rotors_joy_interface: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/yws/UMV_Project/rotor/devel_isolated/rotors_joy_interface/lib/rotors_joy_interface/rotors_joy_interface: /opt/ros/melodic/lib/librosconsole.so
/home/yws/UMV_Project/rotor/devel_isolated/rotors_joy_interface/lib/rotors_joy_interface/rotors_joy_interface: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/yws/UMV_Project/rotor/devel_isolated/rotors_joy_interface/lib/rotors_joy_interface/rotors_joy_interface: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/yws/UMV_Project/rotor/devel_isolated/rotors_joy_interface/lib/rotors_joy_interface/rotors_joy_interface: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/yws/UMV_Project/rotor/devel_isolated/rotors_joy_interface/lib/rotors_joy_interface/rotors_joy_interface: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/yws/UMV_Project/rotor/devel_isolated/rotors_joy_interface/lib/rotors_joy_interface/rotors_joy_interface: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/yws/UMV_Project/rotor/devel_isolated/rotors_joy_interface/lib/rotors_joy_interface/rotors_joy_interface: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/yws/UMV_Project/rotor/devel_isolated/rotors_joy_interface/lib/rotors_joy_interface/rotors_joy_interface: /opt/ros/melodic/lib/librostime.so
/home/yws/UMV_Project/rotor/devel_isolated/rotors_joy_interface/lib/rotors_joy_interface/rotors_joy_interface: /opt/ros/melodic/lib/libcpp_common.so
/home/yws/UMV_Project/rotor/devel_isolated/rotors_joy_interface/lib/rotors_joy_interface/rotors_joy_interface: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/yws/UMV_Project/rotor/devel_isolated/rotors_joy_interface/lib/rotors_joy_interface/rotors_joy_interface: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/yws/UMV_Project/rotor/devel_isolated/rotors_joy_interface/lib/rotors_joy_interface/rotors_joy_interface: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/yws/UMV_Project/rotor/devel_isolated/rotors_joy_interface/lib/rotors_joy_interface/rotors_joy_interface: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/yws/UMV_Project/rotor/devel_isolated/rotors_joy_interface/lib/rotors_joy_interface/rotors_joy_interface: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/yws/UMV_Project/rotor/devel_isolated/rotors_joy_interface/lib/rotors_joy_interface/rotors_joy_interface: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/yws/UMV_Project/rotor/devel_isolated/rotors_joy_interface/lib/rotors_joy_interface/rotors_joy_interface: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/yws/UMV_Project/rotor/devel_isolated/rotors_joy_interface/lib/rotors_joy_interface/rotors_joy_interface: CMakeFiles/rotors_joy_interface.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yws/UMV_Project/rotor/build_isolated/rotors_joy_interface/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/yws/UMV_Project/rotor/devel_isolated/rotors_joy_interface/lib/rotors_joy_interface/rotors_joy_interface"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rotors_joy_interface.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/rotors_joy_interface.dir/build: /home/yws/UMV_Project/rotor/devel_isolated/rotors_joy_interface/lib/rotors_joy_interface/rotors_joy_interface

.PHONY : CMakeFiles/rotors_joy_interface.dir/build

CMakeFiles/rotors_joy_interface.dir/requires: CMakeFiles/rotors_joy_interface.dir/src/joy.cpp.o.requires

.PHONY : CMakeFiles/rotors_joy_interface.dir/requires

CMakeFiles/rotors_joy_interface.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rotors_joy_interface.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rotors_joy_interface.dir/clean

CMakeFiles/rotors_joy_interface.dir/depend:
	cd /home/yws/UMV_Project/rotor/build_isolated/rotors_joy_interface && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yws/UMV_Project/rotor/src/rotors_simulator/rotors_joy_interface /home/yws/UMV_Project/rotor/src/rotors_simulator/rotors_joy_interface /home/yws/UMV_Project/rotor/build_isolated/rotors_joy_interface /home/yws/UMV_Project/rotor/build_isolated/rotors_joy_interface /home/yws/UMV_Project/rotor/build_isolated/rotors_joy_interface/CMakeFiles/rotors_joy_interface.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/rotors_joy_interface.dir/depend

