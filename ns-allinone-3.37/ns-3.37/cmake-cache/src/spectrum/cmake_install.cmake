# Install script for directory: /home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.37-spectrum-default.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.37-spectrum-default.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.37-spectrum-default.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/build/lib/libns3.37-spectrum-default.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.37-spectrum-default.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.37-spectrum-default.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.37-spectrum-default.so"
         OLD_RPATH "/home/george/workspace/ns-allinone-3.37/ns-3.37/build/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.37-spectrum-default.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ns3" TYPE FILE FILES
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/helper/adhoc-aloha-noack-ideal-phy-helper.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/helper/spectrum-analyzer-helper.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/helper/spectrum-helper.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/helper/tv-spectrum-transmitter-helper.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/helper/waveform-generator-helper.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/model/aloha-noack-mac-header.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/model/aloha-noack-net-device.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/model/constant-spectrum-propagation-loss.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/model/friis-spectrum-propagation-loss.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/model/half-duplex-ideal-phy-signal-parameters.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/model/half-duplex-ideal-phy.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/model/matrix-based-channel-model.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/model/microwave-oven-spectrum-value-helper.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/model/multi-model-spectrum-channel.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/model/non-communicating-net-device.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/model/single-model-spectrum-channel.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/model/spectrum-analyzer.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/model/spectrum-channel.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/model/spectrum-converter.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/model/spectrum-error-model.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/model/spectrum-interference.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/model/spectrum-model-300kHz-300GHz-log.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/model/spectrum-model-ism2400MHz-res1MHz.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/model/spectrum-model.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/model/spectrum-phy.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/model/spectrum-propagation-loss-model.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/model/phased-array-spectrum-propagation-loss-model.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/model/spectrum-signal-parameters.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/model/spectrum-value.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/model/three-gpp-channel-model.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/model/three-gpp-spectrum-propagation-loss-model.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/model/trace-fading-loss-model.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/model/tv-spectrum-transmitter.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/model/waveform-generator.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/model/wifi-spectrum-value-helper.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/src/spectrum/test/spectrum-test.h"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/build/include/ns3/spectrum-module.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/spectrum/examples/cmake_install.cmake")

endif()

