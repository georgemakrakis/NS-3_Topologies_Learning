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
include contrib/tcp-single-client-server/CMakeFiles/libtcp-single-client-server.dir/depend.make

# Include the progress variables for this target.
include contrib/tcp-single-client-server/CMakeFiles/libtcp-single-client-server.dir/progress.make

# Include the compile flags for this target's objects.
include contrib/tcp-single-client-server/CMakeFiles/libtcp-single-client-server.dir/flags.make

# Object files for target libtcp-single-client-server
libtcp__single__client__server_OBJECTS =

# External object files for target libtcp-single-client-server
libtcp__single__client__server_EXTERNAL_OBJECTS = \
"/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/tcp-single-client-server/CMakeFiles/libtcp-single-client-server-obj.dir/model/tcp-single-client-server.cc.o" \
"/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/tcp-single-client-server/CMakeFiles/libtcp-single-client-server-obj.dir/helper/tcp-single-client-server-helper.cc.o"

../build/lib/libns3.37-tcp-single-client-server-default.so: contrib/tcp-single-client-server/CMakeFiles/libtcp-single-client-server-obj.dir/model/tcp-single-client-server.cc.o
../build/lib/libns3.37-tcp-single-client-server-default.so: contrib/tcp-single-client-server/CMakeFiles/libtcp-single-client-server-obj.dir/helper/tcp-single-client-server-helper.cc.o
../build/lib/libns3.37-tcp-single-client-server-default.so: contrib/tcp-single-client-server/CMakeFiles/libtcp-single-client-server.dir/build.make
../build/lib/libns3.37-tcp-single-client-server-default.so: contrib/tcp-single-client-server/CMakeFiles/libtcp-single-client-server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking CXX shared library ../../../build/lib/libns3.37-tcp-single-client-server-default.so"
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/tcp-single-client-server && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libtcp-single-client-server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
contrib/tcp-single-client-server/CMakeFiles/libtcp-single-client-server.dir/build: ../build/lib/libns3.37-tcp-single-client-server-default.so

.PHONY : contrib/tcp-single-client-server/CMakeFiles/libtcp-single-client-server.dir/build

contrib/tcp-single-client-server/CMakeFiles/libtcp-single-client-server.dir/clean:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/tcp-single-client-server && $(CMAKE_COMMAND) -P CMakeFiles/libtcp-single-client-server.dir/cmake_clean.cmake
.PHONY : contrib/tcp-single-client-server/CMakeFiles/libtcp-single-client-server.dir/clean

contrib/tcp-single-client-server/CMakeFiles/libtcp-single-client-server.dir/depend:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/george/workspace/ns-allinone-3.37/ns-3.37 /home/george/workspace/ns-allinone-3.37/ns-3.37/contrib/tcp-single-client-server /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/tcp-single-client-server /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/tcp-single-client-server/CMakeFiles/libtcp-single-client-server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contrib/tcp-single-client-server/CMakeFiles/libtcp-single-client-server.dir/depend

