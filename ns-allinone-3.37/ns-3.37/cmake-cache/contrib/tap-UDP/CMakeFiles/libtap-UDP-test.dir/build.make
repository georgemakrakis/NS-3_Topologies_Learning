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
include contrib/tap-UDP/CMakeFiles/libtap-UDP-test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include contrib/tap-UDP/CMakeFiles/libtap-UDP-test.dir/compiler_depend.make

# Include the progress variables for this target.
include contrib/tap-UDP/CMakeFiles/libtap-UDP-test.dir/progress.make

# Include the compile flags for this target's objects.
include contrib/tap-UDP/CMakeFiles/libtap-UDP-test.dir/flags.make

contrib/tap-UDP/CMakeFiles/libtap-UDP-test.dir/test/tap-UDP-test-suite.cc.o: contrib/tap-UDP/CMakeFiles/libtap-UDP-test.dir/flags.make
contrib/tap-UDP/CMakeFiles/libtap-UDP-test.dir/test/tap-UDP-test-suite.cc.o: ../contrib/tap-UDP/test/tap-UDP-test-suite.cc
contrib/tap-UDP/CMakeFiles/libtap-UDP-test.dir/test/tap-UDP-test-suite.cc.o: CMakeFiles/stdlib_pch.dir/cmake_pch.hxx
contrib/tap-UDP/CMakeFiles/libtap-UDP-test.dir/test/tap-UDP-test-suite.cc.o: CMakeFiles/stdlib_pch.dir/cmake_pch.hxx.gch
contrib/tap-UDP/CMakeFiles/libtap-UDP-test.dir/test/tap-UDP-test-suite.cc.o: contrib/tap-UDP/CMakeFiles/libtap-UDP-test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object contrib/tap-UDP/CMakeFiles/libtap-UDP-test.dir/test/tap-UDP-test-suite.cc.o"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/tap-UDP && /usr/bin/ccache /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -MD -MT contrib/tap-UDP/CMakeFiles/libtap-UDP-test.dir/test/tap-UDP-test-suite.cc.o -MF CMakeFiles/libtap-UDP-test.dir/test/tap-UDP-test-suite.cc.o.d -o CMakeFiles/libtap-UDP-test.dir/test/tap-UDP-test-suite.cc.o -c /home/george/workspace/ns-allinone-3.37/ns-3.37/contrib/tap-UDP/test/tap-UDP-test-suite.cc

contrib/tap-UDP/CMakeFiles/libtap-UDP-test.dir/test/tap-UDP-test-suite.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libtap-UDP-test.dir/test/tap-UDP-test-suite.cc.i"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/tap-UDP && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -E /home/george/workspace/ns-allinone-3.37/ns-3.37/contrib/tap-UDP/test/tap-UDP-test-suite.cc > CMakeFiles/libtap-UDP-test.dir/test/tap-UDP-test-suite.cc.i

contrib/tap-UDP/CMakeFiles/libtap-UDP-test.dir/test/tap-UDP-test-suite.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libtap-UDP-test.dir/test/tap-UDP-test-suite.cc.s"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/tap-UDP && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -S /home/george/workspace/ns-allinone-3.37/ns-3.37/contrib/tap-UDP/test/tap-UDP-test-suite.cc -o CMakeFiles/libtap-UDP-test.dir/test/tap-UDP-test-suite.cc.s

# Object files for target libtap-UDP-test
libtap__UDP__test_OBJECTS = \
"CMakeFiles/libtap-UDP-test.dir/test/tap-UDP-test-suite.cc.o"

# External object files for target libtap-UDP-test
libtap__UDP__test_EXTERNAL_OBJECTS =

../build/lib/libns3.37-tap-UDP-test-default.so: contrib/tap-UDP/CMakeFiles/libtap-UDP-test.dir/test/tap-UDP-test-suite.cc.o
../build/lib/libns3.37-tap-UDP-test-default.so: contrib/tap-UDP/CMakeFiles/libtap-UDP-test.dir/build.make
../build/lib/libns3.37-tap-UDP-test-default.so: contrib/tap-UDP/CMakeFiles/libtap-UDP-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library ../../../build/lib/libns3.37-tap-UDP-test-default.so"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/tap-UDP && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libtap-UDP-test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
contrib/tap-UDP/CMakeFiles/libtap-UDP-test.dir/build: ../build/lib/libns3.37-tap-UDP-test-default.so
.PHONY : contrib/tap-UDP/CMakeFiles/libtap-UDP-test.dir/build

contrib/tap-UDP/CMakeFiles/libtap-UDP-test.dir/clean:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/tap-UDP && $(CMAKE_COMMAND) -P CMakeFiles/libtap-UDP-test.dir/cmake_clean.cmake
.PHONY : contrib/tap-UDP/CMakeFiles/libtap-UDP-test.dir/clean

contrib/tap-UDP/CMakeFiles/libtap-UDP-test.dir/depend:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/george/workspace/ns-allinone-3.37/ns-3.37 /home/george/workspace/ns-allinone-3.37/ns-3.37/contrib/tap-UDP /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/tap-UDP /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/tap-UDP/CMakeFiles/libtap-UDP-test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contrib/tap-UDP/CMakeFiles/libtap-UDP-test.dir/depend

