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
include examples/traffic-control/CMakeFiles/tbf-example.dir/depend.make

# Include the progress variables for this target.
include examples/traffic-control/CMakeFiles/tbf-example.dir/progress.make

# Include the compile flags for this target's objects.
include examples/traffic-control/CMakeFiles/tbf-example.dir/flags.make

examples/traffic-control/CMakeFiles/tbf-example.dir/tbf-example.cc.o: examples/traffic-control/CMakeFiles/tbf-example.dir/flags.make
examples/traffic-control/CMakeFiles/tbf-example.dir/tbf-example.cc.o: ../examples/traffic-control/tbf-example.cc
examples/traffic-control/CMakeFiles/tbf-example.dir/tbf-example.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx
examples/traffic-control/CMakeFiles/tbf-example.dir/tbf-example.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx.gch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/traffic-control/CMakeFiles/tbf-example.dir/tbf-example.cc.o"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/examples/traffic-control && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -o CMakeFiles/tbf-example.dir/tbf-example.cc.o -c /home/george/workspace/ns-allinone-3.37/ns-3.37/examples/traffic-control/tbf-example.cc

examples/traffic-control/CMakeFiles/tbf-example.dir/tbf-example.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tbf-example.dir/tbf-example.cc.i"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/examples/traffic-control && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -E /home/george/workspace/ns-allinone-3.37/ns-3.37/examples/traffic-control/tbf-example.cc > CMakeFiles/tbf-example.dir/tbf-example.cc.i

examples/traffic-control/CMakeFiles/tbf-example.dir/tbf-example.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tbf-example.dir/tbf-example.cc.s"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/examples/traffic-control && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -S /home/george/workspace/ns-allinone-3.37/ns-3.37/examples/traffic-control/tbf-example.cc -o CMakeFiles/tbf-example.dir/tbf-example.cc.s

# Object files for target tbf-example
tbf__example_OBJECTS = \
"CMakeFiles/tbf-example.dir/tbf-example.cc.o"

# External object files for target tbf-example
tbf__example_EXTERNAL_OBJECTS =

../build/examples/traffic-control/ns3.37-tbf-example-default: examples/traffic-control/CMakeFiles/tbf-example.dir/tbf-example.cc.o
../build/examples/traffic-control/ns3.37-tbf-example-default: examples/traffic-control/CMakeFiles/tbf-example.dir/build.make
../build/examples/traffic-control/ns3.37-tbf-example-default: /usr/lib/x86_64-linux-gnu/libpython3.8.so
../build/examples/traffic-control/ns3.37-tbf-example-default: examples/traffic-control/CMakeFiles/tbf-example.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../build/examples/traffic-control/ns3.37-tbf-example-default"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/examples/traffic-control && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tbf-example.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/traffic-control/CMakeFiles/tbf-example.dir/build: ../build/examples/traffic-control/ns3.37-tbf-example-default

.PHONY : examples/traffic-control/CMakeFiles/tbf-example.dir/build

examples/traffic-control/CMakeFiles/tbf-example.dir/clean:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/examples/traffic-control && $(CMAKE_COMMAND) -P CMakeFiles/tbf-example.dir/cmake_clean.cmake
.PHONY : examples/traffic-control/CMakeFiles/tbf-example.dir/clean

examples/traffic-control/CMakeFiles/tbf-example.dir/depend:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/george/workspace/ns-allinone-3.37/ns-3.37 /home/george/workspace/ns-allinone-3.37/ns-3.37/examples/traffic-control /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/examples/traffic-control /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/examples/traffic-control/CMakeFiles/tbf-example.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/traffic-control/CMakeFiles/tbf-example.dir/depend

