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

# Utility rule file for hamcrest-core.

# Include the progress variables for this target.
include test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/progress.make

test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core: test/java/hamcrest-core-1.3/hamcrest-core-1.3.jar


test/java/hamcrest-core-1.3/hamcrest-core-1.3.jar: test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_class_filelist
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pi/LEAN-Blimp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Creating Java archive hamcrest-core-1.3.jar"
	cd /home/pi/LEAN-Blimp/build/test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir && /usr/bin/jar -cf /home/pi/LEAN-Blimp/build/test/java/hamcrest-core-1.3/hamcrest-core-1.3.jar @java_class_filelist
	cd /home/pi/LEAN-Blimp/build/test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir && /usr/bin/cmake -D_JAVA_TARGET_DIR=/home/pi/LEAN-Blimp/build/test/java/hamcrest-core-1.3 -D_JAVA_TARGET_OUTPUT_NAME=hamcrest-core-1.3.jar -D_JAVA_TARGET_OUTPUT_LINK= -P /usr/share/cmake-3.13/Modules/UseJavaSymlinks.cmake

test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_class_filelist: test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_compiled_hamcrest-core
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pi/LEAN-Blimp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating CMakeFiles/hamcrest-core.dir/java_class_filelist"
	cd /home/pi/LEAN-Blimp/test/java/hamcrest-core-1.3 && /usr/bin/cmake -DCMAKE_JAVA_CLASS_OUTPUT_PATH=/home/pi/LEAN-Blimp/build/test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir -DCMAKE_JAR_CLASSES_PREFIX="" -P /usr/share/cmake-3.13/Modules/UseJavaClassFilelist.cmake

test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_compiled_hamcrest-core: ../test/java/hamcrest-core-1.3/org/hamcrest/BaseDescription.java
test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_compiled_hamcrest-core: ../test/java/hamcrest-core-1.3/org/hamcrest/BaseMatcher.java
test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_compiled_hamcrest-core: ../test/java/hamcrest-core-1.3/org/hamcrest/Condition.java
test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_compiled_hamcrest-core: ../test/java/hamcrest-core-1.3/org/hamcrest/core/AllOf.java
test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_compiled_hamcrest-core: ../test/java/hamcrest-core-1.3/org/hamcrest/core/AnyOf.java
test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_compiled_hamcrest-core: ../test/java/hamcrest-core-1.3/org/hamcrest/core/CombinableMatcher.java
test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_compiled_hamcrest-core: ../test/java/hamcrest-core-1.3/org/hamcrest/core/DescribedAs.java
test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_compiled_hamcrest-core: ../test/java/hamcrest-core-1.3/org/hamcrest/core/Every.java
test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_compiled_hamcrest-core: ../test/java/hamcrest-core-1.3/org/hamcrest/core/IsAnything.java
test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_compiled_hamcrest-core: ../test/java/hamcrest-core-1.3/org/hamcrest/core/IsCollectionContaining.java
test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_compiled_hamcrest-core: ../test/java/hamcrest-core-1.3/org/hamcrest/core/IsEqual.java
test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_compiled_hamcrest-core: ../test/java/hamcrest-core-1.3/org/hamcrest/core/IsInstanceOf.java
test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_compiled_hamcrest-core: ../test/java/hamcrest-core-1.3/org/hamcrest/core/Is.java
test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_compiled_hamcrest-core: ../test/java/hamcrest-core-1.3/org/hamcrest/core/IsNot.java
test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_compiled_hamcrest-core: ../test/java/hamcrest-core-1.3/org/hamcrest/core/IsNull.java
test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_compiled_hamcrest-core: ../test/java/hamcrest-core-1.3/org/hamcrest/core/IsSame.java
test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_compiled_hamcrest-core: ../test/java/hamcrest-core-1.3/org/hamcrest/CoreMatchers.java
test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_compiled_hamcrest-core: ../test/java/hamcrest-core-1.3/org/hamcrest/core/ShortcutCombination.java
test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_compiled_hamcrest-core: ../test/java/hamcrest-core-1.3/org/hamcrest/core/StringContains.java
test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_compiled_hamcrest-core: ../test/java/hamcrest-core-1.3/org/hamcrest/core/StringEndsWith.java
test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_compiled_hamcrest-core: ../test/java/hamcrest-core-1.3/org/hamcrest/core/StringStartsWith.java
test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_compiled_hamcrest-core: ../test/java/hamcrest-core-1.3/org/hamcrest/core/SubstringMatcher.java
test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_compiled_hamcrest-core: ../test/java/hamcrest-core-1.3/org/hamcrest/CustomMatcher.java
test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_compiled_hamcrest-core: ../test/java/hamcrest-core-1.3/org/hamcrest/CustomTypeSafeMatcher.java
test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_compiled_hamcrest-core: ../test/java/hamcrest-core-1.3/org/hamcrest/Description.java
test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_compiled_hamcrest-core: ../test/java/hamcrest-core-1.3/org/hamcrest/DiagnosingMatcher.java
test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_compiled_hamcrest-core: ../test/java/hamcrest-core-1.3/org/hamcrest/Factory.java
test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_compiled_hamcrest-core: ../test/java/hamcrest-core-1.3/org/hamcrest/FeatureMatcher.java
test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_compiled_hamcrest-core: ../test/java/hamcrest-core-1.3/org/hamcrest/internal/ArrayIterator.java
test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_compiled_hamcrest-core: ../test/java/hamcrest-core-1.3/org/hamcrest/internal/ReflectiveTypeFinder.java
test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_compiled_hamcrest-core: ../test/java/hamcrest-core-1.3/org/hamcrest/internal/SelfDescribingValueIterator.java
test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_compiled_hamcrest-core: ../test/java/hamcrest-core-1.3/org/hamcrest/internal/SelfDescribingValue.java
test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_compiled_hamcrest-core: ../test/java/hamcrest-core-1.3/org/hamcrest/MatcherAssert.java
test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_compiled_hamcrest-core: ../test/java/hamcrest-core-1.3/org/hamcrest/Matcher.java
test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_compiled_hamcrest-core: ../test/java/hamcrest-core-1.3/org/hamcrest/SelfDescribing.java
test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_compiled_hamcrest-core: ../test/java/hamcrest-core-1.3/org/hamcrest/StringDescription.java
test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_compiled_hamcrest-core: ../test/java/hamcrest-core-1.3/org/hamcrest/TypeSafeDiagnosingMatcher.java
test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_compiled_hamcrest-core: ../test/java/hamcrest-core-1.3/org/hamcrest/TypeSafeMatcher.java
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pi/LEAN-Blimp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building Java objects for hamcrest-core.jar"
	cd /home/pi/LEAN-Blimp/test/java/hamcrest-core-1.3 && /usr/bin/javac -classpath :/home/pi/LEAN-Blimp/test/java/hamcrest-core-1.3:/home/pi/LEAN-Blimp/build/test/java/hamcrest-core-1.3 -d /home/pi/LEAN-Blimp/build/test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir @/home/pi/LEAN-Blimp/build/test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_sources
	cd /home/pi/LEAN-Blimp/test/java/hamcrest-core-1.3 && /usr/bin/cmake -E touch /home/pi/LEAN-Blimp/build/test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_compiled_hamcrest-core

hamcrest-core: test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core
hamcrest-core: test/java/hamcrest-core-1.3/hamcrest-core-1.3.jar
hamcrest-core: test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_class_filelist
hamcrest-core: test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/java_compiled_hamcrest-core
hamcrest-core: test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/build.make

.PHONY : hamcrest-core

# Rule to build all files generated by this target.
test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/build: hamcrest-core

.PHONY : test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/build

test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/clean:
	cd /home/pi/LEAN-Blimp/build/test/java/hamcrest-core-1.3 && $(CMAKE_COMMAND) -P CMakeFiles/hamcrest-core.dir/cmake_clean.cmake
.PHONY : test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/clean

test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/depend:
	cd /home/pi/LEAN-Blimp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/LEAN-Blimp /home/pi/LEAN-Blimp/test/java/hamcrest-core-1.3 /home/pi/LEAN-Blimp/build /home/pi/LEAN-Blimp/build/test/java/hamcrest-core-1.3 /home/pi/LEAN-Blimp/build/test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/java/hamcrest-core-1.3/CMakeFiles/hamcrest-core.dir/depend

