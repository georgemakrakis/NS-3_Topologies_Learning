# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/george/workspace/ns-allinone-3.37/ns-3.37

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache

# Include any dependencies generated for this target.
include contrib/EmulatedUdpEchoExample_Copy/examples/CMakeFiles/EmulatedUdpEchoExample_Copy-example.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include contrib/EmulatedUdpEchoExample_Copy/examples/CMakeFiles/EmulatedUdpEchoExample_Copy-example.dir/compiler_depend.make

# Include the progress variables for this target.
include contrib/EmulatedUdpEchoExample_Copy/examples/CMakeFiles/EmulatedUdpEchoExample_Copy-example.dir/progress.make

# Include the compile flags for this target's objects.
include contrib/EmulatedUdpEchoExample_Copy/examples/CMakeFiles/EmulatedUdpEchoExample_Copy-example.dir/flags.make

contrib/EmulatedUdpEchoExample_Copy/examples/CMakeFiles/EmulatedUdpEchoExample_Copy-example.dir/EmulatedUdpEchoExample_Copy-example.cc.o: contrib/EmulatedUdpEchoExample_Copy/examples/CMakeFiles/EmulatedUdpEchoExample_Copy-example.dir/flags.make
contrib/EmulatedUdpEchoExample_Copy/examples/CMakeFiles/EmulatedUdpEchoExample_Copy-example.dir/EmulatedUdpEchoExample_Copy-example.cc.o: ../contrib/EmulatedUdpEchoExample_Copy/examples/EmulatedUdpEchoExample_Copy-example.cc
contrib/EmulatedUdpEchoExample_Copy/examples/CMakeFiles/EmulatedUdpEchoExample_Copy-example.dir/EmulatedUdpEchoExample_Copy-example.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx
contrib/EmulatedUdpEchoExample_Copy/examples/CMakeFiles/EmulatedUdpEchoExample_Copy-example.dir/EmulatedUdpEchoExample_Copy-example.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx.gch
contrib/EmulatedUdpEchoExample_Copy/examples/CMakeFiles/EmulatedUdpEchoExample_Copy-example.dir/EmulatedUdpEchoExample_Copy-example.cc.o: contrib/EmulatedUdpEchoExample_Copy/examples/CMakeFiles/EmulatedUdpEchoExample_Copy-example.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object contrib/EmulatedUdpEchoExample_Copy/examples/CMakeFiles/EmulatedUdpEchoExample_Copy-example.dir/EmulatedUdpEchoExample_Copy-example.cc.o"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/EmulatedUdpEchoExample_Copy/examples && /usr/bin/ccache /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -MD -MT contrib/EmulatedUdpEchoExample_Copy/examples/CMakeFiles/EmulatedUdpEchoExample_Copy-example.dir/EmulatedUdpEchoExample_Copy-example.cc.o -MF CMakeFiles/EmulatedUdpEchoExample_Copy-example.dir/EmulatedUdpEchoExample_Copy-example.cc.o.d -o CMakeFiles/EmulatedUdpEchoExample_Copy-example.dir/EmulatedUdpEchoExample_Copy-example.cc.o -c /home/george/workspace/ns-allinone-3.37/ns-3.37/contrib/EmulatedUdpEchoExample_Copy/examples/EmulatedUdpEchoExample_Copy-example.cc

contrib/EmulatedUdpEchoExample_Copy/examples/CMakeFiles/EmulatedUdpEchoExample_Copy-example.dir/EmulatedUdpEchoExample_Copy-example.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/EmulatedUdpEchoExample_Copy-example.dir/EmulatedUdpEchoExample_Copy-example.cc.i"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/EmulatedUdpEchoExample_Copy/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -E /home/george/workspace/ns-allinone-3.37/ns-3.37/contrib/EmulatedUdpEchoExample_Copy/examples/EmulatedUdpEchoExample_Copy-example.cc > CMakeFiles/EmulatedUdpEchoExample_Copy-example.dir/EmulatedUdpEchoExample_Copy-example.cc.i

contrib/EmulatedUdpEchoExample_Copy/examples/CMakeFiles/EmulatedUdpEchoExample_Copy-example.dir/EmulatedUdpEchoExample_Copy-example.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/EmulatedUdpEchoExample_Copy-example.dir/EmulatedUdpEchoExample_Copy-example.cc.s"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/EmulatedUdpEchoExample_Copy/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -S /home/george/workspace/ns-allinone-3.37/ns-3.37/contrib/EmulatedUdpEchoExample_Copy/examples/EmulatedUdpEchoExample_Copy-example.cc -o CMakeFiles/EmulatedUdpEchoExample_Copy-example.dir/EmulatedUdpEchoExample_Copy-example.cc.s

# Object files for target EmulatedUdpEchoExample_Copy-example
EmulatedUdpEchoExample_Copy__example_OBJECTS = \
"CMakeFiles/EmulatedUdpEchoExample_Copy-example.dir/EmulatedUdpEchoExample_Copy-example.cc.o"

# External object files for target EmulatedUdpEchoExample_Copy-example
EmulatedUdpEchoExample_Copy__example_EXTERNAL_OBJECTS =

../build/contrib/EmulatedUdpEchoExample_Copy/examples/ns3.37-EmulatedUdpEchoExample_Copy-example-default: contrib/EmulatedUdpEchoExample_Copy/examples/CMakeFiles/EmulatedUdpEchoExample_Copy-example.dir/EmulatedUdpEchoExample_Copy-example.cc.o
../build/contrib/EmulatedUdpEchoExample_Copy/examples/ns3.37-EmulatedUdpEchoExample_Copy-example-default: contrib/EmulatedUdpEchoExample_Copy/examples/CMakeFiles/EmulatedUdpEchoExample_Copy-example.dir/build.make
../build/contrib/EmulatedUdpEchoExample_Copy/examples/ns3.37-EmulatedUdpEchoExample_Copy-example-default: contrib/EmulatedUdpEchoExample_Copy/examples/CMakeFiles/EmulatedUdpEchoExample_Copy-example.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../build/contrib/EmulatedUdpEchoExample_Copy/examples/ns3.37-EmulatedUdpEchoExample_Copy-example-default"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/EmulatedUdpEchoExample_Copy/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/EmulatedUdpEchoExample_Copy-example.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
contrib/EmulatedUdpEchoExample_Copy/examples/CMakeFiles/EmulatedUdpEchoExample_Copy-example.dir/build: ../build/contrib/EmulatedUdpEchoExample_Copy/examples/ns3.37-EmulatedUdpEchoExample_Copy-example-default
.PHONY : contrib/EmulatedUdpEchoExample_Copy/examples/CMakeFiles/EmulatedUdpEchoExample_Copy-example.dir/build

contrib/EmulatedUdpEchoExample_Copy/examples/CMakeFiles/EmulatedUdpEchoExample_Copy-example.dir/clean:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/EmulatedUdpEchoExample_Copy/examples && $(CMAKE_COMMAND) -P CMakeFiles/EmulatedUdpEchoExample_Copy-example.dir/cmake_clean.cmake
.PHONY : contrib/EmulatedUdpEchoExample_Copy/examples/CMakeFiles/EmulatedUdpEchoExample_Copy-example.dir/clean

contrib/EmulatedUdpEchoExample_Copy/examples/CMakeFiles/EmulatedUdpEchoExample_Copy-example.dir/depend:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/george/workspace/ns-allinone-3.37/ns-3.37 /home/george/workspace/ns-allinone-3.37/ns-3.37/contrib/EmulatedUdpEchoExample_Copy/examples /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/EmulatedUdpEchoExample_Copy/examples /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/EmulatedUdpEchoExample_Copy/examples/CMakeFiles/EmulatedUdpEchoExample_Copy-example.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contrib/EmulatedUdpEchoExample_Copy/examples/CMakeFiles/EmulatedUdpEchoExample_Copy-example.dir/depend
