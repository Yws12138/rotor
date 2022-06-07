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
CMAKE_SOURCE_DIR = /home/yws/UMV_Project/rotor/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yws/UMV_Project/rotor/build

# Include any dependencies generated for this target.
include tracking_utils/target_prediction/CMakeFiles/bezier_predict.dir/depend.make

# Include the progress variables for this target.
include tracking_utils/target_prediction/CMakeFiles/bezier_predict.dir/progress.make

# Include the compile flags for this target's objects.
include tracking_utils/target_prediction/CMakeFiles/bezier_predict.dir/flags.make

tracking_utils/target_prediction/CMakeFiles/bezier_predict.dir/src/bezier_predict.cpp.o: tracking_utils/target_prediction/CMakeFiles/bezier_predict.dir/flags.make
tracking_utils/target_prediction/CMakeFiles/bezier_predict.dir/src/bezier_predict.cpp.o: /home/yws/UMV_Project/rotor/src/tracking_utils/target_prediction/src/bezier_predict.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yws/UMV_Project/rotor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tracking_utils/target_prediction/CMakeFiles/bezier_predict.dir/src/bezier_predict.cpp.o"
	cd /home/yws/UMV_Project/rotor/build/tracking_utils/target_prediction && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bezier_predict.dir/src/bezier_predict.cpp.o -c /home/yws/UMV_Project/rotor/src/tracking_utils/target_prediction/src/bezier_predict.cpp

tracking_utils/target_prediction/CMakeFiles/bezier_predict.dir/src/bezier_predict.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bezier_predict.dir/src/bezier_predict.cpp.i"
	cd /home/yws/UMV_Project/rotor/build/tracking_utils/target_prediction && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yws/UMV_Project/rotor/src/tracking_utils/target_prediction/src/bezier_predict.cpp > CMakeFiles/bezier_predict.dir/src/bezier_predict.cpp.i

tracking_utils/target_prediction/CMakeFiles/bezier_predict.dir/src/bezier_predict.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bezier_predict.dir/src/bezier_predict.cpp.s"
	cd /home/yws/UMV_Project/rotor/build/tracking_utils/target_prediction && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yws/UMV_Project/rotor/src/tracking_utils/target_prediction/src/bezier_predict.cpp -o CMakeFiles/bezier_predict.dir/src/bezier_predict.cpp.s

tracking_utils/target_prediction/CMakeFiles/bezier_predict.dir/src/bezier_predict.cpp.o.requires:

.PHONY : tracking_utils/target_prediction/CMakeFiles/bezier_predict.dir/src/bezier_predict.cpp.o.requires

tracking_utils/target_prediction/CMakeFiles/bezier_predict.dir/src/bezier_predict.cpp.o.provides: tracking_utils/target_prediction/CMakeFiles/bezier_predict.dir/src/bezier_predict.cpp.o.requires
	$(MAKE) -f tracking_utils/target_prediction/CMakeFiles/bezier_predict.dir/build.make tracking_utils/target_prediction/CMakeFiles/bezier_predict.dir/src/bezier_predict.cpp.o.provides.build
.PHONY : tracking_utils/target_prediction/CMakeFiles/bezier_predict.dir/src/bezier_predict.cpp.o.provides

tracking_utils/target_prediction/CMakeFiles/bezier_predict.dir/src/bezier_predict.cpp.o.provides.build: tracking_utils/target_prediction/CMakeFiles/bezier_predict.dir/src/bezier_predict.cpp.o


# Object files for target bezier_predict
bezier_predict_OBJECTS = \
"CMakeFiles/bezier_predict.dir/src/bezier_predict.cpp.o"

# External object files for target bezier_predict
bezier_predict_EXTERNAL_OBJECTS =

/home/yws/UMV_Project/rotor/devel/lib/libbezier_predict.a: tracking_utils/target_prediction/CMakeFiles/bezier_predict.dir/src/bezier_predict.cpp.o
/home/yws/UMV_Project/rotor/devel/lib/libbezier_predict.a: tracking_utils/target_prediction/CMakeFiles/bezier_predict.dir/build.make
/home/yws/UMV_Project/rotor/devel/lib/libbezier_predict.a: tracking_utils/target_prediction/CMakeFiles/bezier_predict.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yws/UMV_Project/rotor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library /home/yws/UMV_Project/rotor/devel/lib/libbezier_predict.a"
	cd /home/yws/UMV_Project/rotor/build/tracking_utils/target_prediction && $(CMAKE_COMMAND) -P CMakeFiles/bezier_predict.dir/cmake_clean_target.cmake
	cd /home/yws/UMV_Project/rotor/build/tracking_utils/target_prediction && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bezier_predict.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tracking_utils/target_prediction/CMakeFiles/bezier_predict.dir/build: /home/yws/UMV_Project/rotor/devel/lib/libbezier_predict.a

.PHONY : tracking_utils/target_prediction/CMakeFiles/bezier_predict.dir/build

tracking_utils/target_prediction/CMakeFiles/bezier_predict.dir/requires: tracking_utils/target_prediction/CMakeFiles/bezier_predict.dir/src/bezier_predict.cpp.o.requires

.PHONY : tracking_utils/target_prediction/CMakeFiles/bezier_predict.dir/requires

tracking_utils/target_prediction/CMakeFiles/bezier_predict.dir/clean:
	cd /home/yws/UMV_Project/rotor/build/tracking_utils/target_prediction && $(CMAKE_COMMAND) -P CMakeFiles/bezier_predict.dir/cmake_clean.cmake
.PHONY : tracking_utils/target_prediction/CMakeFiles/bezier_predict.dir/clean

tracking_utils/target_prediction/CMakeFiles/bezier_predict.dir/depend:
	cd /home/yws/UMV_Project/rotor/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yws/UMV_Project/rotor/src /home/yws/UMV_Project/rotor/src/tracking_utils/target_prediction /home/yws/UMV_Project/rotor/build /home/yws/UMV_Project/rotor/build/tracking_utils/target_prediction /home/yws/UMV_Project/rotor/build/tracking_utils/target_prediction/CMakeFiles/bezier_predict.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tracking_utils/target_prediction/CMakeFiles/bezier_predict.dir/depend

