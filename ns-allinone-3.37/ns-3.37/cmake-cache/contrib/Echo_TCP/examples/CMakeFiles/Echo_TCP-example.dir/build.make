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
include contrib/Echo_TCP/examples/CMakeFiles/Echo_TCP-example.dir/depend.make

# Include the progress variables for this target.
include contrib/Echo_TCP/examples/CMakeFiles/Echo_TCP-example.dir/progress.make

# Include the compile flags for this target's objects.
include contrib/Echo_TCP/examples/CMakeFiles/Echo_TCP-example.dir/flags.make

contrib/Echo_TCP/examples/CMakeFiles/Echo_TCP-example.dir/Echo_TCP-example.cc.o: contrib/Echo_TCP/examples/CMakeFiles/Echo_TCP-example.dir/flags.make
contrib/Echo_TCP/examples/CMakeFiles/Echo_TCP-example.dir/Echo_TCP-example.cc.o: ../contrib/Echo_TCP/examples/Echo_TCP-example.cc
contrib/Echo_TCP/examples/CMakeFiles/Echo_TCP-example.dir/Echo_TCP-example.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx
contrib/Echo_TCP/examples/CMakeFiles/Echo_TCP-example.dir/Echo_TCP-example.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx.gch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object contrib/Echo_TCP/examples/CMakeFiles/Echo_TCP-example.dir/Echo_TCP-example.cc.o"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/Echo_TCP/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -o CMakeFiles/Echo_TCP-example.dir/Echo_TCP-example.cc.o -c /home/george/workspace/ns-allinone-3.37/ns-3.37/contrib/Echo_TCP/examples/Echo_TCP-example.cc

contrib/Echo_TCP/examples/CMakeFiles/Echo_TCP-example.dir/Echo_TCP-example.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Echo_TCP-example.dir/Echo_TCP-example.cc.i"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/Echo_TCP/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -E /home/george/workspace/ns-allinone-3.37/ns-3.37/contrib/Echo_TCP/examples/Echo_TCP-example.cc > CMakeFiles/Echo_TCP-example.dir/Echo_TCP-example.cc.i

contrib/Echo_TCP/examples/CMakeFiles/Echo_TCP-example.dir/Echo_TCP-example.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Echo_TCP-example.dir/Echo_TCP-example.cc.s"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/Echo_TCP/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -S /home/george/workspace/ns-allinone-3.37/ns-3.37/contrib/Echo_TCP/examples/Echo_TCP-example.cc -o CMakeFiles/Echo_TCP-example.dir/Echo_TCP-example.cc.s

# Object files for target Echo_TCP-example
Echo_TCP__example_OBJECTS = \
"CMakeFiles/Echo_TCP-example.dir/Echo_TCP-example.cc.o"

# External object files for target Echo_TCP-example
Echo_TCP__example_EXTERNAL_OBJECTS =

../build/contrib/Echo_TCP/examples/ns3.37-Echo_TCP-example-default: contrib/Echo_TCP/examples/CMakeFiles/Echo_TCP-example.dir/Echo_TCP-example.cc.o
../build/contrib/Echo_TCP/examples/ns3.37-Echo_TCP-example-default: contrib/Echo_TCP/examples/CMakeFiles/Echo_TCP-example.dir/build.make
../build/contrib/Echo_TCP/examples/ns3.37-Echo_TCP-example-default: contrib/Echo_TCP/examples/CMakeFiles/Echo_TCP-example.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../build/contrib/Echo_TCP/examples/ns3.37-Echo_TCP-example-default"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/Echo_TCP/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Echo_TCP-example.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
contrib/Echo_TCP/examples/CMakeFiles/Echo_TCP-example.dir/build: ../build/contrib/Echo_TCP/examples/ns3.37-Echo_TCP-example-default

.PHONY : contrib/Echo_TCP/examples/CMakeFiles/Echo_TCP-example.dir/build

contrib/Echo_TCP/examples/CMakeFiles/Echo_TCP-example.dir/clean:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/Echo_TCP/examples && $(CMAKE_COMMAND) -P CMakeFiles/Echo_TCP-example.dir/cmake_clean.cmake
.PHONY : contrib/Echo_TCP/examples/CMakeFiles/Echo_TCP-example.dir/clean

contrib/Echo_TCP/examples/CMakeFiles/Echo_TCP-example.dir/depend:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/george/workspace/ns-allinone-3.37/ns-3.37 /home/george/workspace/ns-allinone-3.37/ns-3.37/contrib/Echo_TCP/examples /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/Echo_TCP/examples /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/Echo_TCP/examples/CMakeFiles/Echo_TCP-example.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contrib/Echo_TCP/examples/CMakeFiles/Echo_TCP-example.dir/depend

