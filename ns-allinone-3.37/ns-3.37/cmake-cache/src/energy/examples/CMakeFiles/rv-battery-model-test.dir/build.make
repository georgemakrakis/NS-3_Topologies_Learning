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
include src/energy/examples/CMakeFiles/rv-battery-model-test.dir/depend.make

# Include the progress variables for this target.
include src/energy/examples/CMakeFiles/rv-battery-model-test.dir/progress.make

# Include the compile flags for this target's objects.
include src/energy/examples/CMakeFiles/rv-battery-model-test.dir/flags.make

src/energy/examples/CMakeFiles/rv-battery-model-test.dir/rv-battery-model-test.cc.o: src/energy/examples/CMakeFiles/rv-battery-model-test.dir/flags.make
src/energy/examples/CMakeFiles/rv-battery-model-test.dir/rv-battery-model-test.cc.o: ../src/energy/examples/rv-battery-model-test.cc
src/energy/examples/CMakeFiles/rv-battery-model-test.dir/rv-battery-model-test.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx
src/energy/examples/CMakeFiles/rv-battery-model-test.dir/rv-battery-model-test.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx.gch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/energy/examples/CMakeFiles/rv-battery-model-test.dir/rv-battery-model-test.cc.o"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/energy/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -o CMakeFiles/rv-battery-model-test.dir/rv-battery-model-test.cc.o -c /home/george/workspace/ns-allinone-3.37/ns-3.37/src/energy/examples/rv-battery-model-test.cc

src/energy/examples/CMakeFiles/rv-battery-model-test.dir/rv-battery-model-test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rv-battery-model-test.dir/rv-battery-model-test.cc.i"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/energy/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -E /home/george/workspace/ns-allinone-3.37/ns-3.37/src/energy/examples/rv-battery-model-test.cc > CMakeFiles/rv-battery-model-test.dir/rv-battery-model-test.cc.i

src/energy/examples/CMakeFiles/rv-battery-model-test.dir/rv-battery-model-test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rv-battery-model-test.dir/rv-battery-model-test.cc.s"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/energy/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -S /home/george/workspace/ns-allinone-3.37/ns-3.37/src/energy/examples/rv-battery-model-test.cc -o CMakeFiles/rv-battery-model-test.dir/rv-battery-model-test.cc.s

# Object files for target rv-battery-model-test
rv__battery__model__test_OBJECTS = \
"CMakeFiles/rv-battery-model-test.dir/rv-battery-model-test.cc.o"

# External object files for target rv-battery-model-test
rv__battery__model__test_EXTERNAL_OBJECTS =

../build/src/energy/examples/ns3.37-rv-battery-model-test-default: src/energy/examples/CMakeFiles/rv-battery-model-test.dir/rv-battery-model-test.cc.o
../build/src/energy/examples/ns3.37-rv-battery-model-test-default: src/energy/examples/CMakeFiles/rv-battery-model-test.dir/build.make
../build/src/energy/examples/ns3.37-rv-battery-model-test-default: /usr/lib/x86_64-linux-gnu/libpython3.8.so
../build/src/energy/examples/ns3.37-rv-battery-model-test-default: src/energy/examples/CMakeFiles/rv-battery-model-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../build/src/energy/examples/ns3.37-rv-battery-model-test-default"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/energy/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rv-battery-model-test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/energy/examples/CMakeFiles/rv-battery-model-test.dir/build: ../build/src/energy/examples/ns3.37-rv-battery-model-test-default

.PHONY : src/energy/examples/CMakeFiles/rv-battery-model-test.dir/build

src/energy/examples/CMakeFiles/rv-battery-model-test.dir/clean:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/energy/examples && $(CMAKE_COMMAND) -P CMakeFiles/rv-battery-model-test.dir/cmake_clean.cmake
.PHONY : src/energy/examples/CMakeFiles/rv-battery-model-test.dir/clean

src/energy/examples/CMakeFiles/rv-battery-model-test.dir/depend:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/george/workspace/ns-allinone-3.37/ns-3.37 /home/george/workspace/ns-allinone-3.37/ns-3.37/src/energy/examples /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/energy/examples /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/energy/examples/CMakeFiles/rv-battery-model-test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/energy/examples/CMakeFiles/rv-battery-model-test.dir/depend
