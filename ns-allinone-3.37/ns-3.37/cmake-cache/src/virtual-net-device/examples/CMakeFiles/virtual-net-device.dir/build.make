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
include src/virtual-net-device/examples/CMakeFiles/virtual-net-device.dir/depend.make

# Include the progress variables for this target.
include src/virtual-net-device/examples/CMakeFiles/virtual-net-device.dir/progress.make

# Include the compile flags for this target's objects.
include src/virtual-net-device/examples/CMakeFiles/virtual-net-device.dir/flags.make

src/virtual-net-device/examples/CMakeFiles/virtual-net-device.dir/virtual-net-device.cc.o: src/virtual-net-device/examples/CMakeFiles/virtual-net-device.dir/flags.make
src/virtual-net-device/examples/CMakeFiles/virtual-net-device.dir/virtual-net-device.cc.o: ../src/virtual-net-device/examples/virtual-net-device.cc
src/virtual-net-device/examples/CMakeFiles/virtual-net-device.dir/virtual-net-device.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx
src/virtual-net-device/examples/CMakeFiles/virtual-net-device.dir/virtual-net-device.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx.gch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/virtual-net-device/examples/CMakeFiles/virtual-net-device.dir/virtual-net-device.cc.o"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/virtual-net-device/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -o CMakeFiles/virtual-net-device.dir/virtual-net-device.cc.o -c /home/george/workspace/ns-allinone-3.37/ns-3.37/src/virtual-net-device/examples/virtual-net-device.cc

src/virtual-net-device/examples/CMakeFiles/virtual-net-device.dir/virtual-net-device.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/virtual-net-device.dir/virtual-net-device.cc.i"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/virtual-net-device/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -E /home/george/workspace/ns-allinone-3.37/ns-3.37/src/virtual-net-device/examples/virtual-net-device.cc > CMakeFiles/virtual-net-device.dir/virtual-net-device.cc.i

src/virtual-net-device/examples/CMakeFiles/virtual-net-device.dir/virtual-net-device.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/virtual-net-device.dir/virtual-net-device.cc.s"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/virtual-net-device/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -S /home/george/workspace/ns-allinone-3.37/ns-3.37/src/virtual-net-device/examples/virtual-net-device.cc -o CMakeFiles/virtual-net-device.dir/virtual-net-device.cc.s

# Object files for target virtual-net-device
virtual__net__device_OBJECTS = \
"CMakeFiles/virtual-net-device.dir/virtual-net-device.cc.o"

# External object files for target virtual-net-device
virtual__net__device_EXTERNAL_OBJECTS =

../build/src/virtual-net-device/examples/ns3.37-virtual-net-device-default: src/virtual-net-device/examples/CMakeFiles/virtual-net-device.dir/virtual-net-device.cc.o
../build/src/virtual-net-device/examples/ns3.37-virtual-net-device-default: src/virtual-net-device/examples/CMakeFiles/virtual-net-device.dir/build.make
../build/src/virtual-net-device/examples/ns3.37-virtual-net-device-default: /usr/lib/x86_64-linux-gnu/libpython3.8.so
../build/src/virtual-net-device/examples/ns3.37-virtual-net-device-default: src/virtual-net-device/examples/CMakeFiles/virtual-net-device.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../build/src/virtual-net-device/examples/ns3.37-virtual-net-device-default"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/virtual-net-device/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/virtual-net-device.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/virtual-net-device/examples/CMakeFiles/virtual-net-device.dir/build: ../build/src/virtual-net-device/examples/ns3.37-virtual-net-device-default

.PHONY : src/virtual-net-device/examples/CMakeFiles/virtual-net-device.dir/build

src/virtual-net-device/examples/CMakeFiles/virtual-net-device.dir/clean:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/virtual-net-device/examples && $(CMAKE_COMMAND) -P CMakeFiles/virtual-net-device.dir/cmake_clean.cmake
.PHONY : src/virtual-net-device/examples/CMakeFiles/virtual-net-device.dir/clean

src/virtual-net-device/examples/CMakeFiles/virtual-net-device.dir/depend:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/george/workspace/ns-allinone-3.37/ns-3.37 /home/george/workspace/ns-allinone-3.37/ns-3.37/src/virtual-net-device/examples /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/virtual-net-device/examples /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/virtual-net-device/examples/CMakeFiles/virtual-net-device.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/virtual-net-device/examples/CMakeFiles/virtual-net-device.dir/depend

