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
include src/csma/CMakeFiles/libcsma-obj.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/csma/CMakeFiles/libcsma-obj.dir/compiler_depend.make

# Include the progress variables for this target.
include src/csma/CMakeFiles/libcsma-obj.dir/progress.make

# Include the compile flags for this target's objects.
include src/csma/CMakeFiles/libcsma-obj.dir/flags.make

src/csma/CMakeFiles/libcsma-obj.dir/helper/csma-helper.cc.o: src/csma/CMakeFiles/libcsma-obj.dir/flags.make
src/csma/CMakeFiles/libcsma-obj.dir/helper/csma-helper.cc.o: ../src/csma/helper/csma-helper.cc
src/csma/CMakeFiles/libcsma-obj.dir/helper/csma-helper.cc.o: CMakeFiles/stdlib_pch.dir/cmake_pch.hxx
src/csma/CMakeFiles/libcsma-obj.dir/helper/csma-helper.cc.o: CMakeFiles/stdlib_pch.dir/cmake_pch.hxx.gch
src/csma/CMakeFiles/libcsma-obj.dir/helper/csma-helper.cc.o: src/csma/CMakeFiles/libcsma-obj.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/csma/CMakeFiles/libcsma-obj.dir/helper/csma-helper.cc.o"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/csma && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -MD -MT src/csma/CMakeFiles/libcsma-obj.dir/helper/csma-helper.cc.o -MF CMakeFiles/libcsma-obj.dir/helper/csma-helper.cc.o.d -o CMakeFiles/libcsma-obj.dir/helper/csma-helper.cc.o -c /home/george/workspace/ns-allinone-3.37/ns-3.37/src/csma/helper/csma-helper.cc

src/csma/CMakeFiles/libcsma-obj.dir/helper/csma-helper.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libcsma-obj.dir/helper/csma-helper.cc.i"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/csma && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -E /home/george/workspace/ns-allinone-3.37/ns-3.37/src/csma/helper/csma-helper.cc > CMakeFiles/libcsma-obj.dir/helper/csma-helper.cc.i

src/csma/CMakeFiles/libcsma-obj.dir/helper/csma-helper.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libcsma-obj.dir/helper/csma-helper.cc.s"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/csma && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -S /home/george/workspace/ns-allinone-3.37/ns-3.37/src/csma/helper/csma-helper.cc -o CMakeFiles/libcsma-obj.dir/helper/csma-helper.cc.s

src/csma/CMakeFiles/libcsma-obj.dir/model/backoff.cc.o: src/csma/CMakeFiles/libcsma-obj.dir/flags.make
src/csma/CMakeFiles/libcsma-obj.dir/model/backoff.cc.o: ../src/csma/model/backoff.cc
src/csma/CMakeFiles/libcsma-obj.dir/model/backoff.cc.o: CMakeFiles/stdlib_pch.dir/cmake_pch.hxx
src/csma/CMakeFiles/libcsma-obj.dir/model/backoff.cc.o: CMakeFiles/stdlib_pch.dir/cmake_pch.hxx.gch
src/csma/CMakeFiles/libcsma-obj.dir/model/backoff.cc.o: src/csma/CMakeFiles/libcsma-obj.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/csma/CMakeFiles/libcsma-obj.dir/model/backoff.cc.o"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/csma && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -MD -MT src/csma/CMakeFiles/libcsma-obj.dir/model/backoff.cc.o -MF CMakeFiles/libcsma-obj.dir/model/backoff.cc.o.d -o CMakeFiles/libcsma-obj.dir/model/backoff.cc.o -c /home/george/workspace/ns-allinone-3.37/ns-3.37/src/csma/model/backoff.cc

src/csma/CMakeFiles/libcsma-obj.dir/model/backoff.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libcsma-obj.dir/model/backoff.cc.i"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/csma && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -E /home/george/workspace/ns-allinone-3.37/ns-3.37/src/csma/model/backoff.cc > CMakeFiles/libcsma-obj.dir/model/backoff.cc.i

src/csma/CMakeFiles/libcsma-obj.dir/model/backoff.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libcsma-obj.dir/model/backoff.cc.s"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/csma && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -S /home/george/workspace/ns-allinone-3.37/ns-3.37/src/csma/model/backoff.cc -o CMakeFiles/libcsma-obj.dir/model/backoff.cc.s

src/csma/CMakeFiles/libcsma-obj.dir/model/csma-channel.cc.o: src/csma/CMakeFiles/libcsma-obj.dir/flags.make
src/csma/CMakeFiles/libcsma-obj.dir/model/csma-channel.cc.o: ../src/csma/model/csma-channel.cc
src/csma/CMakeFiles/libcsma-obj.dir/model/csma-channel.cc.o: CMakeFiles/stdlib_pch.dir/cmake_pch.hxx
src/csma/CMakeFiles/libcsma-obj.dir/model/csma-channel.cc.o: CMakeFiles/stdlib_pch.dir/cmake_pch.hxx.gch
src/csma/CMakeFiles/libcsma-obj.dir/model/csma-channel.cc.o: src/csma/CMakeFiles/libcsma-obj.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/csma/CMakeFiles/libcsma-obj.dir/model/csma-channel.cc.o"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/csma && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -MD -MT src/csma/CMakeFiles/libcsma-obj.dir/model/csma-channel.cc.o -MF CMakeFiles/libcsma-obj.dir/model/csma-channel.cc.o.d -o CMakeFiles/libcsma-obj.dir/model/csma-channel.cc.o -c /home/george/workspace/ns-allinone-3.37/ns-3.37/src/csma/model/csma-channel.cc

src/csma/CMakeFiles/libcsma-obj.dir/model/csma-channel.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libcsma-obj.dir/model/csma-channel.cc.i"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/csma && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -E /home/george/workspace/ns-allinone-3.37/ns-3.37/src/csma/model/csma-channel.cc > CMakeFiles/libcsma-obj.dir/model/csma-channel.cc.i

src/csma/CMakeFiles/libcsma-obj.dir/model/csma-channel.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libcsma-obj.dir/model/csma-channel.cc.s"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/csma && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -S /home/george/workspace/ns-allinone-3.37/ns-3.37/src/csma/model/csma-channel.cc -o CMakeFiles/libcsma-obj.dir/model/csma-channel.cc.s

src/csma/CMakeFiles/libcsma-obj.dir/model/csma-net-device.cc.o: src/csma/CMakeFiles/libcsma-obj.dir/flags.make
src/csma/CMakeFiles/libcsma-obj.dir/model/csma-net-device.cc.o: ../src/csma/model/csma-net-device.cc
src/csma/CMakeFiles/libcsma-obj.dir/model/csma-net-device.cc.o: CMakeFiles/stdlib_pch.dir/cmake_pch.hxx
src/csma/CMakeFiles/libcsma-obj.dir/model/csma-net-device.cc.o: CMakeFiles/stdlib_pch.dir/cmake_pch.hxx.gch
src/csma/CMakeFiles/libcsma-obj.dir/model/csma-net-device.cc.o: src/csma/CMakeFiles/libcsma-obj.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/csma/CMakeFiles/libcsma-obj.dir/model/csma-net-device.cc.o"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/csma && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -MD -MT src/csma/CMakeFiles/libcsma-obj.dir/model/csma-net-device.cc.o -MF CMakeFiles/libcsma-obj.dir/model/csma-net-device.cc.o.d -o CMakeFiles/libcsma-obj.dir/model/csma-net-device.cc.o -c /home/george/workspace/ns-allinone-3.37/ns-3.37/src/csma/model/csma-net-device.cc

src/csma/CMakeFiles/libcsma-obj.dir/model/csma-net-device.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libcsma-obj.dir/model/csma-net-device.cc.i"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/csma && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -E /home/george/workspace/ns-allinone-3.37/ns-3.37/src/csma/model/csma-net-device.cc > CMakeFiles/libcsma-obj.dir/model/csma-net-device.cc.i

src/csma/CMakeFiles/libcsma-obj.dir/model/csma-net-device.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libcsma-obj.dir/model/csma-net-device.cc.s"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/csma && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -S /home/george/workspace/ns-allinone-3.37/ns-3.37/src/csma/model/csma-net-device.cc -o CMakeFiles/libcsma-obj.dir/model/csma-net-device.cc.s

libcsma-obj: src/csma/CMakeFiles/libcsma-obj.dir/helper/csma-helper.cc.o
libcsma-obj: src/csma/CMakeFiles/libcsma-obj.dir/model/backoff.cc.o
libcsma-obj: src/csma/CMakeFiles/libcsma-obj.dir/model/csma-channel.cc.o
libcsma-obj: src/csma/CMakeFiles/libcsma-obj.dir/model/csma-net-device.cc.o
libcsma-obj: src/csma/CMakeFiles/libcsma-obj.dir/build.make
.PHONY : libcsma-obj

# Rule to build all files generated by this target.
src/csma/CMakeFiles/libcsma-obj.dir/build: libcsma-obj
.PHONY : src/csma/CMakeFiles/libcsma-obj.dir/build

src/csma/CMakeFiles/libcsma-obj.dir/clean:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/csma && $(CMAKE_COMMAND) -P CMakeFiles/libcsma-obj.dir/cmake_clean.cmake
.PHONY : src/csma/CMakeFiles/libcsma-obj.dir/clean

src/csma/CMakeFiles/libcsma-obj.dir/depend:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/george/workspace/ns-allinone-3.37/ns-3.37 /home/george/workspace/ns-allinone-3.37/ns-3.37/src/csma /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/csma /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/csma/CMakeFiles/libcsma-obj.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/csma/CMakeFiles/libcsma-obj.dir/depend

