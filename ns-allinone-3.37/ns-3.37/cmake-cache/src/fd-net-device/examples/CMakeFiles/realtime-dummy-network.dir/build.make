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
include src/fd-net-device/examples/CMakeFiles/realtime-dummy-network.dir/depend.make

# Include the progress variables for this target.
include src/fd-net-device/examples/CMakeFiles/realtime-dummy-network.dir/progress.make

# Include the compile flags for this target's objects.
include src/fd-net-device/examples/CMakeFiles/realtime-dummy-network.dir/flags.make

src/fd-net-device/examples/CMakeFiles/realtime-dummy-network.dir/realtime-dummy-network.cc.o: src/fd-net-device/examples/CMakeFiles/realtime-dummy-network.dir/flags.make
src/fd-net-device/examples/CMakeFiles/realtime-dummy-network.dir/realtime-dummy-network.cc.o: ../src/fd-net-device/examples/realtime-dummy-network.cc
src/fd-net-device/examples/CMakeFiles/realtime-dummy-network.dir/realtime-dummy-network.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx
src/fd-net-device/examples/CMakeFiles/realtime-dummy-network.dir/realtime-dummy-network.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx.gch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/fd-net-device/examples/CMakeFiles/realtime-dummy-network.dir/realtime-dummy-network.cc.o"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/fd-net-device/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -o CMakeFiles/realtime-dummy-network.dir/realtime-dummy-network.cc.o -c /home/george/workspace/ns-allinone-3.37/ns-3.37/src/fd-net-device/examples/realtime-dummy-network.cc

src/fd-net-device/examples/CMakeFiles/realtime-dummy-network.dir/realtime-dummy-network.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/realtime-dummy-network.dir/realtime-dummy-network.cc.i"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/fd-net-device/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -E /home/george/workspace/ns-allinone-3.37/ns-3.37/src/fd-net-device/examples/realtime-dummy-network.cc > CMakeFiles/realtime-dummy-network.dir/realtime-dummy-network.cc.i

src/fd-net-device/examples/CMakeFiles/realtime-dummy-network.dir/realtime-dummy-network.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/realtime-dummy-network.dir/realtime-dummy-network.cc.s"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/fd-net-device/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -S /home/george/workspace/ns-allinone-3.37/ns-3.37/src/fd-net-device/examples/realtime-dummy-network.cc -o CMakeFiles/realtime-dummy-network.dir/realtime-dummy-network.cc.s

# Object files for target realtime-dummy-network
realtime__dummy__network_OBJECTS = \
"CMakeFiles/realtime-dummy-network.dir/realtime-dummy-network.cc.o"

# External object files for target realtime-dummy-network
realtime__dummy__network_EXTERNAL_OBJECTS =

../build/src/fd-net-device/examples/ns3.37-realtime-dummy-network-default: src/fd-net-device/examples/CMakeFiles/realtime-dummy-network.dir/realtime-dummy-network.cc.o
../build/src/fd-net-device/examples/ns3.37-realtime-dummy-network-default: src/fd-net-device/examples/CMakeFiles/realtime-dummy-network.dir/build.make
../build/src/fd-net-device/examples/ns3.37-realtime-dummy-network-default: /usr/lib/x86_64-linux-gnu/libpython3.8.so
../build/src/fd-net-device/examples/ns3.37-realtime-dummy-network-default: src/fd-net-device/examples/CMakeFiles/realtime-dummy-network.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../build/src/fd-net-device/examples/ns3.37-realtime-dummy-network-default"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/fd-net-device/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/realtime-dummy-network.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/fd-net-device/examples/CMakeFiles/realtime-dummy-network.dir/build: ../build/src/fd-net-device/examples/ns3.37-realtime-dummy-network-default

.PHONY : src/fd-net-device/examples/CMakeFiles/realtime-dummy-network.dir/build

src/fd-net-device/examples/CMakeFiles/realtime-dummy-network.dir/clean:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/fd-net-device/examples && $(CMAKE_COMMAND) -P CMakeFiles/realtime-dummy-network.dir/cmake_clean.cmake
.PHONY : src/fd-net-device/examples/CMakeFiles/realtime-dummy-network.dir/clean

src/fd-net-device/examples/CMakeFiles/realtime-dummy-network.dir/depend:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/george/workspace/ns-allinone-3.37/ns-3.37 /home/george/workspace/ns-allinone-3.37/ns-3.37/src/fd-net-device/examples /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/fd-net-device/examples /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/fd-net-device/examples/CMakeFiles/realtime-dummy-network.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/fd-net-device/examples/CMakeFiles/realtime-dummy-network.dir/depend

