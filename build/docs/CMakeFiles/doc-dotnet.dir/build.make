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

# Utility rule file for doc-dotnet.

# Include the progress variables for this target.
include docs/CMakeFiles/doc-dotnet.dir/progress.make

docs/CMakeFiles/doc-dotnet:
	cd /home/pi/LEAN-Blimp/lcm-dotnet && /usr/bin/doxygen /home/pi/LEAN-Blimp/build/lcm-dotnet/Doxyfile

doc-dotnet: docs/CMakeFiles/doc-dotnet
doc-dotnet: docs/CMakeFiles/doc-dotnet.dir/build.make

.PHONY : doc-dotnet

# Rule to build all files generated by this target.
docs/CMakeFiles/doc-dotnet.dir/build: doc-dotnet

.PHONY : docs/CMakeFiles/doc-dotnet.dir/build

docs/CMakeFiles/doc-dotnet.dir/clean:
	cd /home/pi/LEAN-Blimp/build/docs && $(CMAKE_COMMAND) -P CMakeFiles/doc-dotnet.dir/cmake_clean.cmake
.PHONY : docs/CMakeFiles/doc-dotnet.dir/clean

docs/CMakeFiles/doc-dotnet.dir/depend:
	cd /home/pi/LEAN-Blimp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/LEAN-Blimp /home/pi/LEAN-Blimp/docs /home/pi/LEAN-Blimp/build /home/pi/LEAN-Blimp/build/docs /home/pi/LEAN-Blimp/build/docs/CMakeFiles/doc-dotnet.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : docs/CMakeFiles/doc-dotnet.dir/depend
