# CMAKE generated file: DO NOT EDIT!
# Generated by CMake Version 3.22
cmake_policy(SET CMP0009 NEW)

# single_source_file_scratches at scratch/CMakeLists.txt:57 (file)
file(GLOB NEW_GLOB LIST_DIRECTORIES true "/home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/[^.]*.cc")
set(OLD_GLOB
  "/home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/Echo_TCP.cc"
  "/home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/EmulatedTCPEchoExample.cc"
  "/home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/EmulatedTCP_neighborhood.cc"
  "/home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/EmulatedUdpEchoExample_Copy.cc"
  "/home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/EmulatedUdp_neighborhood_v2.cc"
  "/home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/fd-emu-onoff.cc"
  "/home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/neighborhood_topology_v1.cc"
  "/home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/neighborhood_topology_v2.cc"
  "/home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/scratch-simulator.cc"
  "/home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/tap-TCP.cc"
  "/home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/tap-UDP.cc"
  "/home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/tcp-many-clients-single-server.cc"
  "/home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/tcp-single-client-server.cc"
  "/home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/two-LANs.cc"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/cmake.verify_globs")
endif()

# scratch_sources at scratch/CMakeLists.txt:88 (file)
file(GLOB NEW_GLOB LIST_DIRECTORIES true "/home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/subdir/[^.]*.cc")
set(OLD_GLOB
  "/home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/subdir/scratch-subdir-additional-header.cc"
  "/home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/subdir/scratch-subdir.cc"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/cmake.verify_globs")
endif()

# scratch_subdirectories at scratch/CMakeLists.txt:64 (file)
file(GLOB_RECURSE NEW_GLOB LIST_DIRECTORIES true "/home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/**")
set(OLD_GLOB
  "/home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/A"
  "/home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/CMakeLists.txt"
  "/home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/Echo_TCP.cc"
  "/home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/EmulatedTCPEchoExample.cc"
  "/home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/EmulatedTCP_neighborhood.cc"
  "/home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/EmulatedUdpEchoExample_Copy.cc"
  "/home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/EmulatedUdp_neighborhood_v2.cc"
  "/home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/fd-emu-onoff.cc"
  "/home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/libns3-amqtt.so"
  "/home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/neighborhood_topology_v1.cc"
  "/home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/neighborhood_topology_v2.cc"
  "/home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/scratch-simulator.cc"
  "/home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/subdir"
  "/home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/subdir/scratch-subdir-additional-header.cc"
  "/home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/subdir/scratch-subdir-additional-header.h"
  "/home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/subdir/scratch-subdir.cc"
  "/home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/tap-TCP.cc"
  "/home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/tap-UDP.cc"
  "/home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/tcp-many-clients-single-server.cc"
  "/home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/tcp-single-client-server.cc"
  "/home/george/workspace/ns-allinone-3.37/ns-3.37/scratch/two-LANs.cc"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/cmake.verify_globs")
endif()
