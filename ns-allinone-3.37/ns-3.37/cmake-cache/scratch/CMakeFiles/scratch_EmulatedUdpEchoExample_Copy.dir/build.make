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
include scratch/CMakeFiles/scratch_EmulatedUdpEchoExample_Copy.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include scratch/CMakeFiles/scratch_EmulatedUdpEchoExample_Copy.dir/compiler_depend.make

# Include the progress variables for this target.
include scratch/CMakeFiles/scratch_EmulatedUdpEchoExample_Copy.dir/progress.make

# Include the compile flags for this target's objects.
include scratch/CMakeFiles/scratch_EmulatedUdpEchoExample_Copy.dir/flags.make

scratch/CMakeFiles/scratch_EmulatedUdpEchoExample_Copy.dir/EmulatedUdpEchoExample_Copy.cc.o: scratch/CMakeFiles/scratch_EmulatedUdpEchoExample_Copy.dir/flags.make
scratch/CMakeFiles/scratch_EmulatedUdpEchoExample_Copy.dir/EmulatedUdpEchoExample_Copy.cc.o: ../scratch/EmulatedUdpEchoExample_Copy.cc
scratch/CMakeFiles/scratch_EmulatedUdpEchoExample_Copy.dir/EmulatedUdpEchoExample_Copy.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx
scratch/CMakeFiles/scratch_EmulatedUdpEchoExample_Copy.dir/EmulatedUdpEchoExample_Copy.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx.gch
scratch/CMakeFiles/scratch_EmulatedUdpEchoExample_Copy.dir/EmulatedUdpEchoExample_Copy.cc.o: scratch/CMakeFiles/scratch_EmulatedUdpEchoExample_Copy.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object scratch/CMakeFiles/scratch_EmulatedUdpEchoExample_Copy.dir/EmulatedUdpEchoExample_Copy.cc.o"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/scratch && /usr/bin/ccache /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -MD -MT scratch/CMakeFiles/scratch_EmulatedUdpEchoExample_Copy.dir/EmulatedUdpEchoExample_Copy.cc.o -MF CMakeFiles/scratch_EmulatedUdpEchoExample_Copy.dir/EmulatedUdpEchoExample_Copy.cc.o.d -o CMakeFiles/scratch_EmulatedUdpEchoExample_Copy.dir/EmulatedUdpEchoExample_Copy.cc.o -c /home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/EmulatedUdpEchoExample_Copy.cc

scratch/CMakeFiles/scratch_EmulatedUdpEchoExample_Copy.dir/EmulatedUdpEchoExample_Copy.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/scratch_EmulatedUdpEchoExample_Copy.dir/EmulatedUdpEchoExample_Copy.cc.i"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/scratch && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -E /home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/EmulatedUdpEchoExample_Copy.cc > CMakeFiles/scratch_EmulatedUdpEchoExample_Copy.dir/EmulatedUdpEchoExample_Copy.cc.i

scratch/CMakeFiles/scratch_EmulatedUdpEchoExample_Copy.dir/EmulatedUdpEchoExample_Copy.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/scratch_EmulatedUdpEchoExample_Copy.dir/EmulatedUdpEchoExample_Copy.cc.s"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/scratch && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -S /home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/EmulatedUdpEchoExample_Copy.cc -o CMakeFiles/scratch_EmulatedUdpEchoExample_Copy.dir/EmulatedUdpEchoExample_Copy.cc.s

# Object files for target scratch_EmulatedUdpEchoExample_Copy
scratch_EmulatedUdpEchoExample_Copy_OBJECTS = \
"CMakeFiles/scratch_EmulatedUdpEchoExample_Copy.dir/EmulatedUdpEchoExample_Copy.cc.o"

# External object files for target scratch_EmulatedUdpEchoExample_Copy
scratch_EmulatedUdpEchoExample_Copy_EXTERNAL_OBJECTS =

../build/scratch/ns3.37-EmulatedUdpEchoExample_Copy-default: scratch/CMakeFiles/scratch_EmulatedUdpEchoExample_Copy.dir/EmulatedUdpEchoExample_Copy.cc.o
../build/scratch/ns3.37-EmulatedUdpEchoExample_Copy-default: scratch/CMakeFiles/scratch_EmulatedUdpEchoExample_Copy.dir/build.make
../build/scratch/ns3.37-EmulatedUdpEchoExample_Copy-default: /usr/lib/x86_64-linux-gnu/libxml2.so
../build/scratch/ns3.37-EmulatedUdpEchoExample_Copy-default: /usr/lib/x86_64-linux-gnu/libsqlite3.so
../build/scratch/ns3.37-EmulatedUdpEchoExample_Copy-default: scratch/CMakeFiles/scratch_EmulatedUdpEchoExample_Copy.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../build/scratch/ns3.37-EmulatedUdpEchoExample_Copy-default"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/scratch && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/scratch_EmulatedUdpEchoExample_Copy.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
scratch/CMakeFiles/scratch_EmulatedUdpEchoExample_Copy.dir/build: ../build/scratch/ns3.37-EmulatedUdpEchoExample_Copy-default
.PHONY : scratch/CMakeFiles/scratch_EmulatedUdpEchoExample_Copy.dir/build

scratch/CMakeFiles/scratch_EmulatedUdpEchoExample_Copy.dir/clean:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/scratch && $(CMAKE_COMMAND) -P CMakeFiles/scratch_EmulatedUdpEchoExample_Copy.dir/cmake_clean.cmake
.PHONY : scratch/CMakeFiles/scratch_EmulatedUdpEchoExample_Copy.dir/clean

scratch/CMakeFiles/scratch_EmulatedUdpEchoExample_Copy.dir/depend:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/george/workspace/ns-allinone-3.37/ns-3.37 /home/george/workspace/ns-allinone-3.37/ns-3.37/scratch /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/scratch /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/scratch/CMakeFiles/scratch_EmulatedUdpEchoExample_Copy.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : scratch/CMakeFiles/scratch_EmulatedUdpEchoExample_Copy.dir/depend

