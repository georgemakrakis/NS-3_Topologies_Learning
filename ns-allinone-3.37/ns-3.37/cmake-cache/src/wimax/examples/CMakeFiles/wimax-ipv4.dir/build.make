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
include src/wimax/examples/CMakeFiles/wimax-ipv4.dir/depend.make

# Include the progress variables for this target.
include src/wimax/examples/CMakeFiles/wimax-ipv4.dir/progress.make

# Include the compile flags for this target's objects.
include src/wimax/examples/CMakeFiles/wimax-ipv4.dir/flags.make

src/wimax/examples/CMakeFiles/wimax-ipv4.dir/wimax-ipv4.cc.o: src/wimax/examples/CMakeFiles/wimax-ipv4.dir/flags.make
src/wimax/examples/CMakeFiles/wimax-ipv4.dir/wimax-ipv4.cc.o: ../src/wimax/examples/wimax-ipv4.cc
src/wimax/examples/CMakeFiles/wimax-ipv4.dir/wimax-ipv4.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx
src/wimax/examples/CMakeFiles/wimax-ipv4.dir/wimax-ipv4.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx.gch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/wimax/examples/CMakeFiles/wimax-ipv4.dir/wimax-ipv4.cc.o"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/wimax/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -o CMakeFiles/wimax-ipv4.dir/wimax-ipv4.cc.o -c /home/george/workspace/ns-allinone-3.37/ns-3.37/src/wimax/examples/wimax-ipv4.cc

src/wimax/examples/CMakeFiles/wimax-ipv4.dir/wimax-ipv4.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wimax-ipv4.dir/wimax-ipv4.cc.i"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/wimax/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -E /home/george/workspace/ns-allinone-3.37/ns-3.37/src/wimax/examples/wimax-ipv4.cc > CMakeFiles/wimax-ipv4.dir/wimax-ipv4.cc.i

src/wimax/examples/CMakeFiles/wimax-ipv4.dir/wimax-ipv4.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wimax-ipv4.dir/wimax-ipv4.cc.s"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/wimax/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -S /home/george/workspace/ns-allinone-3.37/ns-3.37/src/wimax/examples/wimax-ipv4.cc -o CMakeFiles/wimax-ipv4.dir/wimax-ipv4.cc.s

# Object files for target wimax-ipv4
wimax__ipv4_OBJECTS = \
"CMakeFiles/wimax-ipv4.dir/wimax-ipv4.cc.o"

# External object files for target wimax-ipv4
wimax__ipv4_EXTERNAL_OBJECTS =

../build/src/wimax/examples/ns3.37-wimax-ipv4-default: src/wimax/examples/CMakeFiles/wimax-ipv4.dir/wimax-ipv4.cc.o
../build/src/wimax/examples/ns3.37-wimax-ipv4-default: src/wimax/examples/CMakeFiles/wimax-ipv4.dir/build.make
../build/src/wimax/examples/ns3.37-wimax-ipv4-default: /usr/lib/x86_64-linux-gnu/libpython3.8.so
../build/src/wimax/examples/ns3.37-wimax-ipv4-default: src/wimax/examples/CMakeFiles/wimax-ipv4.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../build/src/wimax/examples/ns3.37-wimax-ipv4-default"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/wimax/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/wimax-ipv4.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/wimax/examples/CMakeFiles/wimax-ipv4.dir/build: ../build/src/wimax/examples/ns3.37-wimax-ipv4-default

.PHONY : src/wimax/examples/CMakeFiles/wimax-ipv4.dir/build

src/wimax/examples/CMakeFiles/wimax-ipv4.dir/clean:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/wimax/examples && $(CMAKE_COMMAND) -P CMakeFiles/wimax-ipv4.dir/cmake_clean.cmake
.PHONY : src/wimax/examples/CMakeFiles/wimax-ipv4.dir/clean

src/wimax/examples/CMakeFiles/wimax-ipv4.dir/depend:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/george/workspace/ns-allinone-3.37/ns-3.37 /home/george/workspace/ns-allinone-3.37/ns-3.37/src/wimax/examples /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/wimax/examples /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/wimax/examples/CMakeFiles/wimax-ipv4.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/wimax/examples/CMakeFiles/wimax-ipv4.dir/depend

