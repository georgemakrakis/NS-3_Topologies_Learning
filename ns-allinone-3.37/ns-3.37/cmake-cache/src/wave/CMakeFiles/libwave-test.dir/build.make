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
include src/wave/CMakeFiles/libwave-test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/wave/CMakeFiles/libwave-test.dir/compiler_depend.make

# Include the progress variables for this target.
include src/wave/CMakeFiles/libwave-test.dir/progress.make

# Include the compile flags for this target's objects.
include src/wave/CMakeFiles/libwave-test.dir/flags.make

src/wave/CMakeFiles/libwave-test.dir/test/mac-extension-test-suite.cc.o: src/wave/CMakeFiles/libwave-test.dir/flags.make
src/wave/CMakeFiles/libwave-test.dir/test/mac-extension-test-suite.cc.o: ../src/wave/test/mac-extension-test-suite.cc
src/wave/CMakeFiles/libwave-test.dir/test/mac-extension-test-suite.cc.o: CMakeFiles/stdlib_pch.dir/cmake_pch.hxx
src/wave/CMakeFiles/libwave-test.dir/test/mac-extension-test-suite.cc.o: CMakeFiles/stdlib_pch.dir/cmake_pch.hxx.gch
src/wave/CMakeFiles/libwave-test.dir/test/mac-extension-test-suite.cc.o: src/wave/CMakeFiles/libwave-test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/wave/CMakeFiles/libwave-test.dir/test/mac-extension-test-suite.cc.o"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/wave && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -MD -MT src/wave/CMakeFiles/libwave-test.dir/test/mac-extension-test-suite.cc.o -MF CMakeFiles/libwave-test.dir/test/mac-extension-test-suite.cc.o.d -o CMakeFiles/libwave-test.dir/test/mac-extension-test-suite.cc.o -c /home/george/workspace/ns-allinone-3.37/ns-3.37/src/wave/test/mac-extension-test-suite.cc

src/wave/CMakeFiles/libwave-test.dir/test/mac-extension-test-suite.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libwave-test.dir/test/mac-extension-test-suite.cc.i"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/wave && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -E /home/george/workspace/ns-allinone-3.37/ns-3.37/src/wave/test/mac-extension-test-suite.cc > CMakeFiles/libwave-test.dir/test/mac-extension-test-suite.cc.i

src/wave/CMakeFiles/libwave-test.dir/test/mac-extension-test-suite.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libwave-test.dir/test/mac-extension-test-suite.cc.s"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/wave && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -S /home/george/workspace/ns-allinone-3.37/ns-3.37/src/wave/test/mac-extension-test-suite.cc -o CMakeFiles/libwave-test.dir/test/mac-extension-test-suite.cc.s

src/wave/CMakeFiles/libwave-test.dir/test/ocb-test-suite.cc.o: src/wave/CMakeFiles/libwave-test.dir/flags.make
src/wave/CMakeFiles/libwave-test.dir/test/ocb-test-suite.cc.o: ../src/wave/test/ocb-test-suite.cc
src/wave/CMakeFiles/libwave-test.dir/test/ocb-test-suite.cc.o: CMakeFiles/stdlib_pch.dir/cmake_pch.hxx
src/wave/CMakeFiles/libwave-test.dir/test/ocb-test-suite.cc.o: CMakeFiles/stdlib_pch.dir/cmake_pch.hxx.gch
src/wave/CMakeFiles/libwave-test.dir/test/ocb-test-suite.cc.o: src/wave/CMakeFiles/libwave-test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/wave/CMakeFiles/libwave-test.dir/test/ocb-test-suite.cc.o"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/wave && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -MD -MT src/wave/CMakeFiles/libwave-test.dir/test/ocb-test-suite.cc.o -MF CMakeFiles/libwave-test.dir/test/ocb-test-suite.cc.o.d -o CMakeFiles/libwave-test.dir/test/ocb-test-suite.cc.o -c /home/george/workspace/ns-allinone-3.37/ns-3.37/src/wave/test/ocb-test-suite.cc

src/wave/CMakeFiles/libwave-test.dir/test/ocb-test-suite.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libwave-test.dir/test/ocb-test-suite.cc.i"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/wave && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -E /home/george/workspace/ns-allinone-3.37/ns-3.37/src/wave/test/ocb-test-suite.cc > CMakeFiles/libwave-test.dir/test/ocb-test-suite.cc.i

src/wave/CMakeFiles/libwave-test.dir/test/ocb-test-suite.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libwave-test.dir/test/ocb-test-suite.cc.s"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/wave && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -S /home/george/workspace/ns-allinone-3.37/ns-3.37/src/wave/test/ocb-test-suite.cc -o CMakeFiles/libwave-test.dir/test/ocb-test-suite.cc.s

# Object files for target libwave-test
libwave__test_OBJECTS = \
"CMakeFiles/libwave-test.dir/test/mac-extension-test-suite.cc.o" \
"CMakeFiles/libwave-test.dir/test/ocb-test-suite.cc.o"

# External object files for target libwave-test
libwave__test_EXTERNAL_OBJECTS =

../build/lib/libns3.37-wave-test-default.so: src/wave/CMakeFiles/libwave-test.dir/test/mac-extension-test-suite.cc.o
../build/lib/libns3.37-wave-test-default.so: src/wave/CMakeFiles/libwave-test.dir/test/ocb-test-suite.cc.o
../build/lib/libns3.37-wave-test-default.so: src/wave/CMakeFiles/libwave-test.dir/build.make
../build/lib/libns3.37-wave-test-default.so: /usr/lib/x86_64-linux-gnu/libsqlite3.so
../build/lib/libns3.37-wave-test-default.so: src/wave/CMakeFiles/libwave-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library ../../../build/lib/libns3.37-wave-test-default.so"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/wave && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libwave-test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/wave/CMakeFiles/libwave-test.dir/build: ../build/lib/libns3.37-wave-test-default.so
.PHONY : src/wave/CMakeFiles/libwave-test.dir/build

src/wave/CMakeFiles/libwave-test.dir/clean:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/wave && $(CMAKE_COMMAND) -P CMakeFiles/libwave-test.dir/cmake_clean.cmake
.PHONY : src/wave/CMakeFiles/libwave-test.dir/clean

src/wave/CMakeFiles/libwave-test.dir/depend:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/george/workspace/ns-allinone-3.37/ns-3.37 /home/george/workspace/ns-allinone-3.37/ns-3.37/src/wave /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/wave /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/wave/CMakeFiles/libwave-test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/wave/CMakeFiles/libwave-test.dir/depend

