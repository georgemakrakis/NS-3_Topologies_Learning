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
include examples/wireless/CMakeFiles/wifi-ofdm-ht-validation.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/wireless/CMakeFiles/wifi-ofdm-ht-validation.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/wireless/CMakeFiles/wifi-ofdm-ht-validation.dir/progress.make

# Include the compile flags for this target's objects.
include examples/wireless/CMakeFiles/wifi-ofdm-ht-validation.dir/flags.make

examples/wireless/CMakeFiles/wifi-ofdm-ht-validation.dir/wifi-ofdm-ht-validation.cc.o: examples/wireless/CMakeFiles/wifi-ofdm-ht-validation.dir/flags.make
examples/wireless/CMakeFiles/wifi-ofdm-ht-validation.dir/wifi-ofdm-ht-validation.cc.o: ../examples/wireless/wifi-ofdm-ht-validation.cc
examples/wireless/CMakeFiles/wifi-ofdm-ht-validation.dir/wifi-ofdm-ht-validation.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx
examples/wireless/CMakeFiles/wifi-ofdm-ht-validation.dir/wifi-ofdm-ht-validation.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx.gch
examples/wireless/CMakeFiles/wifi-ofdm-ht-validation.dir/wifi-ofdm-ht-validation.cc.o: examples/wireless/CMakeFiles/wifi-ofdm-ht-validation.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/wireless/CMakeFiles/wifi-ofdm-ht-validation.dir/wifi-ofdm-ht-validation.cc.o"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/examples/wireless && /usr/bin/ccache /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -MD -MT examples/wireless/CMakeFiles/wifi-ofdm-ht-validation.dir/wifi-ofdm-ht-validation.cc.o -MF CMakeFiles/wifi-ofdm-ht-validation.dir/wifi-ofdm-ht-validation.cc.o.d -o CMakeFiles/wifi-ofdm-ht-validation.dir/wifi-ofdm-ht-validation.cc.o -c /home/george/workspace/ns-allinone-3.37/ns-3.37/examples/wireless/wifi-ofdm-ht-validation.cc

examples/wireless/CMakeFiles/wifi-ofdm-ht-validation.dir/wifi-ofdm-ht-validation.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wifi-ofdm-ht-validation.dir/wifi-ofdm-ht-validation.cc.i"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/examples/wireless && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -E /home/george/workspace/ns-allinone-3.37/ns-3.37/examples/wireless/wifi-ofdm-ht-validation.cc > CMakeFiles/wifi-ofdm-ht-validation.dir/wifi-ofdm-ht-validation.cc.i

examples/wireless/CMakeFiles/wifi-ofdm-ht-validation.dir/wifi-ofdm-ht-validation.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wifi-ofdm-ht-validation.dir/wifi-ofdm-ht-validation.cc.s"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/examples/wireless && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -S /home/george/workspace/ns-allinone-3.37/ns-3.37/examples/wireless/wifi-ofdm-ht-validation.cc -o CMakeFiles/wifi-ofdm-ht-validation.dir/wifi-ofdm-ht-validation.cc.s

# Object files for target wifi-ofdm-ht-validation
wifi__ofdm__ht__validation_OBJECTS = \
"CMakeFiles/wifi-ofdm-ht-validation.dir/wifi-ofdm-ht-validation.cc.o"

# External object files for target wifi-ofdm-ht-validation
wifi__ofdm__ht__validation_EXTERNAL_OBJECTS =

../build/examples/wireless/ns3.37-wifi-ofdm-ht-validation-default: examples/wireless/CMakeFiles/wifi-ofdm-ht-validation.dir/wifi-ofdm-ht-validation.cc.o
../build/examples/wireless/ns3.37-wifi-ofdm-ht-validation-default: examples/wireless/CMakeFiles/wifi-ofdm-ht-validation.dir/build.make
../build/examples/wireless/ns3.37-wifi-ofdm-ht-validation-default: /usr/lib/x86_64-linux-gnu/libsqlite3.so
../build/examples/wireless/ns3.37-wifi-ofdm-ht-validation-default: examples/wireless/CMakeFiles/wifi-ofdm-ht-validation.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../build/examples/wireless/ns3.37-wifi-ofdm-ht-validation-default"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/examples/wireless && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/wifi-ofdm-ht-validation.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/wireless/CMakeFiles/wifi-ofdm-ht-validation.dir/build: ../build/examples/wireless/ns3.37-wifi-ofdm-ht-validation-default
.PHONY : examples/wireless/CMakeFiles/wifi-ofdm-ht-validation.dir/build

examples/wireless/CMakeFiles/wifi-ofdm-ht-validation.dir/clean:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/examples/wireless && $(CMAKE_COMMAND) -P CMakeFiles/wifi-ofdm-ht-validation.dir/cmake_clean.cmake
.PHONY : examples/wireless/CMakeFiles/wifi-ofdm-ht-validation.dir/clean

examples/wireless/CMakeFiles/wifi-ofdm-ht-validation.dir/depend:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/george/workspace/ns-allinone-3.37/ns-3.37 /home/george/workspace/ns-allinone-3.37/ns-3.37/examples/wireless /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/examples/wireless /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/examples/wireless/CMakeFiles/wifi-ofdm-ht-validation.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/wireless/CMakeFiles/wifi-ofdm-ht-validation.dir/depend

