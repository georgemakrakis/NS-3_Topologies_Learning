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
include contrib/EmulatedTCPEchoExample/CMakeFiles/libEmulatedTCPEchoExample-obj.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include contrib/EmulatedTCPEchoExample/CMakeFiles/libEmulatedTCPEchoExample-obj.dir/compiler_depend.make

# Include the progress variables for this target.
include contrib/EmulatedTCPEchoExample/CMakeFiles/libEmulatedTCPEchoExample-obj.dir/progress.make

# Include the compile flags for this target's objects.
include contrib/EmulatedTCPEchoExample/CMakeFiles/libEmulatedTCPEchoExample-obj.dir/flags.make

contrib/EmulatedTCPEchoExample/CMakeFiles/libEmulatedTCPEchoExample-obj.dir/model/EmulatedTCPEchoExample.cc.o: contrib/EmulatedTCPEchoExample/CMakeFiles/libEmulatedTCPEchoExample-obj.dir/flags.make
contrib/EmulatedTCPEchoExample/CMakeFiles/libEmulatedTCPEchoExample-obj.dir/model/EmulatedTCPEchoExample.cc.o: ../contrib/EmulatedTCPEchoExample/model/EmulatedTCPEchoExample.cc
contrib/EmulatedTCPEchoExample/CMakeFiles/libEmulatedTCPEchoExample-obj.dir/model/EmulatedTCPEchoExample.cc.o: CMakeFiles/stdlib_pch.dir/cmake_pch.hxx
contrib/EmulatedTCPEchoExample/CMakeFiles/libEmulatedTCPEchoExample-obj.dir/model/EmulatedTCPEchoExample.cc.o: CMakeFiles/stdlib_pch.dir/cmake_pch.hxx.gch
contrib/EmulatedTCPEchoExample/CMakeFiles/libEmulatedTCPEchoExample-obj.dir/model/EmulatedTCPEchoExample.cc.o: contrib/EmulatedTCPEchoExample/CMakeFiles/libEmulatedTCPEchoExample-obj.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object contrib/EmulatedTCPEchoExample/CMakeFiles/libEmulatedTCPEchoExample-obj.dir/model/EmulatedTCPEchoExample.cc.o"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/EmulatedTCPEchoExample && /usr/bin/ccache /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -MD -MT contrib/EmulatedTCPEchoExample/CMakeFiles/libEmulatedTCPEchoExample-obj.dir/model/EmulatedTCPEchoExample.cc.o -MF CMakeFiles/libEmulatedTCPEchoExample-obj.dir/model/EmulatedTCPEchoExample.cc.o.d -o CMakeFiles/libEmulatedTCPEchoExample-obj.dir/model/EmulatedTCPEchoExample.cc.o -c /home/george/workspace/ns-allinone-3.37/ns-3.37/contrib/EmulatedTCPEchoExample/model/EmulatedTCPEchoExample.cc

contrib/EmulatedTCPEchoExample/CMakeFiles/libEmulatedTCPEchoExample-obj.dir/model/EmulatedTCPEchoExample.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libEmulatedTCPEchoExample-obj.dir/model/EmulatedTCPEchoExample.cc.i"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/EmulatedTCPEchoExample && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -E /home/george/workspace/ns-allinone-3.37/ns-3.37/contrib/EmulatedTCPEchoExample/model/EmulatedTCPEchoExample.cc > CMakeFiles/libEmulatedTCPEchoExample-obj.dir/model/EmulatedTCPEchoExample.cc.i

contrib/EmulatedTCPEchoExample/CMakeFiles/libEmulatedTCPEchoExample-obj.dir/model/EmulatedTCPEchoExample.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libEmulatedTCPEchoExample-obj.dir/model/EmulatedTCPEchoExample.cc.s"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/EmulatedTCPEchoExample && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -S /home/george/workspace/ns-allinone-3.37/ns-3.37/contrib/EmulatedTCPEchoExample/model/EmulatedTCPEchoExample.cc -o CMakeFiles/libEmulatedTCPEchoExample-obj.dir/model/EmulatedTCPEchoExample.cc.s

contrib/EmulatedTCPEchoExample/CMakeFiles/libEmulatedTCPEchoExample-obj.dir/helper/EmulatedTCPEchoExample-helper.cc.o: contrib/EmulatedTCPEchoExample/CMakeFiles/libEmulatedTCPEchoExample-obj.dir/flags.make
contrib/EmulatedTCPEchoExample/CMakeFiles/libEmulatedTCPEchoExample-obj.dir/helper/EmulatedTCPEchoExample-helper.cc.o: ../contrib/EmulatedTCPEchoExample/helper/EmulatedTCPEchoExample-helper.cc
contrib/EmulatedTCPEchoExample/CMakeFiles/libEmulatedTCPEchoExample-obj.dir/helper/EmulatedTCPEchoExample-helper.cc.o: CMakeFiles/stdlib_pch.dir/cmake_pch.hxx
contrib/EmulatedTCPEchoExample/CMakeFiles/libEmulatedTCPEchoExample-obj.dir/helper/EmulatedTCPEchoExample-helper.cc.o: CMakeFiles/stdlib_pch.dir/cmake_pch.hxx.gch
contrib/EmulatedTCPEchoExample/CMakeFiles/libEmulatedTCPEchoExample-obj.dir/helper/EmulatedTCPEchoExample-helper.cc.o: contrib/EmulatedTCPEchoExample/CMakeFiles/libEmulatedTCPEchoExample-obj.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object contrib/EmulatedTCPEchoExample/CMakeFiles/libEmulatedTCPEchoExample-obj.dir/helper/EmulatedTCPEchoExample-helper.cc.o"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/EmulatedTCPEchoExample && /usr/bin/ccache /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -MD -MT contrib/EmulatedTCPEchoExample/CMakeFiles/libEmulatedTCPEchoExample-obj.dir/helper/EmulatedTCPEchoExample-helper.cc.o -MF CMakeFiles/libEmulatedTCPEchoExample-obj.dir/helper/EmulatedTCPEchoExample-helper.cc.o.d -o CMakeFiles/libEmulatedTCPEchoExample-obj.dir/helper/EmulatedTCPEchoExample-helper.cc.o -c /home/george/workspace/ns-allinone-3.37/ns-3.37/contrib/EmulatedTCPEchoExample/helper/EmulatedTCPEchoExample-helper.cc

contrib/EmulatedTCPEchoExample/CMakeFiles/libEmulatedTCPEchoExample-obj.dir/helper/EmulatedTCPEchoExample-helper.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libEmulatedTCPEchoExample-obj.dir/helper/EmulatedTCPEchoExample-helper.cc.i"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/EmulatedTCPEchoExample && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -E /home/george/workspace/ns-allinone-3.37/ns-3.37/contrib/EmulatedTCPEchoExample/helper/EmulatedTCPEchoExample-helper.cc > CMakeFiles/libEmulatedTCPEchoExample-obj.dir/helper/EmulatedTCPEchoExample-helper.cc.i

contrib/EmulatedTCPEchoExample/CMakeFiles/libEmulatedTCPEchoExample-obj.dir/helper/EmulatedTCPEchoExample-helper.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libEmulatedTCPEchoExample-obj.dir/helper/EmulatedTCPEchoExample-helper.cc.s"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/EmulatedTCPEchoExample && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -S /home/george/workspace/ns-allinone-3.37/ns-3.37/contrib/EmulatedTCPEchoExample/helper/EmulatedTCPEchoExample-helper.cc -o CMakeFiles/libEmulatedTCPEchoExample-obj.dir/helper/EmulatedTCPEchoExample-helper.cc.s

libEmulatedTCPEchoExample-obj: contrib/EmulatedTCPEchoExample/CMakeFiles/libEmulatedTCPEchoExample-obj.dir/model/EmulatedTCPEchoExample.cc.o
libEmulatedTCPEchoExample-obj: contrib/EmulatedTCPEchoExample/CMakeFiles/libEmulatedTCPEchoExample-obj.dir/helper/EmulatedTCPEchoExample-helper.cc.o
libEmulatedTCPEchoExample-obj: contrib/EmulatedTCPEchoExample/CMakeFiles/libEmulatedTCPEchoExample-obj.dir/build.make
.PHONY : libEmulatedTCPEchoExample-obj

# Rule to build all files generated by this target.
contrib/EmulatedTCPEchoExample/CMakeFiles/libEmulatedTCPEchoExample-obj.dir/build: libEmulatedTCPEchoExample-obj
.PHONY : contrib/EmulatedTCPEchoExample/CMakeFiles/libEmulatedTCPEchoExample-obj.dir/build

contrib/EmulatedTCPEchoExample/CMakeFiles/libEmulatedTCPEchoExample-obj.dir/clean:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/EmulatedTCPEchoExample && $(CMAKE_COMMAND) -P CMakeFiles/libEmulatedTCPEchoExample-obj.dir/cmake_clean.cmake
.PHONY : contrib/EmulatedTCPEchoExample/CMakeFiles/libEmulatedTCPEchoExample-obj.dir/clean

contrib/EmulatedTCPEchoExample/CMakeFiles/libEmulatedTCPEchoExample-obj.dir/depend:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/george/workspace/ns-allinone-3.37/ns-3.37 /home/george/workspace/ns-allinone-3.37/ns-3.37/contrib/EmulatedTCPEchoExample /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/EmulatedTCPEchoExample /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/EmulatedTCPEchoExample/CMakeFiles/libEmulatedTCPEchoExample-obj.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contrib/EmulatedTCPEchoExample/CMakeFiles/libEmulatedTCPEchoExample-obj.dir/depend
