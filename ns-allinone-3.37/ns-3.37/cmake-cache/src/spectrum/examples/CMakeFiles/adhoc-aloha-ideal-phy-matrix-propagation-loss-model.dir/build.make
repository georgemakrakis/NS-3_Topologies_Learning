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
include src/spectrum/examples/CMakeFiles/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/spectrum/examples/CMakeFiles/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.dir/compiler_depend.make

# Include the progress variables for this target.
include src/spectrum/examples/CMakeFiles/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.dir/progress.make

# Include the compile flags for this target's objects.
include src/spectrum/examples/CMakeFiles/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.dir/flags.make

src/spectrum/examples/CMakeFiles/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.dir/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.cc.o: src/spectrum/examples/CMakeFiles/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.dir/flags.make
src/spectrum/examples/CMakeFiles/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.dir/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.cc.o: ../src/spectrum/examples/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.cc
src/spectrum/examples/CMakeFiles/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.dir/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx
src/spectrum/examples/CMakeFiles/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.dir/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx.gch
src/spectrum/examples/CMakeFiles/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.dir/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.cc.o: src/spectrum/examples/CMakeFiles/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/spectrum/examples/CMakeFiles/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.dir/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.cc.o"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/spectrum/examples && /usr/bin/ccache /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -MD -MT src/spectrum/examples/CMakeFiles/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.dir/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.cc.o -MF CMakeFiles/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.dir/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.cc.o.d -o CMakeFiles/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.dir/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.cc.o -c /home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/examples/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.cc

src/spectrum/examples/CMakeFiles/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.dir/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.dir/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.cc.i"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/spectrum/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -E /home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/examples/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.cc > CMakeFiles/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.dir/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.cc.i

src/spectrum/examples/CMakeFiles/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.dir/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.dir/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.cc.s"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/spectrum/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -S /home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/examples/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.cc -o CMakeFiles/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.dir/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.cc.s

# Object files for target adhoc-aloha-ideal-phy-matrix-propagation-loss-model
adhoc__aloha__ideal__phy__matrix__propagation__loss__model_OBJECTS = \
"CMakeFiles/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.dir/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.cc.o"

# External object files for target adhoc-aloha-ideal-phy-matrix-propagation-loss-model
adhoc__aloha__ideal__phy__matrix__propagation__loss__model_EXTERNAL_OBJECTS =

../build/src/spectrum/examples/ns3.37-adhoc-aloha-ideal-phy-matrix-propagation-loss-model-default: src/spectrum/examples/CMakeFiles/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.dir/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.cc.o
../build/src/spectrum/examples/ns3.37-adhoc-aloha-ideal-phy-matrix-propagation-loss-model-default: src/spectrum/examples/CMakeFiles/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.dir/build.make
../build/src/spectrum/examples/ns3.37-adhoc-aloha-ideal-phy-matrix-propagation-loss-model-default: /usr/lib/x86_64-linux-gnu/libsqlite3.so
../build/src/spectrum/examples/ns3.37-adhoc-aloha-ideal-phy-matrix-propagation-loss-model-default: src/spectrum/examples/CMakeFiles/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../build/src/spectrum/examples/ns3.37-adhoc-aloha-ideal-phy-matrix-propagation-loss-model-default"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/spectrum/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/spectrum/examples/CMakeFiles/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.dir/build: ../build/src/spectrum/examples/ns3.37-adhoc-aloha-ideal-phy-matrix-propagation-loss-model-default
.PHONY : src/spectrum/examples/CMakeFiles/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.dir/build

src/spectrum/examples/CMakeFiles/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.dir/clean:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/spectrum/examples && $(CMAKE_COMMAND) -P CMakeFiles/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.dir/cmake_clean.cmake
.PHONY : src/spectrum/examples/CMakeFiles/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.dir/clean

src/spectrum/examples/CMakeFiles/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.dir/depend:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/george/workspace/ns-allinone-3.37/ns-3.37 /home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/examples /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/spectrum/examples /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/spectrum/examples/CMakeFiles/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/spectrum/examples/CMakeFiles/adhoc-aloha-ideal-phy-matrix-propagation-loss-model.dir/depend

