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
include examples/socket/CMakeFiles/socket-options-ipv4.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/socket/CMakeFiles/socket-options-ipv4.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/socket/CMakeFiles/socket-options-ipv4.dir/progress.make

# Include the compile flags for this target's objects.
include examples/socket/CMakeFiles/socket-options-ipv4.dir/flags.make

examples/socket/CMakeFiles/socket-options-ipv4.dir/socket-options-ipv4.cc.o: examples/socket/CMakeFiles/socket-options-ipv4.dir/flags.make
examples/socket/CMakeFiles/socket-options-ipv4.dir/socket-options-ipv4.cc.o: ../examples/socket/socket-options-ipv4.cc
examples/socket/CMakeFiles/socket-options-ipv4.dir/socket-options-ipv4.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx
examples/socket/CMakeFiles/socket-options-ipv4.dir/socket-options-ipv4.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx.gch
examples/socket/CMakeFiles/socket-options-ipv4.dir/socket-options-ipv4.cc.o: examples/socket/CMakeFiles/socket-options-ipv4.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/socket/CMakeFiles/socket-options-ipv4.dir/socket-options-ipv4.cc.o"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/examples/socket && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -MD -MT examples/socket/CMakeFiles/socket-options-ipv4.dir/socket-options-ipv4.cc.o -MF CMakeFiles/socket-options-ipv4.dir/socket-options-ipv4.cc.o.d -o CMakeFiles/socket-options-ipv4.dir/socket-options-ipv4.cc.o -c /home/george/workspace/ns-allinone-3.37/ns-3.37/examples/socket/socket-options-ipv4.cc

examples/socket/CMakeFiles/socket-options-ipv4.dir/socket-options-ipv4.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/socket-options-ipv4.dir/socket-options-ipv4.cc.i"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/examples/socket && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -E /home/george/workspace/ns-allinone-3.37/ns-3.37/examples/socket/socket-options-ipv4.cc > CMakeFiles/socket-options-ipv4.dir/socket-options-ipv4.cc.i

examples/socket/CMakeFiles/socket-options-ipv4.dir/socket-options-ipv4.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/socket-options-ipv4.dir/socket-options-ipv4.cc.s"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/examples/socket && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -S /home/george/workspace/ns-allinone-3.37/ns-3.37/examples/socket/socket-options-ipv4.cc -o CMakeFiles/socket-options-ipv4.dir/socket-options-ipv4.cc.s

# Object files for target socket-options-ipv4
socket__options__ipv4_OBJECTS = \
"CMakeFiles/socket-options-ipv4.dir/socket-options-ipv4.cc.o"

# External object files for target socket-options-ipv4
socket__options__ipv4_EXTERNAL_OBJECTS =

../build/examples/socket/ns3.37-socket-options-ipv4-default: examples/socket/CMakeFiles/socket-options-ipv4.dir/socket-options-ipv4.cc.o
../build/examples/socket/ns3.37-socket-options-ipv4-default: examples/socket/CMakeFiles/socket-options-ipv4.dir/build.make
../build/examples/socket/ns3.37-socket-options-ipv4-default: /usr/lib/x86_64-linux-gnu/libsqlite3.so
../build/examples/socket/ns3.37-socket-options-ipv4-default: examples/socket/CMakeFiles/socket-options-ipv4.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../build/examples/socket/ns3.37-socket-options-ipv4-default"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/examples/socket && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/socket-options-ipv4.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/socket/CMakeFiles/socket-options-ipv4.dir/build: ../build/examples/socket/ns3.37-socket-options-ipv4-default
.PHONY : examples/socket/CMakeFiles/socket-options-ipv4.dir/build

examples/socket/CMakeFiles/socket-options-ipv4.dir/clean:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/examples/socket && $(CMAKE_COMMAND) -P CMakeFiles/socket-options-ipv4.dir/cmake_clean.cmake
.PHONY : examples/socket/CMakeFiles/socket-options-ipv4.dir/clean

examples/socket/CMakeFiles/socket-options-ipv4.dir/depend:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/george/workspace/ns-allinone-3.37/ns-3.37 /home/george/workspace/ns-allinone-3.37/ns-3.37/examples/socket /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/examples/socket /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/examples/socket/CMakeFiles/socket-options-ipv4.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/socket/CMakeFiles/socket-options-ipv4.dir/depend

