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
include src/network/examples/CMakeFiles/packet-socket-apps.dir/depend.make

# Include the progress variables for this target.
include src/network/examples/CMakeFiles/packet-socket-apps.dir/progress.make

# Include the compile flags for this target's objects.
include src/network/examples/CMakeFiles/packet-socket-apps.dir/flags.make

src/network/examples/CMakeFiles/packet-socket-apps.dir/packet-socket-apps.cc.o: src/network/examples/CMakeFiles/packet-socket-apps.dir/flags.make
src/network/examples/CMakeFiles/packet-socket-apps.dir/packet-socket-apps.cc.o: ../src/network/examples/packet-socket-apps.cc
src/network/examples/CMakeFiles/packet-socket-apps.dir/packet-socket-apps.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx
src/network/examples/CMakeFiles/packet-socket-apps.dir/packet-socket-apps.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx.gch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/network/examples/CMakeFiles/packet-socket-apps.dir/packet-socket-apps.cc.o"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/network/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -o CMakeFiles/packet-socket-apps.dir/packet-socket-apps.cc.o -c /home/george/workspace/ns-allinone-3.37/ns-3.37/src/network/examples/packet-socket-apps.cc

src/network/examples/CMakeFiles/packet-socket-apps.dir/packet-socket-apps.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/packet-socket-apps.dir/packet-socket-apps.cc.i"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/network/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -E /home/george/workspace/ns-allinone-3.37/ns-3.37/src/network/examples/packet-socket-apps.cc > CMakeFiles/packet-socket-apps.dir/packet-socket-apps.cc.i

src/network/examples/CMakeFiles/packet-socket-apps.dir/packet-socket-apps.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/packet-socket-apps.dir/packet-socket-apps.cc.s"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/network/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -S /home/george/workspace/ns-allinone-3.37/ns-3.37/src/network/examples/packet-socket-apps.cc -o CMakeFiles/packet-socket-apps.dir/packet-socket-apps.cc.s

# Object files for target packet-socket-apps
packet__socket__apps_OBJECTS = \
"CMakeFiles/packet-socket-apps.dir/packet-socket-apps.cc.o"

# External object files for target packet-socket-apps
packet__socket__apps_EXTERNAL_OBJECTS =

../build/src/network/examples/ns3.37-packet-socket-apps-default: src/network/examples/CMakeFiles/packet-socket-apps.dir/packet-socket-apps.cc.o
../build/src/network/examples/ns3.37-packet-socket-apps-default: src/network/examples/CMakeFiles/packet-socket-apps.dir/build.make
../build/src/network/examples/ns3.37-packet-socket-apps-default: /usr/lib/x86_64-linux-gnu/libpython3.8.so
../build/src/network/examples/ns3.37-packet-socket-apps-default: src/network/examples/CMakeFiles/packet-socket-apps.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../build/src/network/examples/ns3.37-packet-socket-apps-default"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/network/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/packet-socket-apps.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/network/examples/CMakeFiles/packet-socket-apps.dir/build: ../build/src/network/examples/ns3.37-packet-socket-apps-default

.PHONY : src/network/examples/CMakeFiles/packet-socket-apps.dir/build

src/network/examples/CMakeFiles/packet-socket-apps.dir/clean:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/network/examples && $(CMAKE_COMMAND) -P CMakeFiles/packet-socket-apps.dir/cmake_clean.cmake
.PHONY : src/network/examples/CMakeFiles/packet-socket-apps.dir/clean

src/network/examples/CMakeFiles/packet-socket-apps.dir/depend:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/george/workspace/ns-allinone-3.37/ns-3.37 /home/george/workspace/ns-allinone-3.37/ns-3.37/src/network/examples /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/network/examples /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/network/examples/CMakeFiles/packet-socket-apps.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/network/examples/CMakeFiles/packet-socket-apps.dir/depend

