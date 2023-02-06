# CMake generated Testfile for 
# Source directory: /home/george/workspace/ns-allinone-3.37/ns-3.37
# Build directory: /home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(ctest-stdlib_pch_exec "ns3.37-stdlib_pch_exec-default")
set_tests_properties(ctest-stdlib_pch_exec PROPERTIES  WORKING_DIRECTORY "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/" _BACKTRACE_TRIPLES "/home/george/workspace/ns-allinone-3.37/ns-3.37/build-support/macros-and-definitions.cmake;1411;add_test;/home/george/workspace/ns-allinone-3.37/ns-3.37/build-support/macros-and-definitions.cmake;1334;set_runtime_outputdirectory;/home/george/workspace/ns-allinone-3.37/ns-3.37/CMakeLists.txt;133;process_options;/home/george/workspace/ns-allinone-3.37/ns-3.37/CMakeLists.txt;0;")
subdirs("contrib/tcp-many-clients-single-server")
subdirs("contrib/tcp-single-client-server")
subdirs("src")
subdirs("examples")
subdirs("scratch")
subdirs("utils")
