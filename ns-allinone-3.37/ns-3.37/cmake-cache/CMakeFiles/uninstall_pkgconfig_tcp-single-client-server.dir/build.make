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

# Utility rule file for uninstall_pkgconfig_tcp-single-client-server.

# Include any custom commands dependencies for this target.
include CMakeFiles/uninstall_pkgconfig_tcp-single-client-server.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/uninstall_pkgconfig_tcp-single-client-server.dir/progress.make

CMakeFiles/uninstall_pkgconfig_tcp-single-client-server:
	rm /usr/local/lib/pkgconfig/ns3-tcp-single-client-server.pc

uninstall_pkgconfig_tcp-single-client-server: CMakeFiles/uninstall_pkgconfig_tcp-single-client-server
uninstall_pkgconfig_tcp-single-client-server: CMakeFiles/uninstall_pkgconfig_tcp-single-client-server.dir/build.make
.PHONY : uninstall_pkgconfig_tcp-single-client-server

# Rule to build all files generated by this target.
CMakeFiles/uninstall_pkgconfig_tcp-single-client-server.dir/build: uninstall_pkgconfig_tcp-single-client-server
.PHONY : CMakeFiles/uninstall_pkgconfig_tcp-single-client-server.dir/build

CMakeFiles/uninstall_pkgconfig_tcp-single-client-server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/uninstall_pkgconfig_tcp-single-client-server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/uninstall_pkgconfig_tcp-single-client-server.dir/clean

CMakeFiles/uninstall_pkgconfig_tcp-single-client-server.dir/depend:
	cd /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/george/workspace/ns-allinone-3.37/ns-3.37 /home/george/workspace/ns-allinone-3.37/ns-3.37 /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/uninstall_pkgconfig_tcp-single-client-server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/uninstall_pkgconfig_tcp-single-client-server.dir/depend

