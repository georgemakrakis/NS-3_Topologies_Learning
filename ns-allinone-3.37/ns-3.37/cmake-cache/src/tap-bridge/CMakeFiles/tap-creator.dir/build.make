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
include src/tap-bridge/CMakeFiles/tap-creator.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/tap-bridge/CMakeFiles/tap-creator.dir/compiler_depend.make

# Include the progress variables for this target.
include src/tap-bridge/CMakeFiles/tap-creator.dir/progress.make

# Include the compile flags for this target's objects.
include src/tap-bridge/CMakeFiles/tap-creator.dir/flags.make

src/tap-bridge/CMakeFiles/tap-creator.dir/model/tap-creator.cc.o: src/tap-bridge/CMakeFiles/tap-creator.dir/flags.make
src/tap-bridge/CMakeFiles/tap-creator.dir/model/tap-creator.cc.o: ../src/tap-bridge/model/tap-creator.cc
src/tap-bridge/CMakeFiles/tap-creator.dir/model/tap-creator.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx
src/tap-bridge/CMakeFiles/tap-creator.dir/model/tap-creator.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx.gch
src/tap-bridge/CMakeFiles/tap-creator.dir/model/tap-creator.cc.o: src/tap-bridge/CMakeFiles/tap-creator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/tap-bridge/CMakeFiles/tap-creator.dir/model/tap-creator.cc.o"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/tap-bridge && /usr/bin/ccache /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -MD -MT src/tap-bridge/CMakeFiles/tap-creator.dir/model/tap-creator.cc.o -MF CMakeFiles/tap-creator.dir/model/tap-creator.cc.o.d -o CMakeFiles/tap-creator.dir/model/tap-creator.cc.o -c /home/george/workspace/ns-allinone-3.37/ns-3.37/src/tap-bridge/model/tap-creator.cc

src/tap-bridge/CMakeFiles/tap-creator.dir/model/tap-creator.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tap-creator.dir/model/tap-creator.cc.i"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/tap-bridge && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -E /home/george/workspace/ns-allinone-3.37/ns-3.37/src/tap-bridge/model/tap-creator.cc > CMakeFiles/tap-creator.dir/model/tap-creator.cc.i

src/tap-bridge/CMakeFiles/tap-creator.dir/model/tap-creator.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tap-creator.dir/model/tap-creator.cc.s"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/tap-bridge && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -S /home/george/workspace/ns-allinone-3.37/ns-3.37/src/tap-bridge/model/tap-creator.cc -o CMakeFiles/tap-creator.dir/model/tap-creator.cc.s

src/tap-bridge/CMakeFiles/tap-creator.dir/model/tap-encode-decode.cc.o: src/tap-bridge/CMakeFiles/tap-creator.dir/flags.make
src/tap-bridge/CMakeFiles/tap-creator.dir/model/tap-encode-decode.cc.o: ../src/tap-bridge/model/tap-encode-decode.cc
src/tap-bridge/CMakeFiles/tap-creator.dir/model/tap-encode-decode.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx
src/tap-bridge/CMakeFiles/tap-creator.dir/model/tap-encode-decode.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx.gch
src/tap-bridge/CMakeFiles/tap-creator.dir/model/tap-encode-decode.cc.o: src/tap-bridge/CMakeFiles/tap-creator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/tap-bridge/CMakeFiles/tap-creator.dir/model/tap-encode-decode.cc.o"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/tap-bridge && /usr/bin/ccache /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -MD -MT src/tap-bridge/CMakeFiles/tap-creator.dir/model/tap-encode-decode.cc.o -MF CMakeFiles/tap-creator.dir/model/tap-encode-decode.cc.o.d -o CMakeFiles/tap-creator.dir/model/tap-encode-decode.cc.o -c /home/george/workspace/ns-allinone-3.37/ns-3.37/src/tap-bridge/model/tap-encode-decode.cc

src/tap-bridge/CMakeFiles/tap-creator.dir/model/tap-encode-decode.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tap-creator.dir/model/tap-encode-decode.cc.i"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/tap-bridge && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -E /home/george/workspace/ns-allinone-3.37/ns-3.37/src/tap-bridge/model/tap-encode-decode.cc > CMakeFiles/tap-creator.dir/model/tap-encode-decode.cc.i

src/tap-bridge/CMakeFiles/tap-creator.dir/model/tap-encode-decode.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tap-creator.dir/model/tap-encode-decode.cc.s"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/tap-bridge && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -S /home/george/workspace/ns-allinone-3.37/ns-3.37/src/tap-bridge/model/tap-encode-decode.cc -o CMakeFiles/tap-creator.dir/model/tap-encode-decode.cc.s

# Object files for target tap-creator
tap__creator_OBJECTS = \
"CMakeFiles/tap-creator.dir/model/tap-creator.cc.o" \
"CMakeFiles/tap-creator.dir/model/tap-encode-decode.cc.o"

# External object files for target tap-creator
tap__creator_EXTERNAL_OBJECTS =

../build/src/tap-bridge/ns3.37-tap-creator-default: src/tap-bridge/CMakeFiles/tap-creator.dir/model/tap-creator.cc.o
../build/src/tap-bridge/ns3.37-tap-creator-default: src/tap-bridge/CMakeFiles/tap-creator.dir/model/tap-encode-decode.cc.o
../build/src/tap-bridge/ns3.37-tap-creator-default: src/tap-bridge/CMakeFiles/tap-creator.dir/build.make
../build/src/tap-bridge/ns3.37-tap-creator-default: src/tap-bridge/CMakeFiles/tap-creator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../../../build/src/tap-bridge/ns3.37-tap-creator-default"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/tap-bridge && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tap-creator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/tap-bridge/CMakeFiles/tap-creator.dir/build: ../build/src/tap-bridge/ns3.37-tap-creator-default
.PHONY : src/tap-bridge/CMakeFiles/tap-creator.dir/build

src/tap-bridge/CMakeFiles/tap-creator.dir/clean:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/tap-bridge && $(CMAKE_COMMAND) -P CMakeFiles/tap-creator.dir/cmake_clean.cmake
.PHONY : src/tap-bridge/CMakeFiles/tap-creator.dir/clean

src/tap-bridge/CMakeFiles/tap-creator.dir/depend:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/george/workspace/ns-allinone-3.37/ns-3.37 /home/george/workspace/ns-allinone-3.37/ns-3.37/src/tap-bridge /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/tap-bridge /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/tap-bridge/CMakeFiles/tap-creator.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/tap-bridge/CMakeFiles/tap-creator.dir/depend

