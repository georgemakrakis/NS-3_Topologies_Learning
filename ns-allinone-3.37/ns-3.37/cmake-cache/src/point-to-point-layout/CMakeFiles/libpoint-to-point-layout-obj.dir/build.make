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
include src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/depend.make

# Include the progress variables for this target.
include src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/progress.make

# Include the compile flags for this target's objects.
include src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/flags.make

src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-dumbbell.cc.o: src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/flags.make
src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-dumbbell.cc.o: ../src/point-to-point-layout/model/point-to-point-dumbbell.cc
src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-dumbbell.cc.o: CMakeFiles/stdlib_pch.dir/cmake_pch.hxx
src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-dumbbell.cc.o: CMakeFiles/stdlib_pch.dir/cmake_pch.hxx.gch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-dumbbell.cc.o"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/point-to-point-layout && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -o CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-dumbbell.cc.o -c /home/george/workspace/ns-allinone-3.37/ns-3.37/src/point-to-point-layout/model/point-to-point-dumbbell.cc

src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-dumbbell.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-dumbbell.cc.i"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/point-to-point-layout && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -E /home/george/workspace/ns-allinone-3.37/ns-3.37/src/point-to-point-layout/model/point-to-point-dumbbell.cc > CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-dumbbell.cc.i

src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-dumbbell.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-dumbbell.cc.s"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/point-to-point-layout && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -S /home/george/workspace/ns-allinone-3.37/ns-3.37/src/point-to-point-layout/model/point-to-point-dumbbell.cc -o CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-dumbbell.cc.s

src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-grid.cc.o: src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/flags.make
src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-grid.cc.o: ../src/point-to-point-layout/model/point-to-point-grid.cc
src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-grid.cc.o: CMakeFiles/stdlib_pch.dir/cmake_pch.hxx
src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-grid.cc.o: CMakeFiles/stdlib_pch.dir/cmake_pch.hxx.gch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-grid.cc.o"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/point-to-point-layout && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -o CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-grid.cc.o -c /home/george/workspace/ns-allinone-3.37/ns-3.37/src/point-to-point-layout/model/point-to-point-grid.cc

src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-grid.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-grid.cc.i"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/point-to-point-layout && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -E /home/george/workspace/ns-allinone-3.37/ns-3.37/src/point-to-point-layout/model/point-to-point-grid.cc > CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-grid.cc.i

src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-grid.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-grid.cc.s"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/point-to-point-layout && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -S /home/george/workspace/ns-allinone-3.37/ns-3.37/src/point-to-point-layout/model/point-to-point-grid.cc -o CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-grid.cc.s

src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-star.cc.o: src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/flags.make
src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-star.cc.o: ../src/point-to-point-layout/model/point-to-point-star.cc
src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-star.cc.o: CMakeFiles/stdlib_pch.dir/cmake_pch.hxx
src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-star.cc.o: CMakeFiles/stdlib_pch.dir/cmake_pch.hxx.gch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-star.cc.o"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/point-to-point-layout && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -o CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-star.cc.o -c /home/george/workspace/ns-allinone-3.37/ns-3.37/src/point-to-point-layout/model/point-to-point-star.cc

src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-star.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-star.cc.i"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/point-to-point-layout && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -E /home/george/workspace/ns-allinone-3.37/ns-3.37/src/point-to-point-layout/model/point-to-point-star.cc > CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-star.cc.i

src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-star.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-star.cc.s"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/point-to-point-layout && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -S /home/george/workspace/ns-allinone-3.37/ns-3.37/src/point-to-point-layout/model/point-to-point-star.cc -o CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-star.cc.s

libpoint-to-point-layout-obj: src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-dumbbell.cc.o
libpoint-to-point-layout-obj: src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-grid.cc.o
libpoint-to-point-layout-obj: src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/model/point-to-point-star.cc.o
libpoint-to-point-layout-obj: src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/build.make

.PHONY : libpoint-to-point-layout-obj

# Rule to build all files generated by this target.
src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/build: libpoint-to-point-layout-obj

.PHONY : src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/build

src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/clean:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/point-to-point-layout && $(CMAKE_COMMAND) -P CMakeFiles/libpoint-to-point-layout-obj.dir/cmake_clean.cmake
.PHONY : src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/clean

src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/depend:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/george/workspace/ns-allinone-3.37/ns-3.37 /home/george/workspace/ns-allinone-3.37/ns-3.37/src/point-to-point-layout /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/point-to-point-layout /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/point-to-point-layout/CMakeFiles/libpoint-to-point-layout-obj.dir/depend

