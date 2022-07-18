# Install script for directory: /home/xiaodu/fw_formation/src/hust_fw_formation_control

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/xiaodu/fw_formation/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hust_fw_formation_control/msg" TYPE FILE FILES
    "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/FWstates.msg"
    "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Fw_cmd_mode.msg"
    "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/FWcmd.msg"
    "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Leaderstates.msg"
    "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Fwmonitor.msg"
    "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Formation_control_states.msg"
    "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Fw_current_mode.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hust_fw_formation_control/cmake" TYPE FILE FILES "/home/xiaodu/fw_formation/build/hust_fw_formation_control/catkin_generated/installspace/hust_fw_formation_control-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/xiaodu/fw_formation/devel/include/hust_fw_formation_control")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/xiaodu/fw_formation/devel/share/roseus/ros/hust_fw_formation_control")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/xiaodu/fw_formation/devel/share/common-lisp/ros/hust_fw_formation_control")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/xiaodu/fw_formation/devel/share/gennodejs/ros/hust_fw_formation_control")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/xiaodu/fw_formation/devel/lib/python2.7/dist-packages/hust_fw_formation_control")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/xiaodu/fw_formation/devel/lib/python2.7/dist-packages/hust_fw_formation_control")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/xiaodu/fw_formation/build/hust_fw_formation_control/catkin_generated/installspace/hust_fw_formation_control.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hust_fw_formation_control/cmake" TYPE FILE FILES "/home/xiaodu/fw_formation/build/hust_fw_formation_control/catkin_generated/installspace/hust_fw_formation_control-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hust_fw_formation_control/cmake" TYPE FILE FILES
    "/home/xiaodu/fw_formation/build/hust_fw_formation_control/catkin_generated/installspace/hust_fw_formation_controlConfig.cmake"
    "/home/xiaodu/fw_formation/build/hust_fw_formation_control/catkin_generated/installspace/hust_fw_formation_controlConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hust_fw_formation_control" TYPE FILE FILES "/home/xiaodu/fw_formation/src/hust_fw_formation_control/package.xml")
endif()

