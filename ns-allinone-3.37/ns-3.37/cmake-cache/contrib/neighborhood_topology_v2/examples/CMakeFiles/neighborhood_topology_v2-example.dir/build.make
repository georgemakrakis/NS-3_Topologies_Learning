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
include contrib/neighborhood_topology_v2/examples/CMakeFiles/neighborhood_topology_v2-example.dir/depend.make

# Include the progress variables for this target.
include contrib/neighborhood_topology_v2/examples/CMakeFiles/neighborhood_topology_v2-example.dir/progress.make

# Include the compile flags for this target's objects.
include contrib/neighborhood_topology_v2/examples/CMakeFiles/neighborhood_topology_v2-example.dir/flags.make

contrib/neighborhood_topology_v2/examples/CMakeFiles/neighborhood_topology_v2-example.dir/neighborhood_topology_v2-example.cc.o: contrib/neighborhood_topology_v2/examples/CMakeFiles/neighborhood_topology_v2-example.dir/flags.make
contrib/neighborhood_topology_v2/examples/CMakeFiles/neighborhood_topology_v2-example.dir/neighborhood_topology_v2-example.cc.o: ../contrib/neighborhood_topology_v2/examples/neighborhood_topology_v2-example.cc
contrib/neighborhood_topology_v2/examples/CMakeFiles/neighborhood_topology_v2-example.dir/neighborhood_topology_v2-example.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx
contrib/neighborhood_topology_v2/examples/CMakeFiles/neighborhood_topology_v2-example.dir/neighborhood_topology_v2-example.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx.gch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object contrib/neighborhood_topology_v2/examples/CMakeFiles/neighborhood_topology_v2-example.dir/neighborhood_topology_v2-example.cc.o"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/neighborhood_topology_v2/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -o CMakeFiles/neighborhood_topology_v2-example.dir/neighborhood_topology_v2-example.cc.o -c /home/george/workspace/ns-allinone-3.37/ns-3.37/contrib/neighborhood_topology_v2/examples/neighborhood_topology_v2-example.cc

contrib/neighborhood_topology_v2/examples/CMakeFiles/neighborhood_topology_v2-example.dir/neighborhood_topology_v2-example.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/neighborhood_topology_v2-example.dir/neighborhood_topology_v2-example.cc.i"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/neighborhood_topology_v2/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -E /home/george/workspace/ns-allinone-3.37/ns-3.37/contrib/neighborhood_topology_v2/examples/neighborhood_topology_v2-example.cc > CMakeFiles/neighborhood_topology_v2-example.dir/neighborhood_topology_v2-example.cc.i

contrib/neighborhood_topology_v2/examples/CMakeFiles/neighborhood_topology_v2-example.dir/neighborhood_topology_v2-example.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/neighborhood_topology_v2-example.dir/neighborhood_topology_v2-example.cc.s"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/neighborhood_topology_v2/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -S /home/george/workspace/ns-allinone-3.37/ns-3.37/contrib/neighborhood_topology_v2/examples/neighborhood_topology_v2-example.cc -o CMakeFiles/neighborhood_topology_v2-example.dir/neighborhood_topology_v2-example.cc.s

# Object files for target neighborhood_topology_v2-example
neighborhood_topology_v2__example_OBJECTS = \
"CMakeFiles/neighborhood_topology_v2-example.dir/neighborhood_topology_v2-example.cc.o"

# External object files for target neighborhood_topology_v2-example
neighborhood_topology_v2__example_EXTERNAL_OBJECTS =

../build/contrib/neighborhood_topology_v2/examples/ns3.37-neighborhood_topology_v2-example-default: contrib/neighborhood_topology_v2/examples/CMakeFiles/neighborhood_topology_v2-example.dir/neighborhood_topology_v2-example.cc.o
../build/contrib/neighborhood_topology_v2/examples/ns3.37-neighborhood_topology_v2-example-default: contrib/neighborhood_topology_v2/examples/CMakeFiles/neighborhood_topology_v2-example.dir/build.make
../build/contrib/neighborhood_topology_v2/examples/ns3.37-neighborhood_topology_v2-example-default: contrib/neighborhood_topology_v2/examples/CMakeFiles/neighborhood_topology_v2-example.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../build/contrib/neighborhood_topology_v2/examples/ns3.37-neighborhood_topology_v2-example-default"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/neighborhood_topology_v2/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/neighborhood_topology_v2-example.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
contrib/neighborhood_topology_v2/examples/CMakeFiles/neighborhood_topology_v2-example.dir/build: ../build/contrib/neighborhood_topology_v2/examples/ns3.37-neighborhood_topology_v2-example-default

.PHONY : contrib/neighborhood_topology_v2/examples/CMakeFiles/neighborhood_topology_v2-example.dir/build

contrib/neighborhood_topology_v2/examples/CMakeFiles/neighborhood_topology_v2-example.dir/clean:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/neighborhood_topology_v2/examples && $(CMAKE_COMMAND) -P CMakeFiles/neighborhood_topology_v2-example.dir/cmake_clean.cmake
.PHONY : contrib/neighborhood_topology_v2/examples/CMakeFiles/neighborhood_topology_v2-example.dir/clean

contrib/neighborhood_topology_v2/examples/CMakeFiles/neighborhood_topology_v2-example.dir/depend:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/george/workspace/ns-allinone-3.37/ns-3.37 /home/george/workspace/ns-allinone-3.37/ns-3.37/contrib/neighborhood_topology_v2/examples /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/neighborhood_topology_v2/examples /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/neighborhood_topology_v2/examples/CMakeFiles/neighborhood_topology_v2-example.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contrib/neighborhood_topology_v2/examples/CMakeFiles/neighborhood_topology_v2-example.dir/depend

