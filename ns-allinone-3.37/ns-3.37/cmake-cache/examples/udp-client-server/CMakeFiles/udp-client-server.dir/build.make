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
include examples/udp-client-server/CMakeFiles/udp-client-server.dir/depend.make

# Include the progress variables for this target.
include examples/udp-client-server/CMakeFiles/udp-client-server.dir/progress.make

# Include the compile flags for this target's objects.
include examples/udp-client-server/CMakeFiles/udp-client-server.dir/flags.make

examples/udp-client-server/CMakeFiles/udp-client-server.dir/udp-client-server.cc.o: examples/udp-client-server/CMakeFiles/udp-client-server.dir/flags.make
examples/udp-client-server/CMakeFiles/udp-client-server.dir/udp-client-server.cc.o: ../examples/udp-client-server/udp-client-server.cc
examples/udp-client-server/CMakeFiles/udp-client-server.dir/udp-client-server.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx
examples/udp-client-server/CMakeFiles/udp-client-server.dir/udp-client-server.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx.gch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/udp-client-server/CMakeFiles/udp-client-server.dir/udp-client-server.cc.o"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/examples/udp-client-server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -o CMakeFiles/udp-client-server.dir/udp-client-server.cc.o -c /home/george/workspace/ns-allinone-3.37/ns-3.37/examples/udp-client-server/udp-client-server.cc

examples/udp-client-server/CMakeFiles/udp-client-server.dir/udp-client-server.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/udp-client-server.dir/udp-client-server.cc.i"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/examples/udp-client-server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -E /home/george/workspace/ns-allinone-3.37/ns-3.37/examples/udp-client-server/udp-client-server.cc > CMakeFiles/udp-client-server.dir/udp-client-server.cc.i

examples/udp-client-server/CMakeFiles/udp-client-server.dir/udp-client-server.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/udp-client-server.dir/udp-client-server.cc.s"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/examples/udp-client-server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -S /home/george/workspace/ns-allinone-3.37/ns-3.37/examples/udp-client-server/udp-client-server.cc -o CMakeFiles/udp-client-server.dir/udp-client-server.cc.s

# Object files for target udp-client-server
udp__client__server_OBJECTS = \
"CMakeFiles/udp-client-server.dir/udp-client-server.cc.o"

# External object files for target udp-client-server
udp__client__server_EXTERNAL_OBJECTS =

../build/examples/udp-client-server/ns3.37-udp-client-server-default: examples/udp-client-server/CMakeFiles/udp-client-server.dir/udp-client-server.cc.o
../build/examples/udp-client-server/ns3.37-udp-client-server-default: examples/udp-client-server/CMakeFiles/udp-client-server.dir/build.make
../build/examples/udp-client-server/ns3.37-udp-client-server-default: /usr/lib/x86_64-linux-gnu/libpython3.8.so
../build/examples/udp-client-server/ns3.37-udp-client-server-default: examples/udp-client-server/CMakeFiles/udp-client-server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../build/examples/udp-client-server/ns3.37-udp-client-server-default"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/examples/udp-client-server && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/udp-client-server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/udp-client-server/CMakeFiles/udp-client-server.dir/build: ../build/examples/udp-client-server/ns3.37-udp-client-server-default

.PHONY : examples/udp-client-server/CMakeFiles/udp-client-server.dir/build

examples/udp-client-server/CMakeFiles/udp-client-server.dir/clean:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/examples/udp-client-server && $(CMAKE_COMMAND) -P CMakeFiles/udp-client-server.dir/cmake_clean.cmake
.PHONY : examples/udp-client-server/CMakeFiles/udp-client-server.dir/clean

examples/udp-client-server/CMakeFiles/udp-client-server.dir/depend:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/george/workspace/ns-allinone-3.37/ns-3.37 /home/george/workspace/ns-allinone-3.37/ns-3.37/examples/udp-client-server /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/examples/udp-client-server /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/examples/udp-client-server/CMakeFiles/udp-client-server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/udp-client-server/CMakeFiles/udp-client-server.dir/depend

