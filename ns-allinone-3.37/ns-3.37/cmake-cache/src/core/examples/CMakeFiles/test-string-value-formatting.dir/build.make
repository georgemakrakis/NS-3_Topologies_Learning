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
include src/core/examples/CMakeFiles/test-string-value-formatting.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/core/examples/CMakeFiles/test-string-value-formatting.dir/compiler_depend.make

# Include the progress variables for this target.
include src/core/examples/CMakeFiles/test-string-value-formatting.dir/progress.make

# Include the compile flags for this target's objects.
include src/core/examples/CMakeFiles/test-string-value-formatting.dir/flags.make

src/core/examples/CMakeFiles/test-string-value-formatting.dir/test-string-value-formatting.cc.o: src/core/examples/CMakeFiles/test-string-value-formatting.dir/flags.make
src/core/examples/CMakeFiles/test-string-value-formatting.dir/test-string-value-formatting.cc.o: ../src/core/examples/test-string-value-formatting.cc
src/core/examples/CMakeFiles/test-string-value-formatting.dir/test-string-value-formatting.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx
src/core/examples/CMakeFiles/test-string-value-formatting.dir/test-string-value-formatting.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx.gch
src/core/examples/CMakeFiles/test-string-value-formatting.dir/test-string-value-formatting.cc.o: src/core/examples/CMakeFiles/test-string-value-formatting.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/core/examples/CMakeFiles/test-string-value-formatting.dir/test-string-value-formatting.cc.o"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/core/examples && /usr/bin/ccache /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -MD -MT src/core/examples/CMakeFiles/test-string-value-formatting.dir/test-string-value-formatting.cc.o -MF CMakeFiles/test-string-value-formatting.dir/test-string-value-formatting.cc.o.d -o CMakeFiles/test-string-value-formatting.dir/test-string-value-formatting.cc.o -c /home/george/workspace/ns-allinone-3.37/ns-3.37/src/core/examples/test-string-value-formatting.cc

src/core/examples/CMakeFiles/test-string-value-formatting.dir/test-string-value-formatting.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-string-value-formatting.dir/test-string-value-formatting.cc.i"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/core/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -E /home/george/workspace/ns-allinone-3.37/ns-3.37/src/core/examples/test-string-value-formatting.cc > CMakeFiles/test-string-value-formatting.dir/test-string-value-formatting.cc.i

src/core/examples/CMakeFiles/test-string-value-formatting.dir/test-string-value-formatting.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-string-value-formatting.dir/test-string-value-formatting.cc.s"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/core/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -S /home/george/workspace/ns-allinone-3.37/ns-3.37/src/core/examples/test-string-value-formatting.cc -o CMakeFiles/test-string-value-formatting.dir/test-string-value-formatting.cc.s

# Object files for target test-string-value-formatting
test__string__value__formatting_OBJECTS = \
"CMakeFiles/test-string-value-formatting.dir/test-string-value-formatting.cc.o"

# External object files for target test-string-value-formatting
test__string__value__formatting_EXTERNAL_OBJECTS =

../build/src/core/examples/ns3.37-test-string-value-formatting-default: src/core/examples/CMakeFiles/test-string-value-formatting.dir/test-string-value-formatting.cc.o
../build/src/core/examples/ns3.37-test-string-value-formatting-default: src/core/examples/CMakeFiles/test-string-value-formatting.dir/build.make
../build/src/core/examples/ns3.37-test-string-value-formatting-default: src/core/examples/CMakeFiles/test-string-value-formatting.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../build/src/core/examples/ns3.37-test-string-value-formatting-default"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/core/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-string-value-formatting.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/core/examples/CMakeFiles/test-string-value-formatting.dir/build: ../build/src/core/examples/ns3.37-test-string-value-formatting-default
.PHONY : src/core/examples/CMakeFiles/test-string-value-formatting.dir/build

src/core/examples/CMakeFiles/test-string-value-formatting.dir/clean:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/core/examples && $(CMAKE_COMMAND) -P CMakeFiles/test-string-value-formatting.dir/cmake_clean.cmake
.PHONY : src/core/examples/CMakeFiles/test-string-value-formatting.dir/clean

src/core/examples/CMakeFiles/test-string-value-formatting.dir/depend:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/george/workspace/ns-allinone-3.37/ns-3.37 /home/george/workspace/ns-allinone-3.37/ns-3.37/src/core/examples /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/core/examples /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/core/examples/CMakeFiles/test-string-value-formatting.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/core/examples/CMakeFiles/test-string-value-formatting.dir/depend

