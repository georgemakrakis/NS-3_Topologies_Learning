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
include examples/ipv6/CMakeFiles/ping6.dir/depend.make

# Include the progress variables for this target.
include examples/ipv6/CMakeFiles/ping6.dir/progress.make

# Include the compile flags for this target's objects.
include examples/ipv6/CMakeFiles/ping6.dir/flags.make

examples/ipv6/CMakeFiles/ping6.dir/ping6.cc.o: examples/ipv6/CMakeFiles/ping6.dir/flags.make
examples/ipv6/CMakeFiles/ping6.dir/ping6.cc.o: ../examples/ipv6/ping6.cc
examples/ipv6/CMakeFiles/ping6.dir/ping6.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx
examples/ipv6/CMakeFiles/ping6.dir/ping6.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx.gch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/ipv6/CMakeFiles/ping6.dir/ping6.cc.o"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/examples/ipv6 && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -o CMakeFiles/ping6.dir/ping6.cc.o -c /home/george/workspace/ns-allinone-3.37/ns-3.37/examples/ipv6/ping6.cc

examples/ipv6/CMakeFiles/ping6.dir/ping6.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ping6.dir/ping6.cc.i"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/examples/ipv6 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -E /home/george/workspace/ns-allinone-3.37/ns-3.37/examples/ipv6/ping6.cc > CMakeFiles/ping6.dir/ping6.cc.i

examples/ipv6/CMakeFiles/ping6.dir/ping6.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ping6.dir/ping6.cc.s"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/examples/ipv6 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -S /home/george/workspace/ns-allinone-3.37/ns-3.37/examples/ipv6/ping6.cc -o CMakeFiles/ping6.dir/ping6.cc.s

# Object files for target ping6
ping6_OBJECTS = \
"CMakeFiles/ping6.dir/ping6.cc.o"

# External object files for target ping6
ping6_EXTERNAL_OBJECTS =

../build/examples/ipv6/ns3.37-ping6-default: examples/ipv6/CMakeFiles/ping6.dir/ping6.cc.o
../build/examples/ipv6/ns3.37-ping6-default: examples/ipv6/CMakeFiles/ping6.dir/build.make
../build/examples/ipv6/ns3.37-ping6-default: /usr/lib/x86_64-linux-gnu/libpython3.8.so
../build/examples/ipv6/ns3.37-ping6-default: examples/ipv6/CMakeFiles/ping6.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../build/examples/ipv6/ns3.37-ping6-default"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/examples/ipv6 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ping6.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/ipv6/CMakeFiles/ping6.dir/build: ../build/examples/ipv6/ns3.37-ping6-default

.PHONY : examples/ipv6/CMakeFiles/ping6.dir/build

examples/ipv6/CMakeFiles/ping6.dir/clean:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/examples/ipv6 && $(CMAKE_COMMAND) -P CMakeFiles/ping6.dir/cmake_clean.cmake
.PHONY : examples/ipv6/CMakeFiles/ping6.dir/clean

examples/ipv6/CMakeFiles/ping6.dir/depend:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/george/workspace/ns-allinone-3.37/ns-3.37 /home/george/workspace/ns-allinone-3.37/ns-3.37/examples/ipv6 /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/examples/ipv6 /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/examples/ipv6/CMakeFiles/ping6.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/ipv6/CMakeFiles/ping6.dir/depend

