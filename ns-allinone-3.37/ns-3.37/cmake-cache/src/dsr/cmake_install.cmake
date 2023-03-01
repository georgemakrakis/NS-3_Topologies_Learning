# Install script for directory: /home/george/workspace/ns-allinone-3.37/ns-3.37/src/dsr

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "default")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.37-dsr-default.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.37-dsr-default.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.37-dsr-default.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/build/lib/libns3.37-dsr-default.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.37-dsr-default.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.37-dsr-default.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.37-dsr-default.so"
         OLD_RPATH "/home/george/workspace/ns-allinone-3.37/ns-3.37/build/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.37-dsr-default.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ns3" TYPE FILE FILES
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/dsr/helper/dsr-helper.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/dsr/helper/dsr-main-helper.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/dsr/model/dsr-errorbuff.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/dsr/model/dsr-fs-header.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/dsr/model/dsr-gratuitous-reply-table.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/dsr/model/dsr-maintain-buff.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/dsr/model/dsr-network-queue.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/dsr/model/dsr-option-header.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/dsr/model/dsr-options.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/dsr/model/dsr-passive-buff.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/dsr/model/dsr-rcache.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/dsr/model/dsr-routing.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/dsr/model/dsr-rreq-table.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/dsr/model/dsr-rsendbuff.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/build/include/ns3/dsr-module.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/dsr/examples/cmake_install.cmake")

endif()

