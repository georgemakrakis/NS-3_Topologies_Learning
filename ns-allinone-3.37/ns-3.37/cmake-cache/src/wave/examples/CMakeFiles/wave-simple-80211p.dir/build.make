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
include src/wave/examples/CMakeFiles/wave-simple-80211p.dir/depend.make

# Include the progress variables for this target.
include src/wave/examples/CMakeFiles/wave-simple-80211p.dir/progress.make

# Include the compile flags for this target's objects.
include src/wave/examples/CMakeFiles/wave-simple-80211p.dir/flags.make

src/wave/examples/CMakeFiles/wave-simple-80211p.dir/wave-simple-80211p.cc.o: src/wave/examples/CMakeFiles/wave-simple-80211p.dir/flags.make
src/wave/examples/CMakeFiles/wave-simple-80211p.dir/wave-simple-80211p.cc.o: ../src/wave/examples/wave-simple-80211p.cc
src/wave/examples/CMakeFiles/wave-simple-80211p.dir/wave-simple-80211p.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx
src/wave/examples/CMakeFiles/wave-simple-80211p.dir/wave-simple-80211p.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx.gch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/wave/examples/CMakeFiles/wave-simple-80211p.dir/wave-simple-80211p.cc.o"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/wave/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -o CMakeFiles/wave-simple-80211p.dir/wave-simple-80211p.cc.o -c /home/george/workspace/ns-allinone-3.37/ns-3.37/src/wave/examples/wave-simple-80211p.cc

src/wave/examples/CMakeFiles/wave-simple-80211p.dir/wave-simple-80211p.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wave-simple-80211p.dir/wave-simple-80211p.cc.i"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/wave/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -E /home/george/workspace/ns-allinone-3.37/ns-3.37/src/wave/examples/wave-simple-80211p.cc > CMakeFiles/wave-simple-80211p.dir/wave-simple-80211p.cc.i

src/wave/examples/CMakeFiles/wave-simple-80211p.dir/wave-simple-80211p.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wave-simple-80211p.dir/wave-simple-80211p.cc.s"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/wave/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -S /home/george/workspace/ns-allinone-3.37/ns-3.37/src/wave/examples/wave-simple-80211p.cc -o CMakeFiles/wave-simple-80211p.dir/wave-simple-80211p.cc.s

# Object files for target wave-simple-80211p
wave__simple__80211p_OBJECTS = \
"CMakeFiles/wave-simple-80211p.dir/wave-simple-80211p.cc.o"

# External object files for target wave-simple-80211p
wave__simple__80211p_EXTERNAL_OBJECTS =

../build/src/wave/examples/ns3.37-wave-simple-80211p-default: src/wave/examples/CMakeFiles/wave-simple-80211p.dir/wave-simple-80211p.cc.o
../build/src/wave/examples/ns3.37-wave-simple-80211p-default: src/wave/examples/CMakeFiles/wave-simple-80211p.dir/build.make
../build/src/wave/examples/ns3.37-wave-simple-80211p-default: /usr/lib/x86_64-linux-gnu/libpython3.8.so
../build/src/wave/examples/ns3.37-wave-simple-80211p-default: src/wave/examples/CMakeFiles/wave-simple-80211p.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../build/src/wave/examples/ns3.37-wave-simple-80211p-default"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/wave/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/wave-simple-80211p.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/wave/examples/CMakeFiles/wave-simple-80211p.dir/build: ../build/src/wave/examples/ns3.37-wave-simple-80211p-default

.PHONY : src/wave/examples/CMakeFiles/wave-simple-80211p.dir/build

src/wave/examples/CMakeFiles/wave-simple-80211p.dir/clean:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/wave/examples && $(CMAKE_COMMAND) -P CMakeFiles/wave-simple-80211p.dir/cmake_clean.cmake
.PHONY : src/wave/examples/CMakeFiles/wave-simple-80211p.dir/clean

src/wave/examples/CMakeFiles/wave-simple-80211p.dir/depend:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/george/workspace/ns-allinone-3.37/ns-3.37 /home/george/workspace/ns-allinone-3.37/ns-3.37/src/wave/examples /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/wave/examples /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/wave/examples/CMakeFiles/wave-simple-80211p.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/wave/examples/CMakeFiles/wave-simple-80211p.dir/depend
