# Install script for directory: /home/george/workspace/ns-allinone-3.37/ns-3.37

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-wimax.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-wifi.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-wave.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-virtual-net-device.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-uan.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-traffic-control.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-topology-read.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-tap-bridge.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-stats.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-spectrum.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-sixlowpan.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-propagation.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-point-to-point-layout.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-point-to-point.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-olsr.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-nix-vector-routing.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-network.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-netanim.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-mobility.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-mesh.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-lte.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-lr-wpan.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-internet-apps.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-internet.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-flow-monitor.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-fd-net-device.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-energy.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-dsr.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-dsdv.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-csma-layout.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-csma.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-core.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-config-store.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-buildings.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-bridge.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-applications.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-aodv.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-antenna.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-two-LANs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-tcp-single-client-server.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-tcp-many-clients-single-server.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-tap-UDP.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-tap-TCP.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-neighborhood_topology_v2.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-neighborhood_topology_v1.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-EmulatedUdp_neighborhood_v2.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-EmulatedUdpEchoExample_Copy.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-EmulatedTCP_neighborhood.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/pkgconfig/ns3-EmulatedTCPEchoExample.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ns3/ns3Targets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ns3/ns3Targets.cmake"
         "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/Export/lib/cmake/ns3/ns3Targets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ns3/ns3Targets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ns3/ns3Targets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ns3" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/Export/lib/cmake/ns3/ns3Targets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Ff][Aa][Uu][Ll][Tt])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ns3" TYPE FILE FILES "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/CMakeFiles/Export/lib/cmake/ns3/ns3Targets-default.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ns3" TYPE FILE FILES
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/ns3Config.cmake"
    "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/ns3ConfigVersion.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/EmulatedTCPEchoExample/cmake_install.cmake")
  include("/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/EmulatedTCP_neighborhood/cmake_install.cmake")
  include("/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/EmulatedUdpEchoExample_Copy/cmake_install.cmake")
  include("/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/EmulatedUdp_neighborhood_v2/cmake_install.cmake")
  include("/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/neighborhood_topology_v1/cmake_install.cmake")
  include("/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/neighborhood_topology_v2/cmake_install.cmake")
  include("/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/tap-TCP/cmake_install.cmake")
  include("/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/tap-UDP/cmake_install.cmake")
  include("/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/tcp-many-clients-single-server/cmake_install.cmake")
  include("/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/tcp-single-client-server/cmake_install.cmake")
  include("/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/contrib/two-LANs/cmake_install.cmake")
  include("/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/src/cmake_install.cmake")
  include("/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/examples/cmake_install.cmake")
  include("/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/scratch/cmake_install.cmake")
  include("/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/utils/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/george/workspace/ns-allinone-3.37/ns-3.37/cmake-cache/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
