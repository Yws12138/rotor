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
include plan_manage/CMakeFiles/plan_manage.dir/depend.make

# Include the progress variables for this target.
include plan_manage/CMakeFiles/plan_manage.dir/progress.make

# Include the compile flags for this target's objects.
include plan_manage/CMakeFiles/plan_manage.dir/flags.make

plan_manage/CMakeFiles/plan_manage.dir/src/plan_manage.cpp.o: plan_manage/CMakeFiles/plan_manage.dir/flags.make
plan_manage/CMakeFiles/plan_manage.dir/src/plan_manage.cpp.o: /home/yws/UMV_Project/rotor/src/plan_manage/src/plan_manage.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yws/UMV_Project/rotor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object plan_manage/CMakeFiles/plan_manage.dir/src/plan_manage.cpp.o"
	cd /home/yws/UMV_Project/rotor/build/plan_manage && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/plan_manage.dir/src/plan_manage.cpp.o -c /home/yws/UMV_Project/rotor/src/plan_manage/src/plan_manage.cpp

plan_manage/CMakeFiles/plan_manage.dir/src/plan_manage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/plan_manage.dir/src/plan_manage.cpp.i"
	cd /home/yws/UMV_Project/rotor/build/plan_manage && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yws/UMV_Project/rotor/src/plan_manage/src/plan_manage.cpp > CMakeFiles/plan_manage.dir/src/plan_manage.cpp.i

plan_manage/CMakeFiles/plan_manage.dir/src/plan_manage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/plan_manage.dir/src/plan_manage.cpp.s"
	cd /home/yws/UMV_Project/rotor/build/plan_manage && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yws/UMV_Project/rotor/src/plan_manage/src/plan_manage.cpp -o CMakeFiles/plan_manage.dir/src/plan_manage.cpp.s

plan_manage/CMakeFiles/plan_manage.dir/src/plan_manage.cpp.o.requires:

.PHONY : plan_manage/CMakeFiles/plan_manage.dir/src/plan_manage.cpp.o.requires

plan_manage/CMakeFiles/plan_manage.dir/src/plan_manage.cpp.o.provides: plan_manage/CMakeFiles/plan_manage.dir/src/plan_manage.cpp.o.requires
	$(MAKE) -f plan_manage/CMakeFiles/plan_manage.dir/build.make plan_manage/CMakeFiles/plan_manage.dir/src/plan_manage.cpp.o.provides.build
.PHONY : plan_manage/CMakeFiles/plan_manage.dir/src/plan_manage.cpp.o.provides

plan_manage/CMakeFiles/plan_manage.dir/src/plan_manage.cpp.o.provides.build: plan_manage/CMakeFiles/plan_manage.dir/src/plan_manage.cpp.o


# Object files for target plan_manage
plan_manage_OBJECTS = \
"CMakeFiles/plan_manage.dir/src/plan_manage.cpp.o"

# External object files for target plan_manage
plan_manage_EXTERNAL_OBJECTS =

/home/yws/UMV_Project/rotor/devel/lib/libplan_manage.a: plan_manage/CMakeFiles/plan_manage.dir/src/plan_manage.cpp.o
/home/yws/UMV_Project/rotor/devel/lib/libplan_manage.a: plan_manage/CMakeFiles/plan_manage.dir/build.make
/home/yws/UMV_Project/rotor/devel/lib/libplan_manage.a: plan_manage/CMakeFiles/plan_manage.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yws/UMV_Project/rotor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library /home/yws/UMV_Project/rotor/devel/lib/libplan_manage.a"
	cd /home/yws/UMV_Project/rotor/build/plan_manage && $(CMAKE_COMMAND) -P CMakeFiles/plan_manage.dir/cmake_clean_target.cmake
	cd /home/yws/UMV_Project/rotor/build/plan_manage && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/plan_manage.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
plan_manage/CMakeFiles/plan_manage.dir/build: /home/yws/UMV_Project/rotor/devel/lib/libplan_manage.a

.PHONY : plan_manage/CMakeFiles/plan_manage.dir/build

plan_manage/CMakeFiles/plan_manage.dir/requires: plan_manage/CMakeFiles/plan_manage.dir/src/plan_manage.cpp.o.requires

.PHONY : plan_manage/CMakeFiles/plan_manage.dir/requires

plan_manage/CMakeFiles/plan_manage.dir/clean:
	cd /home/yws/UMV_Project/rotor/build/plan_manage && $(CMAKE_COMMAND) -P CMakeFiles/plan_manage.dir/cmake_clean.cmake
.PHONY : plan_manage/CMakeFiles/plan_manage.dir/clean

plan_manage/CMakeFiles/plan_manage.dir/depend:
	cd /home/yws/UMV_Project/rotor/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yws/UMV_Project/rotor/src /home/yws/UMV_Project/rotor/src/plan_manage /home/yws/UMV_Project/rotor/build /home/yws/UMV_Project/rotor/build/plan_manage /home/yws/UMV_Project/rotor/build/plan_manage/CMakeFiles/plan_manage.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : plan_manage/CMakeFiles/plan_manage.dir/depend

