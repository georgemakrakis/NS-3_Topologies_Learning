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
include src/nix-vector-routing/examples/CMakeFiles/nix-double-wifi.dir/depend.make

# Include the progress variables for this target.
include src/nix-vector-routing/examples/CMakeFiles/nix-double-wifi.dir/progress.make

# Include the compile flags for this target's objects.
include src/nix-vector-routing/examples/CMakeFiles/nix-double-wifi.dir/flags.make

src/nix-vector-routing/examples/CMakeFiles/nix-double-wifi.dir/nix-double-wifi.cc.o: src/nix-vector-routing/examples/CMakeFiles/nix-double-wifi.dir/flags.make
src/nix-vector-routing/examples/CMakeFiles/nix-double-wifi.dir/nix-double-wifi.cc.o: ../src/nix-vector-routing/examples/nix-double-wifi.cc
src/nix-vector-routing/examples/CMakeFiles/nix-double-wifi.dir/nix-double-wifi.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx
src/nix-vector-routing/examples/CMakeFiles/nix-double-wifi.dir/nix-double-wifi.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx.gch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/nix-vector-routing/examples/CMakeFiles/nix-double-wifi.dir/nix-double-wifi.cc.o"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/nix-vector-routing/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -o CMakeFiles/nix-double-wifi.dir/nix-double-wifi.cc.o -c /home/george/workspace/ns-allinone-3.37/ns-3.37/src/nix-vector-routing/examples/nix-double-wifi.cc

src/nix-vector-routing/examples/CMakeFiles/nix-double-wifi.dir/nix-double-wifi.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nix-double-wifi.dir/nix-double-wifi.cc.i"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/nix-vector-routing/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -E /home/george/workspace/ns-allinone-3.37/ns-3.37/src/nix-vector-routing/examples/nix-double-wifi.cc > CMakeFiles/nix-double-wifi.dir/nix-double-wifi.cc.i

src/nix-vector-routing/examples/CMakeFiles/nix-double-wifi.dir/nix-double-wifi.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nix-double-wifi.dir/nix-double-wifi.cc.s"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/nix-vector-routing/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -S /home/george/workspace/ns-allinone-3.37/ns-3.37/src/nix-vector-routing/examples/nix-double-wifi.cc -o CMakeFiles/nix-double-wifi.dir/nix-double-wifi.cc.s

# Object files for target nix-double-wifi
nix__double__wifi_OBJECTS = \
"CMakeFiles/nix-double-wifi.dir/nix-double-wifi.cc.o"

# External object files for target nix-double-wifi
nix__double__wifi_EXTERNAL_OBJECTS =

../build/src/nix-vector-routing/examples/ns3.37-nix-double-wifi-default: src/nix-vector-routing/examples/CMakeFiles/nix-double-wifi.dir/nix-double-wifi.cc.o
../build/src/nix-vector-routing/examples/ns3.37-nix-double-wifi-default: src/nix-vector-routing/examples/CMakeFiles/nix-double-wifi.dir/build.make
../build/src/nix-vector-routing/examples/ns3.37-nix-double-wifi-default: /usr/lib/x86_64-linux-gnu/libpython3.8.so
../build/src/nix-vector-routing/examples/ns3.37-nix-double-wifi-default: src/nix-vector-routing/examples/CMakeFiles/nix-double-wifi.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../build/src/nix-vector-routing/examples/ns3.37-nix-double-wifi-default"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/nix-vector-routing/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/nix-double-wifi.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/nix-vector-routing/examples/CMakeFiles/nix-double-wifi.dir/build: ../build/src/nix-vector-routing/examples/ns3.37-nix-double-wifi-default

.PHONY : src/nix-vector-routing/examples/CMakeFiles/nix-double-wifi.dir/build

src/nix-vector-routing/examples/CMakeFiles/nix-double-wifi.dir/clean:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/nix-vector-routing/examples && $(CMAKE_COMMAND) -P CMakeFiles/nix-double-wifi.dir/cmake_clean.cmake
.PHONY : src/nix-vector-routing/examples/CMakeFiles/nix-double-wifi.dir/clean

src/nix-vector-routing/examples/CMakeFiles/nix-double-wifi.dir/depend:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/george/workspace/ns-allinone-3.37/ns-3.37 /home/george/workspace/ns-allinone-3.37/ns-3.37/src/nix-vector-routing/examples /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/nix-vector-routing/examples /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/nix-vector-routing/examples/CMakeFiles/nix-double-wifi.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/nix-vector-routing/examples/CMakeFiles/nix-double-wifi.dir/depend
