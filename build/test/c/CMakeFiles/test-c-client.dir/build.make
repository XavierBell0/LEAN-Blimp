# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_SOURCE_DIR = /home/pi/LEAN-Blimp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/LEAN-Blimp/build

# Include any dependencies generated for this target.
include test/c/CMakeFiles/test-c-client.dir/depend.make

# Include the progress variables for this target.
include test/c/CMakeFiles/test-c-client.dir/progress.make

# Include the compile flags for this target's objects.
include test/c/CMakeFiles/test-c-client.dir/flags.make

test/c/CMakeFiles/test-c-client.dir/client.cpp.o: test/c/CMakeFiles/test-c-client.dir/flags.make
test/c/CMakeFiles/test-c-client.dir/client.cpp.o: ../test/c/client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/LEAN-Blimp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/c/CMakeFiles/test-c-client.dir/client.cpp.o"
	cd /home/pi/LEAN-Blimp/build/test/c && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test-c-client.dir/client.cpp.o -c /home/pi/LEAN-Blimp/test/c/client.cpp

test/c/CMakeFiles/test-c-client.dir/client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-c-client.dir/client.cpp.i"
	cd /home/pi/LEAN-Blimp/build/test/c && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/LEAN-Blimp/test/c/client.cpp > CMakeFiles/test-c-client.dir/client.cpp.i

test/c/CMakeFiles/test-c-client.dir/client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-c-client.dir/client.cpp.s"
	cd /home/pi/LEAN-Blimp/build/test/c && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/LEAN-Blimp/test/c/client.cpp -o CMakeFiles/test-c-client.dir/client.cpp.s

test/c/CMakeFiles/test-c-client.dir/common.c.o: test/c/CMakeFiles/test-c-client.dir/flags.make
test/c/CMakeFiles/test-c-client.dir/common.c.o: ../test/c/common.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/LEAN-Blimp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object test/c/CMakeFiles/test-c-client.dir/common.c.o"
	cd /home/pi/LEAN-Blimp/build/test/c && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test-c-client.dir/common.c.o   -c /home/pi/LEAN-Blimp/test/c/common.c

test/c/CMakeFiles/test-c-client.dir/common.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test-c-client.dir/common.c.i"
	cd /home/pi/LEAN-Blimp/build/test/c && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/LEAN-Blimp/test/c/common.c > CMakeFiles/test-c-client.dir/common.c.i

test/c/CMakeFiles/test-c-client.dir/common.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test-c-client.dir/common.c.s"
	cd /home/pi/LEAN-Blimp/build/test/c && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/LEAN-Blimp/test/c/common.c -o CMakeFiles/test-c-client.dir/common.c.s

# Object files for target test-c-client
test__c__client_OBJECTS = \
"CMakeFiles/test-c-client.dir/client.cpp.o" \
"CMakeFiles/test-c-client.dir/common.c.o"

# External object files for target test-c-client
test__c__client_EXTERNAL_OBJECTS =

test/c/test-c-client: test/c/CMakeFiles/test-c-client.dir/client.cpp.o
test/c/test-c-client: test/c/CMakeFiles/test-c-client.dir/common.c.o
test/c/test-c-client: test/c/CMakeFiles/test-c-client.dir/build.make
test/c/test-c-client: test/types/liblcm-test-types.so
test/c/test-c-client: lcm/liblcm.so.1.4.0
test/c/test-c-client: test/gtest/libgtest_main.so
test/c/test-c-client: test/gtest/libgtest.so
test/c/test-c-client: test/c/CMakeFiles/test-c-client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/LEAN-Blimp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable test-c-client"
	cd /home/pi/LEAN-Blimp/build/test/c && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-c-client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/c/CMakeFiles/test-c-client.dir/build: test/c/test-c-client

.PHONY : test/c/CMakeFiles/test-c-client.dir/build

test/c/CMakeFiles/test-c-client.dir/clean:
	cd /home/pi/LEAN-Blimp/build/test/c && $(CMAKE_COMMAND) -P CMakeFiles/test-c-client.dir/cmake_clean.cmake
.PHONY : test/c/CMakeFiles/test-c-client.dir/clean

test/c/CMakeFiles/test-c-client.dir/depend:
	cd /home/pi/LEAN-Blimp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/LEAN-Blimp /home/pi/LEAN-Blimp/test/c /home/pi/LEAN-Blimp/build /home/pi/LEAN-Blimp/build/test/c /home/pi/LEAN-Blimp/build/test/c/CMakeFiles/test-c-client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/c/CMakeFiles/test-c-client.dir/depend

