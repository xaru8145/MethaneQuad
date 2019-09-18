# Install script for directory: /home/odroid/catkin_ws/src/autorally/autorally_core

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/odroid/catkin_ws/install")
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
  include("/home/odroid/catkin_ws/build/autorally/autorally_core/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/autorally_core" TYPE FILE FILES "/home/odroid/catkin_ws/devel/include/autorally_core/camera_auto_balance_paramsConfig.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/autorally_core" TYPE FILE FILES "/home/odroid/catkin_ws/devel/include/autorally_core/camera_trigger_paramsConfig.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/autorally_core" TYPE FILE FILES "/home/odroid/catkin_ws/devel/lib/python2.7/dist-packages/autorally_core/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/odroid/catkin_ws/devel/lib/python2.7/dist-packages/autorally_core/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/autorally_core" TYPE DIRECTORY FILES "/home/odroid/catkin_ws/devel/lib/python2.7/dist-packages/autorally_core/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/odroid/catkin_ws/build/autorally/autorally_core/catkin_generated/installspace/autorally_core.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/autorally_core/cmake" TYPE FILE FILES
    "/home/odroid/catkin_ws/build/autorally/autorally_core/catkin_generated/installspace/autorally_coreConfig.cmake"
    "/home/odroid/catkin_ws/build/autorally/autorally_core/catkin_generated/installspace/autorally_coreConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/autorally_core" TYPE FILE FILES "/home/odroid/catkin_ws/src/autorally/autorally_core/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/autorally_core" TYPE PROGRAM FILES
    "/home/odroid/catkin_ws/src/autorally/autorally_core/src/systemStatus/systemStatus.py"
    "/home/odroid/catkin_ws/src/autorally/autorally_core/src/chronyStatus/chronyStatus.py"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/autorally_core/launch" TYPE DIRECTORY FILES "/home/odroid/catkin_ws/src/autorally/autorally_core/launch/" FILES_MATCHING REGEX "/[^/]*\\.launch$" REGEX "/[^/]*\\.machine$" REGEX "/[^/]*\\.yaml$" REGEX "/[^/]*\\.urdf$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/autorally_core" TYPE DIRECTORY FILES "/home/odroid/catkin_ws/src/autorally/autorally_core/include/autorally_core/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/autorally_core" TYPE FILE FILES "/home/odroid/catkin_ws/src/autorally/autorally_core/nodelet_plugins.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/odroid/catkin_ws/build/autorally/autorally_core/src/Diagnostics/cmake_install.cmake")
  include("/home/odroid/catkin_ws/build/autorally/autorally_core/src/gps/cmake_install.cmake")
  include("/home/odroid/catkin_ws/build/autorally/autorally_core/src/ocs/cmake_install.cmake")
  include("/home/odroid/catkin_ws/build/autorally/autorally_core/src/RingBuffer/cmake_install.cmake")
  include("/home/odroid/catkin_ws/build/autorally/autorally_core/src/RunStop/cmake_install.cmake")
  include("/home/odroid/catkin_ws/build/autorally/autorally_core/src/SerialSensorInterface/cmake_install.cmake")
  include("/home/odroid/catkin_ws/build/autorally/autorally_core/src/xbee/cmake_install.cmake")
  include("/home/odroid/catkin_ws/build/autorally/autorally_core/src/ImageRepublisher/cmake_install.cmake")
  include("/home/odroid/catkin_ws/build/autorally/autorally_core/src/StateEstimator/cmake_install.cmake")
  include("/home/odroid/catkin_ws/build/autorally/autorally_core/src/autorally_chassis/cmake_install.cmake")
  include("/home/odroid/catkin_ws/build/autorally/autorally_core/src/camera_trigger/cmake_install.cmake")
  include("/home/odroid/catkin_ws/build/autorally/autorally_core/src/CameraAutoBalance/cmake_install.cmake")
  include("/home/odroid/catkin_ws/build/autorally/autorally_core/src/WheelOdometry/cmake_install.cmake")

endif()

