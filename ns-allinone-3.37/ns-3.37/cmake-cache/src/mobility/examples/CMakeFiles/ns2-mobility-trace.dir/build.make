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
include src/mobility/examples/CMakeFiles/ns2-mobility-trace.dir/depend.make

# Include the progress variables for this target.
include src/mobility/examples/CMakeFiles/ns2-mobility-trace.dir/progress.make

# Include the compile flags for this target's objects.
include src/mobility/examples/CMakeFiles/ns2-mobility-trace.dir/flags.make

src/mobility/examples/CMakeFiles/ns2-mobility-trace.dir/ns2-mobility-trace.cc.o: src/mobility/examples/CMakeFiles/ns2-mobility-trace.dir/flags.make
src/mobility/examples/CMakeFiles/ns2-mobility-trace.dir/ns2-mobility-trace.cc.o: ../src/mobility/examples/ns2-mobility-trace.cc
src/mobility/examples/CMakeFiles/ns2-mobility-trace.dir/ns2-mobility-trace.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx
src/mobility/examples/CMakeFiles/ns2-mobility-trace.dir/ns2-mobility-trace.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx.gch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/mobility/examples/CMakeFiles/ns2-mobility-trace.dir/ns2-mobility-trace.cc.o"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/mobility/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -o CMakeFiles/ns2-mobility-trace.dir/ns2-mobility-trace.cc.o -c /home/george/workspace/ns-allinone-3.37/ns-3.37/src/mobility/examples/ns2-mobility-trace.cc

src/mobility/examples/CMakeFiles/ns2-mobility-trace.dir/ns2-mobility-trace.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ns2-mobility-trace.dir/ns2-mobility-trace.cc.i"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/mobility/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -E /home/george/workspace/ns-allinone-3.37/ns-3.37/src/mobility/examples/ns2-mobility-trace.cc > CMakeFiles/ns2-mobility-trace.dir/ns2-mobility-trace.cc.i

src/mobility/examples/CMakeFiles/ns2-mobility-trace.dir/ns2-mobility-trace.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ns2-mobility-trace.dir/ns2-mobility-trace.cc.s"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/mobility/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -S /home/george/workspace/ns-allinone-3.37/ns-3.37/src/mobility/examples/ns2-mobility-trace.cc -o CMakeFiles/ns2-mobility-trace.dir/ns2-mobility-trace.cc.s

# Object files for target ns2-mobility-trace
ns2__mobility__trace_OBJECTS = \
"CMakeFiles/ns2-mobility-trace.dir/ns2-mobility-trace.cc.o"

# External object files for target ns2-mobility-trace
ns2__mobility__trace_EXTERNAL_OBJECTS =

../build/src/mobility/examples/ns3.37-ns2-mobility-trace-default: src/mobility/examples/CMakeFiles/ns2-mobility-trace.dir/ns2-mobility-trace.cc.o
../build/src/mobility/examples/ns3.37-ns2-mobility-trace-default: src/mobility/examples/CMakeFiles/ns2-mobility-trace.dir/build.make
../build/src/mobility/examples/ns3.37-ns2-mobility-trace-default: /usr/lib/x86_64-linux-gnu/libpython3.8.so
../build/src/mobility/examples/ns3.37-ns2-mobility-trace-default: src/mobility/examples/CMakeFiles/ns2-mobility-trace.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../build/src/mobility/examples/ns3.37-ns2-mobility-trace-default"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/mobility/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ns2-mobility-trace.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/mobility/examples/CMakeFiles/ns2-mobility-trace.dir/build: ../build/src/mobility/examples/ns3.37-ns2-mobility-trace-default

.PHONY : src/mobility/examples/CMakeFiles/ns2-mobility-trace.dir/build

src/mobility/examples/CMakeFiles/ns2-mobility-trace.dir/clean:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/mobility/examples && $(CMAKE_COMMAND) -P CMakeFiles/ns2-mobility-trace.dir/cmake_clean.cmake
.PHONY : src/mobility/examples/CMakeFiles/ns2-mobility-trace.dir/clean

src/mobility/examples/CMakeFiles/ns2-mobility-trace.dir/depend:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/george/workspace/ns-allinone-3.37/ns-3.37 /home/george/workspace/ns-allinone-3.37/ns-3.37/src/mobility/examples /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/mobility/examples /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/mobility/examples/CMakeFiles/ns2-mobility-trace.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/mobility/examples/CMakeFiles/ns2-mobility-trace.dir/depend

