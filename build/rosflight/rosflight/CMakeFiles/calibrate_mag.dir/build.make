# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/odroid/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/odroid/catkin_ws/build

# Include any dependencies generated for this target.
include rosflight/rosflight/CMakeFiles/calibrate_mag.dir/depend.make

# Include the progress variables for this target.
include rosflight/rosflight/CMakeFiles/calibrate_mag.dir/progress.make

# Include the compile flags for this target's objects.
include rosflight/rosflight/CMakeFiles/calibrate_mag.dir/flags.make

rosflight/rosflight/CMakeFiles/calibrate_mag.dir/src/mag_cal_node.cpp.o: rosflight/rosflight/CMakeFiles/calibrate_mag.dir/flags.make
rosflight/rosflight/CMakeFiles/calibrate_mag.dir/src/mag_cal_node.cpp.o: /home/odroid/catkin_ws/src/rosflight/rosflight/src/mag_cal_node.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/odroid/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object rosflight/rosflight/CMakeFiles/calibrate_mag.dir/src/mag_cal_node.cpp.o"
	cd /home/odroid/catkin_ws/build/rosflight/rosflight && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/calibrate_mag.dir/src/mag_cal_node.cpp.o -c /home/odroid/catkin_ws/src/rosflight/rosflight/src/mag_cal_node.cpp

rosflight/rosflight/CMakeFiles/calibrate_mag.dir/src/mag_cal_node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/calibrate_mag.dir/src/mag_cal_node.cpp.i"
	cd /home/odroid/catkin_ws/build/rosflight/rosflight && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/odroid/catkin_ws/src/rosflight/rosflight/src/mag_cal_node.cpp > CMakeFiles/calibrate_mag.dir/src/mag_cal_node.cpp.i

rosflight/rosflight/CMakeFiles/calibrate_mag.dir/src/mag_cal_node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/calibrate_mag.dir/src/mag_cal_node.cpp.s"
	cd /home/odroid/catkin_ws/build/rosflight/rosflight && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/odroid/catkin_ws/src/rosflight/rosflight/src/mag_cal_node.cpp -o CMakeFiles/calibrate_mag.dir/src/mag_cal_node.cpp.s

rosflight/rosflight/CMakeFiles/calibrate_mag.dir/src/mag_cal_node.cpp.o.requires:

.PHONY : rosflight/rosflight/CMakeFiles/calibrate_mag.dir/src/mag_cal_node.cpp.o.requires

rosflight/rosflight/CMakeFiles/calibrate_mag.dir/src/mag_cal_node.cpp.o.provides: rosflight/rosflight/CMakeFiles/calibrate_mag.dir/src/mag_cal_node.cpp.o.requires
	$(MAKE) -f rosflight/rosflight/CMakeFiles/calibrate_mag.dir/build.make rosflight/rosflight/CMakeFiles/calibrate_mag.dir/src/mag_cal_node.cpp.o.provides.build
.PHONY : rosflight/rosflight/CMakeFiles/calibrate_mag.dir/src/mag_cal_node.cpp.o.provides

rosflight/rosflight/CMakeFiles/calibrate_mag.dir/src/mag_cal_node.cpp.o.provides.build: rosflight/rosflight/CMakeFiles/calibrate_mag.dir/src/mag_cal_node.cpp.o


rosflight/rosflight/CMakeFiles/calibrate_mag.dir/src/mag_cal.cpp.o: rosflight/rosflight/CMakeFiles/calibrate_mag.dir/flags.make
rosflight/rosflight/CMakeFiles/calibrate_mag.dir/src/mag_cal.cpp.o: /home/odroid/catkin_ws/src/rosflight/rosflight/src/mag_cal.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/odroid/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object rosflight/rosflight/CMakeFiles/calibrate_mag.dir/src/mag_cal.cpp.o"
	cd /home/odroid/catkin_ws/build/rosflight/rosflight && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/calibrate_mag.dir/src/mag_cal.cpp.o -c /home/odroid/catkin_ws/src/rosflight/rosflight/src/mag_cal.cpp

rosflight/rosflight/CMakeFiles/calibrate_mag.dir/src/mag_cal.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/calibrate_mag.dir/src/mag_cal.cpp.i"
	cd /home/odroid/catkin_ws/build/rosflight/rosflight && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/odroid/catkin_ws/src/rosflight/rosflight/src/mag_cal.cpp > CMakeFiles/calibrate_mag.dir/src/mag_cal.cpp.i

rosflight/rosflight/CMakeFiles/calibrate_mag.dir/src/mag_cal.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/calibrate_mag.dir/src/mag_cal.cpp.s"
	cd /home/odroid/catkin_ws/build/rosflight/rosflight && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/odroid/catkin_ws/src/rosflight/rosflight/src/mag_cal.cpp -o CMakeFiles/calibrate_mag.dir/src/mag_cal.cpp.s

rosflight/rosflight/CMakeFiles/calibrate_mag.dir/src/mag_cal.cpp.o.requires:

.PHONY : rosflight/rosflight/CMakeFiles/calibrate_mag.dir/src/mag_cal.cpp.o.requires

rosflight/rosflight/CMakeFiles/calibrate_mag.dir/src/mag_cal.cpp.o.provides: rosflight/rosflight/CMakeFiles/calibrate_mag.dir/src/mag_cal.cpp.o.requires
	$(MAKE) -f rosflight/rosflight/CMakeFiles/calibrate_mag.dir/build.make rosflight/rosflight/CMakeFiles/calibrate_mag.dir/src/mag_cal.cpp.o.provides.build
.PHONY : rosflight/rosflight/CMakeFiles/calibrate_mag.dir/src/mag_cal.cpp.o.provides

rosflight/rosflight/CMakeFiles/calibrate_mag.dir/src/mag_cal.cpp.o.provides.build: rosflight/rosflight/CMakeFiles/calibrate_mag.dir/src/mag_cal.cpp.o


# Object files for target calibrate_mag
calibrate_mag_OBJECTS = \
"CMakeFiles/calibrate_mag.dir/src/mag_cal_node.cpp.o" \
"CMakeFiles/calibrate_mag.dir/src/mag_cal.cpp.o"

# External object files for target calibrate_mag
calibrate_mag_EXTERNAL_OBJECTS =

/home/odroid/catkin_ws/devel/lib/rosflight/calibrate_mag: rosflight/rosflight/CMakeFiles/calibrate_mag.dir/src/mag_cal_node.cpp.o
/home/odroid/catkin_ws/devel/lib/rosflight/calibrate_mag: rosflight/rosflight/CMakeFiles/calibrate_mag.dir/src/mag_cal.cpp.o
/home/odroid/catkin_ws/devel/lib/rosflight/calibrate_mag: rosflight/rosflight/CMakeFiles/calibrate_mag.dir/build.make
/home/odroid/catkin_ws/devel/lib/rosflight/calibrate_mag: /opt/ros/melodic/lib/libtf.so
/home/odroid/catkin_ws/devel/lib/rosflight/calibrate_mag: /opt/ros/melodic/lib/libtf2_ros.so
/home/odroid/catkin_ws/devel/lib/rosflight/calibrate_mag: /opt/ros/melodic/lib/libactionlib.so
/home/odroid/catkin_ws/devel/lib/rosflight/calibrate_mag: /opt/ros/melodic/lib/libmessage_filters.so
/home/odroid/catkin_ws/devel/lib/rosflight/calibrate_mag: /opt/ros/melodic/lib/libroscpp.so
/home/odroid/catkin_ws/devel/lib/rosflight/calibrate_mag: /usr/lib/arm-linux-gnueabihf/libboost_filesystem.so
/home/odroid/catkin_ws/devel/lib/rosflight/calibrate_mag: /usr/lib/arm-linux-gnueabihf/libboost_signals.so
/home/odroid/catkin_ws/devel/lib/rosflight/calibrate_mag: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/odroid/catkin_ws/devel/lib/rosflight/calibrate_mag: /opt/ros/melodic/lib/libtf2.so
/home/odroid/catkin_ws/devel/lib/rosflight/calibrate_mag: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/odroid/catkin_ws/devel/lib/rosflight/calibrate_mag: /opt/ros/melodic/lib/librosconsole.so
/home/odroid/catkin_ws/devel/lib/rosflight/calibrate_mag: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/odroid/catkin_ws/devel/lib/rosflight/calibrate_mag: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/odroid/catkin_ws/devel/lib/rosflight/calibrate_mag: /usr/lib/arm-linux-gnueabihf/liblog4cxx.so
/home/odroid/catkin_ws/devel/lib/rosflight/calibrate_mag: /usr/lib/arm-linux-gnueabihf/libboost_regex.so
/home/odroid/catkin_ws/devel/lib/rosflight/calibrate_mag: /opt/ros/melodic/lib/librostime.so
/home/odroid/catkin_ws/devel/lib/rosflight/calibrate_mag: /opt/ros/melodic/lib/libcpp_common.so
/home/odroid/catkin_ws/devel/lib/rosflight/calibrate_mag: /usr/lib/arm-linux-gnueabihf/libboost_system.so
/home/odroid/catkin_ws/devel/lib/rosflight/calibrate_mag: /usr/lib/arm-linux-gnueabihf/libboost_thread.so
/home/odroid/catkin_ws/devel/lib/rosflight/calibrate_mag: /usr/lib/arm-linux-gnueabihf/libboost_chrono.so
/home/odroid/catkin_ws/devel/lib/rosflight/calibrate_mag: /usr/lib/arm-linux-gnueabihf/libboost_date_time.so
/home/odroid/catkin_ws/devel/lib/rosflight/calibrate_mag: /usr/lib/arm-linux-gnueabihf/libboost_atomic.so
/home/odroid/catkin_ws/devel/lib/rosflight/calibrate_mag: /usr/lib/arm-linux-gnueabihf/libpthread.so
/home/odroid/catkin_ws/devel/lib/rosflight/calibrate_mag: /usr/lib/arm-linux-gnueabihf/libconsole_bridge.so.0.4
/home/odroid/catkin_ws/devel/lib/rosflight/calibrate_mag: /usr/lib/arm-linux-gnueabihf/libboost_system.so
/home/odroid/catkin_ws/devel/lib/rosflight/calibrate_mag: /usr/lib/arm-linux-gnueabihf/libboost_thread.so
/home/odroid/catkin_ws/devel/lib/rosflight/calibrate_mag: /usr/lib/arm-linux-gnueabihf/libboost_chrono.so
/home/odroid/catkin_ws/devel/lib/rosflight/calibrate_mag: /usr/lib/arm-linux-gnueabihf/libboost_date_time.so
/home/odroid/catkin_ws/devel/lib/rosflight/calibrate_mag: /usr/lib/arm-linux-gnueabihf/libboost_atomic.so
/home/odroid/catkin_ws/devel/lib/rosflight/calibrate_mag: /usr/lib/arm-linux-gnueabihf/libpthread.so
/home/odroid/catkin_ws/devel/lib/rosflight/calibrate_mag: /usr/lib/arm-linux-gnueabihf/libconsole_bridge.so.0.4
/home/odroid/catkin_ws/devel/lib/rosflight/calibrate_mag: rosflight/rosflight/CMakeFiles/calibrate_mag.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/odroid/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable /home/odroid/catkin_ws/devel/lib/rosflight/calibrate_mag"
	cd /home/odroid/catkin_ws/build/rosflight/rosflight && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/calibrate_mag.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
rosflight/rosflight/CMakeFiles/calibrate_mag.dir/build: /home/odroid/catkin_ws/devel/lib/rosflight/calibrate_mag

.PHONY : rosflight/rosflight/CMakeFiles/calibrate_mag.dir/build

rosflight/rosflight/CMakeFiles/calibrate_mag.dir/requires: rosflight/rosflight/CMakeFiles/calibrate_mag.dir/src/mag_cal_node.cpp.o.requires
rosflight/rosflight/CMakeFiles/calibrate_mag.dir/requires: rosflight/rosflight/CMakeFiles/calibrate_mag.dir/src/mag_cal.cpp.o.requires

.PHONY : rosflight/rosflight/CMakeFiles/calibrate_mag.dir/requires

rosflight/rosflight/CMakeFiles/calibrate_mag.dir/clean:
	cd /home/odroid/catkin_ws/build/rosflight/rosflight && $(CMAKE_COMMAND) -P CMakeFiles/calibrate_mag.dir/cmake_clean.cmake
.PHONY : rosflight/rosflight/CMakeFiles/calibrate_mag.dir/clean

rosflight/rosflight/CMakeFiles/calibrate_mag.dir/depend:
	cd /home/odroid/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/odroid/catkin_ws/src /home/odroid/catkin_ws/src/rosflight/rosflight /home/odroid/catkin_ws/build /home/odroid/catkin_ws/build/rosflight/rosflight /home/odroid/catkin_ws/build/rosflight/rosflight/CMakeFiles/calibrate_mag.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : rosflight/rosflight/CMakeFiles/calibrate_mag.dir/depend

