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
include src/aodv/examples/CMakeFiles/aodv.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/aodv/examples/CMakeFiles/aodv.dir/compiler_depend.make

# Include the progress variables for this target.
include src/aodv/examples/CMakeFiles/aodv.dir/progress.make

# Include the compile flags for this target's objects.
include src/aodv/examples/CMakeFiles/aodv.dir/flags.make

src/aodv/examples/CMakeFiles/aodv.dir/aodv.cc.o: src/aodv/examples/CMakeFiles/aodv.dir/flags.make
src/aodv/examples/CMakeFiles/aodv.dir/aodv.cc.o: ../src/aodv/examples/aodv.cc
src/aodv/examples/CMakeFiles/aodv.dir/aodv.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx
src/aodv/examples/CMakeFiles/aodv.dir/aodv.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx.gch
src/aodv/examples/CMakeFiles/aodv.dir/aodv.cc.o: src/aodv/examples/CMakeFiles/aodv.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/aodv/examples/CMakeFiles/aodv.dir/aodv.cc.o"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/aodv/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -MD -MT src/aodv/examples/CMakeFiles/aodv.dir/aodv.cc.o -MF CMakeFiles/aodv.dir/aodv.cc.o.d -o CMakeFiles/aodv.dir/aodv.cc.o -c /home/george/workspace/ns-allinone-3.37/ns-3.37/src/aodv/examples/aodv.cc

src/aodv/examples/CMakeFiles/aodv.dir/aodv.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aodv.dir/aodv.cc.i"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/aodv/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -E /home/george/workspace/ns-allinone-3.37/ns-3.37/src/aodv/examples/aodv.cc > CMakeFiles/aodv.dir/aodv.cc.i

src/aodv/examples/CMakeFiles/aodv.dir/aodv.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aodv.dir/aodv.cc.s"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/aodv/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -S /home/george/workspace/ns-allinone-3.37/ns-3.37/src/aodv/examples/aodv.cc -o CMakeFiles/aodv.dir/aodv.cc.s

# Object files for target aodv
aodv_OBJECTS = \
"CMakeFiles/aodv.dir/aodv.cc.o"

# External object files for target aodv
aodv_EXTERNAL_OBJECTS =

../build/src/aodv/examples/ns3.37-aodv-default: src/aodv/examples/CMakeFiles/aodv.dir/aodv.cc.o
../build/src/aodv/examples/ns3.37-aodv-default: src/aodv/examples/CMakeFiles/aodv.dir/build.make
../build/src/aodv/examples/ns3.37-aodv-default: /usr/lib/x86_64-linux-gnu/libsqlite3.so
../build/src/aodv/examples/ns3.37-aodv-default: src/aodv/examples/CMakeFiles/aodv.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../build/src/aodv/examples/ns3.37-aodv-default"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/aodv/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/aodv.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/aodv/examples/CMakeFiles/aodv.dir/build: ../build/src/aodv/examples/ns3.37-aodv-default
.PHONY : src/aodv/examples/CMakeFiles/aodv.dir/build

src/aodv/examples/CMakeFiles/aodv.dir/clean:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/aodv/examples && $(CMAKE_COMMAND) -P CMakeFiles/aodv.dir/cmake_clean.cmake
.PHONY : src/aodv/examples/CMakeFiles/aodv.dir/clean

src/aodv/examples/CMakeFiles/aodv.dir/depend:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/george/workspace/ns-allinone-3.37/ns-3.37 /home/george/workspace/ns-allinone-3.37/ns-3.37/src/aodv/examples /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/aodv/examples /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/aodv/examples/CMakeFiles/aodv.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/aodv/examples/CMakeFiles/aodv.dir/depend

