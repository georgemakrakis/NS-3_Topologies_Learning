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
include src/csma/examples/CMakeFiles/csma-packet-socket.dir/depend.make

# Include the progress variables for this target.
include src/csma/examples/CMakeFiles/csma-packet-socket.dir/progress.make

# Include the compile flags for this target's objects.
include src/csma/examples/CMakeFiles/csma-packet-socket.dir/flags.make

src/csma/examples/CMakeFiles/csma-packet-socket.dir/csma-packet-socket.cc.o: src/csma/examples/CMakeFiles/csma-packet-socket.dir/flags.make
src/csma/examples/CMakeFiles/csma-packet-socket.dir/csma-packet-socket.cc.o: ../src/csma/examples/csma-packet-socket.cc
src/csma/examples/CMakeFiles/csma-packet-socket.dir/csma-packet-socket.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx
src/csma/examples/CMakeFiles/csma-packet-socket.dir/csma-packet-socket.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx.gch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/csma/examples/CMakeFiles/csma-packet-socket.dir/csma-packet-socket.cc.o"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/csma/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -o CMakeFiles/csma-packet-socket.dir/csma-packet-socket.cc.o -c /home/george/workspace/ns-allinone-3.37/ns-3.37/src/csma/examples/csma-packet-socket.cc

src/csma/examples/CMakeFiles/csma-packet-socket.dir/csma-packet-socket.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/csma-packet-socket.dir/csma-packet-socket.cc.i"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/csma/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -E /home/george/workspace/ns-allinone-3.37/ns-3.37/src/csma/examples/csma-packet-socket.cc > CMakeFiles/csma-packet-socket.dir/csma-packet-socket.cc.i

src/csma/examples/CMakeFiles/csma-packet-socket.dir/csma-packet-socket.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/csma-packet-socket.dir/csma-packet-socket.cc.s"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/csma/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -S /home/george/workspace/ns-allinone-3.37/ns-3.37/src/csma/examples/csma-packet-socket.cc -o CMakeFiles/csma-packet-socket.dir/csma-packet-socket.cc.s

# Object files for target csma-packet-socket
csma__packet__socket_OBJECTS = \
"CMakeFiles/csma-packet-socket.dir/csma-packet-socket.cc.o"

# External object files for target csma-packet-socket
csma__packet__socket_EXTERNAL_OBJECTS =

../build/src/csma/examples/ns3.37-csma-packet-socket-default: src/csma/examples/CMakeFiles/csma-packet-socket.dir/csma-packet-socket.cc.o
../build/src/csma/examples/ns3.37-csma-packet-socket-default: src/csma/examples/CMakeFiles/csma-packet-socket.dir/build.make
../build/src/csma/examples/ns3.37-csma-packet-socket-default: /usr/lib/x86_64-linux-gnu/libpython3.8.so
../build/src/csma/examples/ns3.37-csma-packet-socket-default: src/csma/examples/CMakeFiles/csma-packet-socket.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../build/src/csma/examples/ns3.37-csma-packet-socket-default"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/csma/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/csma-packet-socket.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/csma/examples/CMakeFiles/csma-packet-socket.dir/build: ../build/src/csma/examples/ns3.37-csma-packet-socket-default

.PHONY : src/csma/examples/CMakeFiles/csma-packet-socket.dir/build

src/csma/examples/CMakeFiles/csma-packet-socket.dir/clean:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/csma/examples && $(CMAKE_COMMAND) -P CMakeFiles/csma-packet-socket.dir/cmake_clean.cmake
.PHONY : src/csma/examples/CMakeFiles/csma-packet-socket.dir/clean

src/csma/examples/CMakeFiles/csma-packet-socket.dir/depend:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/george/workspace/ns-allinone-3.37/ns-3.37 /home/george/workspace/ns-allinone-3.37/ns-3.37/src/csma/examples /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/csma/examples /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/csma/examples/CMakeFiles/csma-packet-socket.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/csma/examples/CMakeFiles/csma-packet-socket.dir/depend

