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
include src/spectrum/examples/CMakeFiles/three-gpp-channel-example.dir/depend.make

# Include the progress variables for this target.
include src/spectrum/examples/CMakeFiles/three-gpp-channel-example.dir/progress.make

# Include the compile flags for this target's objects.
include src/spectrum/examples/CMakeFiles/three-gpp-channel-example.dir/flags.make

src/spectrum/examples/CMakeFiles/three-gpp-channel-example.dir/three-gpp-channel-example.cc.o: src/spectrum/examples/CMakeFiles/three-gpp-channel-example.dir/flags.make
src/spectrum/examples/CMakeFiles/three-gpp-channel-example.dir/three-gpp-channel-example.cc.o: ../src/spectrum/examples/three-gpp-channel-example.cc
src/spectrum/examples/CMakeFiles/three-gpp-channel-example.dir/three-gpp-channel-example.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx
src/spectrum/examples/CMakeFiles/three-gpp-channel-example.dir/three-gpp-channel-example.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx.gch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/spectrum/examples/CMakeFiles/three-gpp-channel-example.dir/three-gpp-channel-example.cc.o"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/spectrum/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -o CMakeFiles/three-gpp-channel-example.dir/three-gpp-channel-example.cc.o -c /home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/examples/three-gpp-channel-example.cc

src/spectrum/examples/CMakeFiles/three-gpp-channel-example.dir/three-gpp-channel-example.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/three-gpp-channel-example.dir/three-gpp-channel-example.cc.i"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/spectrum/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -E /home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/examples/three-gpp-channel-example.cc > CMakeFiles/three-gpp-channel-example.dir/three-gpp-channel-example.cc.i

src/spectrum/examples/CMakeFiles/three-gpp-channel-example.dir/three-gpp-channel-example.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/three-gpp-channel-example.dir/three-gpp-channel-example.cc.s"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/spectrum/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -S /home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/examples/three-gpp-channel-example.cc -o CMakeFiles/three-gpp-channel-example.dir/three-gpp-channel-example.cc.s

# Object files for target three-gpp-channel-example
three__gpp__channel__example_OBJECTS = \
"CMakeFiles/three-gpp-channel-example.dir/three-gpp-channel-example.cc.o"

# External object files for target three-gpp-channel-example
three__gpp__channel__example_EXTERNAL_OBJECTS =

../build/src/spectrum/examples/ns3.37-three-gpp-channel-example-default: src/spectrum/examples/CMakeFiles/three-gpp-channel-example.dir/three-gpp-channel-example.cc.o
../build/src/spectrum/examples/ns3.37-three-gpp-channel-example-default: src/spectrum/examples/CMakeFiles/three-gpp-channel-example.dir/build.make
../build/src/spectrum/examples/ns3.37-three-gpp-channel-example-default: /usr/lib/x86_64-linux-gnu/libpython3.8.so
../build/src/spectrum/examples/ns3.37-three-gpp-channel-example-default: src/spectrum/examples/CMakeFiles/three-gpp-channel-example.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../build/src/spectrum/examples/ns3.37-three-gpp-channel-example-default"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/spectrum/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/three-gpp-channel-example.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/spectrum/examples/CMakeFiles/three-gpp-channel-example.dir/build: ../build/src/spectrum/examples/ns3.37-three-gpp-channel-example-default

.PHONY : src/spectrum/examples/CMakeFiles/three-gpp-channel-example.dir/build

src/spectrum/examples/CMakeFiles/three-gpp-channel-example.dir/clean:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/spectrum/examples && $(CMAKE_COMMAND) -P CMakeFiles/three-gpp-channel-example.dir/cmake_clean.cmake
.PHONY : src/spectrum/examples/CMakeFiles/three-gpp-channel-example.dir/clean

src/spectrum/examples/CMakeFiles/three-gpp-channel-example.dir/depend:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/george/workspace/ns-allinone-3.37/ns-3.37 /home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/examples /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/spectrum/examples /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/spectrum/examples/CMakeFiles/three-gpp-channel-example.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/spectrum/examples/CMakeFiles/three-gpp-channel-example.dir/depend

