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
include lcm-lua/CMakeFiles/lcm-lua.dir/depend.make

# Include the progress variables for this target.
include lcm-lua/CMakeFiles/lcm-lua.dir/progress.make

# Include the compile flags for this target's objects.
include lcm-lua/CMakeFiles/lcm-lua.dir/flags.make

lcm-lua/CMakeFiles/lcm-lua.dir/init.c.o: lcm-lua/CMakeFiles/lcm-lua.dir/flags.make
lcm-lua/CMakeFiles/lcm-lua.dir/init.c.o: ../lcm-lua/init.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/LEAN-Blimp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object lcm-lua/CMakeFiles/lcm-lua.dir/init.c.o"
	cd /home/pi/LEAN-Blimp/build/lcm-lua && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lcm-lua.dir/init.c.o   -c /home/pi/LEAN-Blimp/lcm-lua/init.c

lcm-lua/CMakeFiles/lcm-lua.dir/init.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lcm-lua.dir/init.c.i"
	cd /home/pi/LEAN-Blimp/build/lcm-lua && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/LEAN-Blimp/lcm-lua/init.c > CMakeFiles/lcm-lua.dir/init.c.i

lcm-lua/CMakeFiles/lcm-lua.dir/init.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lcm-lua.dir/init.c.s"
	cd /home/pi/LEAN-Blimp/build/lcm-lua && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/LEAN-Blimp/lcm-lua/init.c -o CMakeFiles/lcm-lua.dir/init.c.s

lcm-lua/CMakeFiles/lcm-lua.dir/lualcm_hash.c.o: lcm-lua/CMakeFiles/lcm-lua.dir/flags.make
lcm-lua/CMakeFiles/lcm-lua.dir/lualcm_hash.c.o: ../lcm-lua/lualcm_hash.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/LEAN-Blimp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object lcm-lua/CMakeFiles/lcm-lua.dir/lualcm_hash.c.o"
	cd /home/pi/LEAN-Blimp/build/lcm-lua && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lcm-lua.dir/lualcm_hash.c.o   -c /home/pi/LEAN-Blimp/lcm-lua/lualcm_hash.c

lcm-lua/CMakeFiles/lcm-lua.dir/lualcm_hash.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lcm-lua.dir/lualcm_hash.c.i"
	cd /home/pi/LEAN-Blimp/build/lcm-lua && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/LEAN-Blimp/lcm-lua/lualcm_hash.c > CMakeFiles/lcm-lua.dir/lualcm_hash.c.i

lcm-lua/CMakeFiles/lcm-lua.dir/lualcm_hash.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lcm-lua.dir/lualcm_hash.c.s"
	cd /home/pi/LEAN-Blimp/build/lcm-lua && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/LEAN-Blimp/lcm-lua/lualcm_hash.c -o CMakeFiles/lcm-lua.dir/lualcm_hash.c.s

lcm-lua/CMakeFiles/lcm-lua.dir/lualcm_lcm.c.o: lcm-lua/CMakeFiles/lcm-lua.dir/flags.make
lcm-lua/CMakeFiles/lcm-lua.dir/lualcm_lcm.c.o: ../lcm-lua/lualcm_lcm.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/LEAN-Blimp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object lcm-lua/CMakeFiles/lcm-lua.dir/lualcm_lcm.c.o"
	cd /home/pi/LEAN-Blimp/build/lcm-lua && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lcm-lua.dir/lualcm_lcm.c.o   -c /home/pi/LEAN-Blimp/lcm-lua/lualcm_lcm.c

lcm-lua/CMakeFiles/lcm-lua.dir/lualcm_lcm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lcm-lua.dir/lualcm_lcm.c.i"
	cd /home/pi/LEAN-Blimp/build/lcm-lua && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/LEAN-Blimp/lcm-lua/lualcm_lcm.c > CMakeFiles/lcm-lua.dir/lualcm_lcm.c.i

lcm-lua/CMakeFiles/lcm-lua.dir/lualcm_lcm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lcm-lua.dir/lualcm_lcm.c.s"
	cd /home/pi/LEAN-Blimp/build/lcm-lua && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/LEAN-Blimp/lcm-lua/lualcm_lcm.c -o CMakeFiles/lcm-lua.dir/lualcm_lcm.c.s

lcm-lua/CMakeFiles/lcm-lua.dir/lualcm_pack.c.o: lcm-lua/CMakeFiles/lcm-lua.dir/flags.make
lcm-lua/CMakeFiles/lcm-lua.dir/lualcm_pack.c.o: ../lcm-lua/lualcm_pack.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/LEAN-Blimp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object lcm-lua/CMakeFiles/lcm-lua.dir/lualcm_pack.c.o"
	cd /home/pi/LEAN-Blimp/build/lcm-lua && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lcm-lua.dir/lualcm_pack.c.o   -c /home/pi/LEAN-Blimp/lcm-lua/lualcm_pack.c

lcm-lua/CMakeFiles/lcm-lua.dir/lualcm_pack.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lcm-lua.dir/lualcm_pack.c.i"
	cd /home/pi/LEAN-Blimp/build/lcm-lua && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/LEAN-Blimp/lcm-lua/lualcm_pack.c > CMakeFiles/lcm-lua.dir/lualcm_pack.c.i

lcm-lua/CMakeFiles/lcm-lua.dir/lualcm_pack.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lcm-lua.dir/lualcm_pack.c.s"
	cd /home/pi/LEAN-Blimp/build/lcm-lua && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/LEAN-Blimp/lcm-lua/lualcm_pack.c -o CMakeFiles/lcm-lua.dir/lualcm_pack.c.s

lcm-lua/CMakeFiles/lcm-lua.dir/lua_ref_helper.c.o: lcm-lua/CMakeFiles/lcm-lua.dir/flags.make
lcm-lua/CMakeFiles/lcm-lua.dir/lua_ref_helper.c.o: ../lcm-lua/lua_ref_helper.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/LEAN-Blimp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object lcm-lua/CMakeFiles/lcm-lua.dir/lua_ref_helper.c.o"
	cd /home/pi/LEAN-Blimp/build/lcm-lua && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lcm-lua.dir/lua_ref_helper.c.o   -c /home/pi/LEAN-Blimp/lcm-lua/lua_ref_helper.c

lcm-lua/CMakeFiles/lcm-lua.dir/lua_ref_helper.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lcm-lua.dir/lua_ref_helper.c.i"
	cd /home/pi/LEAN-Blimp/build/lcm-lua && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/LEAN-Blimp/lcm-lua/lua_ref_helper.c > CMakeFiles/lcm-lua.dir/lua_ref_helper.c.i

lcm-lua/CMakeFiles/lcm-lua.dir/lua_ref_helper.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lcm-lua.dir/lua_ref_helper.c.s"
	cd /home/pi/LEAN-Blimp/build/lcm-lua && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/LEAN-Blimp/lcm-lua/lua_ref_helper.c -o CMakeFiles/lcm-lua.dir/lua_ref_helper.c.s

lcm-lua/CMakeFiles/lcm-lua.dir/test_unref.c.o: lcm-lua/CMakeFiles/lcm-lua.dir/flags.make
lcm-lua/CMakeFiles/lcm-lua.dir/test_unref.c.o: ../lcm-lua/test_unref.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/LEAN-Blimp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object lcm-lua/CMakeFiles/lcm-lua.dir/test_unref.c.o"
	cd /home/pi/LEAN-Blimp/build/lcm-lua && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lcm-lua.dir/test_unref.c.o   -c /home/pi/LEAN-Blimp/lcm-lua/test_unref.c

lcm-lua/CMakeFiles/lcm-lua.dir/test_unref.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lcm-lua.dir/test_unref.c.i"
	cd /home/pi/LEAN-Blimp/build/lcm-lua && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/LEAN-Blimp/lcm-lua/test_unref.c > CMakeFiles/lcm-lua.dir/test_unref.c.i

lcm-lua/CMakeFiles/lcm-lua.dir/test_unref.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lcm-lua.dir/test_unref.c.s"
	cd /home/pi/LEAN-Blimp/build/lcm-lua && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/LEAN-Blimp/lcm-lua/test_unref.c -o CMakeFiles/lcm-lua.dir/test_unref.c.s

lcm-lua/CMakeFiles/lcm-lua.dir/utf8_check.c.o: lcm-lua/CMakeFiles/lcm-lua.dir/flags.make
lcm-lua/CMakeFiles/lcm-lua.dir/utf8_check.c.o: ../lcm-lua/utf8_check.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/LEAN-Blimp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object lcm-lua/CMakeFiles/lcm-lua.dir/utf8_check.c.o"
	cd /home/pi/LEAN-Blimp/build/lcm-lua && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lcm-lua.dir/utf8_check.c.o   -c /home/pi/LEAN-Blimp/lcm-lua/utf8_check.c

lcm-lua/CMakeFiles/lcm-lua.dir/utf8_check.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lcm-lua.dir/utf8_check.c.i"
	cd /home/pi/LEAN-Blimp/build/lcm-lua && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/LEAN-Blimp/lcm-lua/utf8_check.c > CMakeFiles/lcm-lua.dir/utf8_check.c.i

lcm-lua/CMakeFiles/lcm-lua.dir/utf8_check.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lcm-lua.dir/utf8_check.c.s"
	cd /home/pi/LEAN-Blimp/build/lcm-lua && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/LEAN-Blimp/lcm-lua/utf8_check.c -o CMakeFiles/lcm-lua.dir/utf8_check.c.s

# Object files for target lcm-lua
lcm__lua_OBJECTS = \
"CMakeFiles/lcm-lua.dir/init.c.o" \
"CMakeFiles/lcm-lua.dir/lualcm_hash.c.o" \
"CMakeFiles/lcm-lua.dir/lualcm_lcm.c.o" \
"CMakeFiles/lcm-lua.dir/lualcm_pack.c.o" \
"CMakeFiles/lcm-lua.dir/lua_ref_helper.c.o" \
"CMakeFiles/lcm-lua.dir/test_unref.c.o" \
"CMakeFiles/lcm-lua.dir/utf8_check.c.o"

# External object files for target lcm-lua
lcm__lua_EXTERNAL_OBJECTS =

lcm-lua/lcm.so: lcm-lua/CMakeFiles/lcm-lua.dir/init.c.o
lcm-lua/lcm.so: lcm-lua/CMakeFiles/lcm-lua.dir/lualcm_hash.c.o
lcm-lua/lcm.so: lcm-lua/CMakeFiles/lcm-lua.dir/lualcm_lcm.c.o
lcm-lua/lcm.so: lcm-lua/CMakeFiles/lcm-lua.dir/lualcm_pack.c.o
lcm-lua/lcm.so: lcm-lua/CMakeFiles/lcm-lua.dir/lua_ref_helper.c.o
lcm-lua/lcm.so: lcm-lua/CMakeFiles/lcm-lua.dir/test_unref.c.o
lcm-lua/lcm.so: lcm-lua/CMakeFiles/lcm-lua.dir/utf8_check.c.o
lcm-lua/lcm.so: lcm-lua/CMakeFiles/lcm-lua.dir/build.make
lcm-lua/lcm.so: lcm/liblcm.so.1.4.0
lcm-lua/lcm.so: /usr/lib/i386-linux-gnu/liblua5.1.so
lcm-lua/lcm.so: lcm-lua/CMakeFiles/lcm-lua.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/LEAN-Blimp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking C shared module lcm.so"
	cd /home/pi/LEAN-Blimp/build/lcm-lua && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lcm-lua.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lcm-lua/CMakeFiles/lcm-lua.dir/build: lcm-lua/lcm.so

.PHONY : lcm-lua/CMakeFiles/lcm-lua.dir/build

lcm-lua/CMakeFiles/lcm-lua.dir/clean:
	cd /home/pi/LEAN-Blimp/build/lcm-lua && $(CMAKE_COMMAND) -P CMakeFiles/lcm-lua.dir/cmake_clean.cmake
.PHONY : lcm-lua/CMakeFiles/lcm-lua.dir/clean

lcm-lua/CMakeFiles/lcm-lua.dir/depend:
	cd /home/pi/LEAN-Blimp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/LEAN-Blimp /home/pi/LEAN-Blimp/lcm-lua /home/pi/LEAN-Blimp/build /home/pi/LEAN-Blimp/build/lcm-lua /home/pi/LEAN-Blimp/build/lcm-lua/CMakeFiles/lcm-lua.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lcm-lua/CMakeFiles/lcm-lua.dir/depend
