# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/george/workspace/ns-allinone-3.37/ns-3.37

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache

# Include any dependencies generated for this target.
include src/core/examples/CMakeFiles/sample-random-variable-stream.dir/depend.make

# Include the progress variables for this target.
include src/core/examples/CMakeFiles/sample-random-variable-stream.dir/progress.make

# Include the compile flags for this target's objects.
include src/core/examples/CMakeFiles/sample-random-variable-stream.dir/flags.make

src/core/examples/CMakeFiles/sample-random-variable-stream.dir/sample-random-variable-stream.cc.o: src/core/examples/CMakeFiles/sample-random-variable-stream.dir/flags.make
src/core/examples/CMakeFiles/sample-random-variable-stream.dir/sample-random-variable-stream.cc.o: ../src/core/examples/sample-random-variable-stream.cc
src/core/examples/CMakeFiles/sample-random-variable-stream.dir/sample-random-variable-stream.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx
src/core/examples/CMakeFiles/sample-random-variable-stream.dir/sample-random-variable-stream.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx.gch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/core/examples/CMakeFiles/sample-random-variable-stream.dir/sample-random-variable-stream.cc.o"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/core/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -o CMakeFiles/sample-random-variable-stream.dir/sample-random-variable-stream.cc.o -c /home/george/workspace/ns-allinone-3.37/ns-3.37/src/core/examples/sample-random-variable-stream.cc

src/core/examples/CMakeFiles/sample-random-variable-stream.dir/sample-random-variable-stream.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sample-random-variable-stream.dir/sample-random-variable-stream.cc.i"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/core/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -E /home/george/workspace/ns-allinone-3.37/ns-3.37/src/core/examples/sample-random-variable-stream.cc > CMakeFiles/sample-random-variable-stream.dir/sample-random-variable-stream.cc.i

src/core/examples/CMakeFiles/sample-random-variable-stream.dir/sample-random-variable-stream.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sample-random-variable-stream.dir/sample-random-variable-stream.cc.s"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/core/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -S /home/george/workspace/ns-allinone-3.37/ns-3.37/src/core/examples/sample-random-variable-stream.cc -o CMakeFiles/sample-random-variable-stream.dir/sample-random-variable-stream.cc.s

# Object files for target sample-random-variable-stream
sample__random__variable__stream_OBJECTS = \
"CMakeFiles/sample-random-variable-stream.dir/sample-random-variable-stream.cc.o"

# External object files for target sample-random-variable-stream
sample__random__variable__stream_EXTERNAL_OBJECTS =

../build/src/core/examples/ns3.37-sample-random-variable-stream-default: src/core/examples/CMakeFiles/sample-random-variable-stream.dir/sample-random-variable-stream.cc.o
../build/src/core/examples/ns3.37-sample-random-variable-stream-default: src/core/examples/CMakeFiles/sample-random-variable-stream.dir/build.make
../build/src/core/examples/ns3.37-sample-random-variable-stream-default: /usr/lib/x86_64-linux-gnu/libpython3.8.so
../build/src/core/examples/ns3.37-sample-random-variable-stream-default: src/core/examples/CMakeFiles/sample-random-variable-stream.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../build/src/core/examples/ns3.37-sample-random-variable-stream-default"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/core/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sample-random-variable-stream.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/core/examples/CMakeFiles/sample-random-variable-stream.dir/build: ../build/src/core/examples/ns3.37-sample-random-variable-stream-default

.PHONY : src/core/examples/CMakeFiles/sample-random-variable-stream.dir/build

src/core/examples/CMakeFiles/sample-random-variable-stream.dir/clean:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/core/examples && $(CMAKE_COMMAND) -P CMakeFiles/sample-random-variable-stream.dir/cmake_clean.cmake
.PHONY : src/core/examples/CMakeFiles/sample-random-variable-stream.dir/clean

src/core/examples/CMakeFiles/sample-random-variable-stream.dir/depend:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/george/workspace/ns-allinone-3.37/ns-3.37 /home/george/workspace/ns-allinone-3.37/ns-3.37/src/core/examples /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/core/examples /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/core/examples/CMakeFiles/sample-random-variable-stream.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/core/examples/CMakeFiles/sample-random-variable-stream.dir/depend

