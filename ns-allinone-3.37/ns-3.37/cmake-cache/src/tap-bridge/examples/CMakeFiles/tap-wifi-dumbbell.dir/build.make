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
include src/tap-bridge/examples/CMakeFiles/tap-wifi-dumbbell.dir/depend.make

# Include the progress variables for this target.
include src/tap-bridge/examples/CMakeFiles/tap-wifi-dumbbell.dir/progress.make

# Include the compile flags for this target's objects.
include src/tap-bridge/examples/CMakeFiles/tap-wifi-dumbbell.dir/flags.make

src/tap-bridge/examples/CMakeFiles/tap-wifi-dumbbell.dir/tap-wifi-dumbbell.cc.o: src/tap-bridge/examples/CMakeFiles/tap-wifi-dumbbell.dir/flags.make
src/tap-bridge/examples/CMakeFiles/tap-wifi-dumbbell.dir/tap-wifi-dumbbell.cc.o: ../src/tap-bridge/examples/tap-wifi-dumbbell.cc
src/tap-bridge/examples/CMakeFiles/tap-wifi-dumbbell.dir/tap-wifi-dumbbell.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx
src/tap-bridge/examples/CMakeFiles/tap-wifi-dumbbell.dir/tap-wifi-dumbbell.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx.gch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/tap-bridge/examples/CMakeFiles/tap-wifi-dumbbell.dir/tap-wifi-dumbbell.cc.o"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/tap-bridge/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -o CMakeFiles/tap-wifi-dumbbell.dir/tap-wifi-dumbbell.cc.o -c /home/george/workspace/ns-allinone-3.37/ns-3.37/src/tap-bridge/examples/tap-wifi-dumbbell.cc

src/tap-bridge/examples/CMakeFiles/tap-wifi-dumbbell.dir/tap-wifi-dumbbell.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tap-wifi-dumbbell.dir/tap-wifi-dumbbell.cc.i"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/tap-bridge/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -E /home/george/workspace/ns-allinone-3.37/ns-3.37/src/tap-bridge/examples/tap-wifi-dumbbell.cc > CMakeFiles/tap-wifi-dumbbell.dir/tap-wifi-dumbbell.cc.i

src/tap-bridge/examples/CMakeFiles/tap-wifi-dumbbell.dir/tap-wifi-dumbbell.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tap-wifi-dumbbell.dir/tap-wifi-dumbbell.cc.s"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/tap-bridge/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -S /home/george/workspace/ns-allinone-3.37/ns-3.37/src/tap-bridge/examples/tap-wifi-dumbbell.cc -o CMakeFiles/tap-wifi-dumbbell.dir/tap-wifi-dumbbell.cc.s

# Object files for target tap-wifi-dumbbell
tap__wifi__dumbbell_OBJECTS = \
"CMakeFiles/tap-wifi-dumbbell.dir/tap-wifi-dumbbell.cc.o"

# External object files for target tap-wifi-dumbbell
tap__wifi__dumbbell_EXTERNAL_OBJECTS =

../build/src/tap-bridge/examples/ns3.37-tap-wifi-dumbbell-default: src/tap-bridge/examples/CMakeFiles/tap-wifi-dumbbell.dir/tap-wifi-dumbbell.cc.o
../build/src/tap-bridge/examples/ns3.37-tap-wifi-dumbbell-default: src/tap-bridge/examples/CMakeFiles/tap-wifi-dumbbell.dir/build.make
../build/src/tap-bridge/examples/ns3.37-tap-wifi-dumbbell-default: /usr/lib/x86_64-linux-gnu/libpython3.8.so
../build/src/tap-bridge/examples/ns3.37-tap-wifi-dumbbell-default: src/tap-bridge/examples/CMakeFiles/tap-wifi-dumbbell.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../build/src/tap-bridge/examples/ns3.37-tap-wifi-dumbbell-default"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/tap-bridge/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tap-wifi-dumbbell.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/tap-bridge/examples/CMakeFiles/tap-wifi-dumbbell.dir/build: ../build/src/tap-bridge/examples/ns3.37-tap-wifi-dumbbell-default

.PHONY : src/tap-bridge/examples/CMakeFiles/tap-wifi-dumbbell.dir/build

src/tap-bridge/examples/CMakeFiles/tap-wifi-dumbbell.dir/clean:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/tap-bridge/examples && $(CMAKE_COMMAND) -P CMakeFiles/tap-wifi-dumbbell.dir/cmake_clean.cmake
.PHONY : src/tap-bridge/examples/CMakeFiles/tap-wifi-dumbbell.dir/clean

src/tap-bridge/examples/CMakeFiles/tap-wifi-dumbbell.dir/depend:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/george/workspace/ns-allinone-3.37/ns-3.37 /home/george/workspace/ns-allinone-3.37/ns-3.37/src/tap-bridge/examples /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/tap-bridge/examples /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/tap-bridge/examples/CMakeFiles/tap-wifi-dumbbell.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/tap-bridge/examples/CMakeFiles/tap-wifi-dumbbell.dir/depend

