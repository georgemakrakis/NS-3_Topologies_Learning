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
include src/dsr/CMakeFiles/libdsr.dir/depend.make

# Include the progress variables for this target.
include src/dsr/CMakeFiles/libdsr.dir/progress.make

# Include the compile flags for this target's objects.
include src/dsr/CMakeFiles/libdsr.dir/flags.make

# Object files for target libdsr
libdsr_OBJECTS =

# External object files for target libdsr
libdsr_EXTERNAL_OBJECTS = \
"/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/dsr/CMakeFiles/libdsr-obj.dir/helper/dsr-helper.cc.o" \
"/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/dsr/CMakeFiles/libdsr-obj.dir/helper/dsr-main-helper.cc.o" \
"/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/dsr/CMakeFiles/libdsr-obj.dir/model/dsr-errorbuff.cc.o" \
"/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/dsr/CMakeFiles/libdsr-obj.dir/model/dsr-fs-header.cc.o" \
"/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/dsr/CMakeFiles/libdsr-obj.dir/model/dsr-gratuitous-reply-table.cc.o" \
"/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/dsr/CMakeFiles/libdsr-obj.dir/model/dsr-maintain-buff.cc.o" \
"/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/dsr/CMakeFiles/libdsr-obj.dir/model/dsr-network-queue.cc.o" \
"/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/dsr/CMakeFiles/libdsr-obj.dir/model/dsr-option-header.cc.o" \
"/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/dsr/CMakeFiles/libdsr-obj.dir/model/dsr-options.cc.o" \
"/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/dsr/CMakeFiles/libdsr-obj.dir/model/dsr-passive-buff.cc.o" \
"/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/dsr/CMakeFiles/libdsr-obj.dir/model/dsr-rcache.cc.o" \
"/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/dsr/CMakeFiles/libdsr-obj.dir/model/dsr-routing.cc.o" \
"/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/dsr/CMakeFiles/libdsr-obj.dir/model/dsr-rreq-table.cc.o" \
"/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/dsr/CMakeFiles/libdsr-obj.dir/model/dsr-rsendbuff.cc.o"

../build/lib/libns3.37-dsr-default.so: src/dsr/CMakeFiles/libdsr-obj.dir/helper/dsr-helper.cc.o
../build/lib/libns3.37-dsr-default.so: src/dsr/CMakeFiles/libdsr-obj.dir/helper/dsr-main-helper.cc.o
../build/lib/libns3.37-dsr-default.so: src/dsr/CMakeFiles/libdsr-obj.dir/model/dsr-errorbuff.cc.o
../build/lib/libns3.37-dsr-default.so: src/dsr/CMakeFiles/libdsr-obj.dir/model/dsr-fs-header.cc.o
../build/lib/libns3.37-dsr-default.so: src/dsr/CMakeFiles/libdsr-obj.dir/model/dsr-gratuitous-reply-table.cc.o
../build/lib/libns3.37-dsr-default.so: src/dsr/CMakeFiles/libdsr-obj.dir/model/dsr-maintain-buff.cc.o
../build/lib/libns3.37-dsr-default.so: src/dsr/CMakeFiles/libdsr-obj.dir/model/dsr-network-queue.cc.o
../build/lib/libns3.37-dsr-default.so: src/dsr/CMakeFiles/libdsr-obj.dir/model/dsr-option-header.cc.o
../build/lib/libns3.37-dsr-default.so: src/dsr/CMakeFiles/libdsr-obj.dir/model/dsr-options.cc.o
../build/lib/libns3.37-dsr-default.so: src/dsr/CMakeFiles/libdsr-obj.dir/model/dsr-passive-buff.cc.o
../build/lib/libns3.37-dsr-default.so: src/dsr/CMakeFiles/libdsr-obj.dir/model/dsr-rcache.cc.o
../build/lib/libns3.37-dsr-default.so: src/dsr/CMakeFiles/libdsr-obj.dir/model/dsr-routing.cc.o
../build/lib/libns3.37-dsr-default.so: src/dsr/CMakeFiles/libdsr-obj.dir/model/dsr-rreq-table.cc.o
../build/lib/libns3.37-dsr-default.so: src/dsr/CMakeFiles/libdsr-obj.dir/model/dsr-rsendbuff.cc.o
../build/lib/libns3.37-dsr-default.so: src/dsr/CMakeFiles/libdsr.dir/build.make
../build/lib/libns3.37-dsr-default.so: src/dsr/CMakeFiles/libdsr.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking CXX shared library ../../../build/lib/libns3.37-dsr-default.so"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/dsr && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libdsr.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/dsr/CMakeFiles/libdsr.dir/build: ../build/lib/libns3.37-dsr-default.so

.PHONY : src/dsr/CMakeFiles/libdsr.dir/build

src/dsr/CMakeFiles/libdsr.dir/clean:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/dsr && $(CMAKE_COMMAND) -P CMakeFiles/libdsr.dir/cmake_clean.cmake
.PHONY : src/dsr/CMakeFiles/libdsr.dir/clean

src/dsr/CMakeFiles/libdsr.dir/depend:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/george/workspace/ns-allinone-3.37/ns-3.37 /home/george/workspace/ns-allinone-3.37/ns-3.37/src/dsr /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/dsr /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/dsr/CMakeFiles/libdsr.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/dsr/CMakeFiles/libdsr.dir/depend

