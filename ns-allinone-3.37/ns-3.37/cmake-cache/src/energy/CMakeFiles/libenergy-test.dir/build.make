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
include src/energy/CMakeFiles/libenergy-test.dir/depend.make

# Include the progress variables for this target.
include src/energy/CMakeFiles/libenergy-test.dir/progress.make

# Include the compile flags for this target's objects.
include src/energy/CMakeFiles/libenergy-test.dir/flags.make

src/energy/CMakeFiles/libenergy-test.dir/test/basic-energy-harvester-test.cc.o: src/energy/CMakeFiles/libenergy-test.dir/flags.make
src/energy/CMakeFiles/libenergy-test.dir/test/basic-energy-harvester-test.cc.o: ../src/energy/test/basic-energy-harvester-test.cc
src/energy/CMakeFiles/libenergy-test.dir/test/basic-energy-harvester-test.cc.o: CMakeFiles/stdlib_pch.dir/cmake_pch.hxx
src/energy/CMakeFiles/libenergy-test.dir/test/basic-energy-harvester-test.cc.o: CMakeFiles/stdlib_pch.dir/cmake_pch.hxx.gch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/energy/CMakeFiles/libenergy-test.dir/test/basic-energy-harvester-test.cc.o"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/energy && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -o CMakeFiles/libenergy-test.dir/test/basic-energy-harvester-test.cc.o -c /home/george/workspace/ns-allinone-3.37/ns-3.37/src/energy/test/basic-energy-harvester-test.cc

src/energy/CMakeFiles/libenergy-test.dir/test/basic-energy-harvester-test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libenergy-test.dir/test/basic-energy-harvester-test.cc.i"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/energy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -E /home/george/workspace/ns-allinone-3.37/ns-3.37/src/energy/test/basic-energy-harvester-test.cc > CMakeFiles/libenergy-test.dir/test/basic-energy-harvester-test.cc.i

src/energy/CMakeFiles/libenergy-test.dir/test/basic-energy-harvester-test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libenergy-test.dir/test/basic-energy-harvester-test.cc.s"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/energy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -S /home/george/workspace/ns-allinone-3.37/ns-3.37/src/energy/test/basic-energy-harvester-test.cc -o CMakeFiles/libenergy-test.dir/test/basic-energy-harvester-test.cc.s

src/energy/CMakeFiles/libenergy-test.dir/test/li-ion-energy-source-test.cc.o: src/energy/CMakeFiles/libenergy-test.dir/flags.make
src/energy/CMakeFiles/libenergy-test.dir/test/li-ion-energy-source-test.cc.o: ../src/energy/test/li-ion-energy-source-test.cc
src/energy/CMakeFiles/libenergy-test.dir/test/li-ion-energy-source-test.cc.o: CMakeFiles/stdlib_pch.dir/cmake_pch.hxx
src/energy/CMakeFiles/libenergy-test.dir/test/li-ion-energy-source-test.cc.o: CMakeFiles/stdlib_pch.dir/cmake_pch.hxx.gch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/energy/CMakeFiles/libenergy-test.dir/test/li-ion-energy-source-test.cc.o"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/energy && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -o CMakeFiles/libenergy-test.dir/test/li-ion-energy-source-test.cc.o -c /home/george/workspace/ns-allinone-3.37/ns-3.37/src/energy/test/li-ion-energy-source-test.cc

src/energy/CMakeFiles/libenergy-test.dir/test/li-ion-energy-source-test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libenergy-test.dir/test/li-ion-energy-source-test.cc.i"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/energy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -E /home/george/workspace/ns-allinone-3.37/ns-3.37/src/energy/test/li-ion-energy-source-test.cc > CMakeFiles/libenergy-test.dir/test/li-ion-energy-source-test.cc.i

src/energy/CMakeFiles/libenergy-test.dir/test/li-ion-energy-source-test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libenergy-test.dir/test/li-ion-energy-source-test.cc.s"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/energy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -S /home/george/workspace/ns-allinone-3.37/ns-3.37/src/energy/test/li-ion-energy-source-test.cc -o CMakeFiles/libenergy-test.dir/test/li-ion-energy-source-test.cc.s

# Object files for target libenergy-test
libenergy__test_OBJECTS = \
"CMakeFiles/libenergy-test.dir/test/basic-energy-harvester-test.cc.o" \
"CMakeFiles/libenergy-test.dir/test/li-ion-energy-source-test.cc.o"

# External object files for target libenergy-test
libenergy__test_EXTERNAL_OBJECTS =

../build/lib/libns3.37-energy-test-default.so: src/energy/CMakeFiles/libenergy-test.dir/test/basic-energy-harvester-test.cc.o
../build/lib/libns3.37-energy-test-default.so: src/energy/CMakeFiles/libenergy-test.dir/test/li-ion-energy-source-test.cc.o
../build/lib/libns3.37-energy-test-default.so: src/energy/CMakeFiles/libenergy-test.dir/build.make
../build/lib/libns3.37-energy-test-default.so: src/energy/CMakeFiles/libenergy-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library ../../../build/lib/libns3.37-energy-test-default.so"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/energy && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libenergy-test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/energy/CMakeFiles/libenergy-test.dir/build: ../build/lib/libns3.37-energy-test-default.so

.PHONY : src/energy/CMakeFiles/libenergy-test.dir/build

src/energy/CMakeFiles/libenergy-test.dir/clean:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/energy && $(CMAKE_COMMAND) -P CMakeFiles/libenergy-test.dir/cmake_clean.cmake
.PHONY : src/energy/CMakeFiles/libenergy-test.dir/clean

src/energy/CMakeFiles/libenergy-test.dir/depend:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/george/workspace/ns-allinone-3.37/ns-3.37 /home/george/workspace/ns-allinone-3.37/ns-3.37/src/energy /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/energy /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/energy/CMakeFiles/libenergy-test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/energy/CMakeFiles/libenergy-test.dir/depend

