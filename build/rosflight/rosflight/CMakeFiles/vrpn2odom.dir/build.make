# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/xaru8145/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/xaru8145/catkin_ws/build

# Include any dependencies generated for this target.
include rosflight/rosflight/CMakeFiles/vrpn2odom.dir/depend.make

# Include the progress variables for this target.
include rosflight/rosflight/CMakeFiles/vrpn2odom.dir/progress.make

# Include the compile flags for this target's objects.
include rosflight/rosflight/CMakeFiles/vrpn2odom.dir/flags.make

rosflight/rosflight/CMakeFiles/vrpn2odom.dir/src/vrpn2odom.cpp.o: rosflight/rosflight/CMakeFiles/vrpn2odom.dir/flags.make
rosflight/rosflight/CMakeFiles/vrpn2odom.dir/src/vrpn2odom.cpp.o: /home/xaru8145/catkin_ws/src/rosflight/rosflight/src/vrpn2odom.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xaru8145/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object rosflight/rosflight/CMakeFiles/vrpn2odom.dir/src/vrpn2odom.cpp.o"
	cd /home/xaru8145/catkin_ws/build/rosflight/rosflight && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vrpn2odom.dir/src/vrpn2odom.cpp.o -c /home/xaru8145/catkin_ws/src/rosflight/rosflight/src/vrpn2odom.cpp

rosflight/rosflight/CMakeFiles/vrpn2odom.dir/src/vrpn2odom.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vrpn2odom.dir/src/vrpn2odom.cpp.i"
	cd /home/xaru8145/catkin_ws/build/rosflight/rosflight && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xaru8145/catkin_ws/src/rosflight/rosflight/src/vrpn2odom.cpp > CMakeFiles/vrpn2odom.dir/src/vrpn2odom.cpp.i

rosflight/rosflight/CMakeFiles/vrpn2odom.dir/src/vrpn2odom.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vrpn2odom.dir/src/vrpn2odom.cpp.s"
	cd /home/xaru8145/catkin_ws/build/rosflight/rosflight && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xaru8145/catkin_ws/src/rosflight/rosflight/src/vrpn2odom.cpp -o CMakeFiles/vrpn2odom.dir/src/vrpn2odom.cpp.s

rosflight/rosflight/CMakeFiles/vrpn2odom.dir/src/vrpn2odom.cpp.o.requires:

.PHONY : rosflight/rosflight/CMakeFiles/vrpn2odom.dir/src/vrpn2odom.cpp.o.requires

rosflight/rosflight/CMakeFiles/vrpn2odom.dir/src/vrpn2odom.cpp.o.provides: rosflight/rosflight/CMakeFiles/vrpn2odom.dir/src/vrpn2odom.cpp.o.requires
	$(MAKE) -f rosflight/rosflight/CMakeFiles/vrpn2odom.dir/build.make rosflight/rosflight/CMakeFiles/vrpn2odom.dir/src/vrpn2odom.cpp.o.provides.build
.PHONY : rosflight/rosflight/CMakeFiles/vrpn2odom.dir/src/vrpn2odom.cpp.o.provides

rosflight/rosflight/CMakeFiles/vrpn2odom.dir/src/vrpn2odom.cpp.o.provides.build: rosflight/rosflight/CMakeFiles/vrpn2odom.dir/src/vrpn2odom.cpp.o


# Object files for target vrpn2odom
vrpn2odom_OBJECTS = \
"CMakeFiles/vrpn2odom.dir/src/vrpn2odom.cpp.o"

# External object files for target vrpn2odom
vrpn2odom_EXTERNAL_OBJECTS =

/home/xaru8145/catkin_ws/devel/lib/rosflight/vrpn2odom: rosflight/rosflight/CMakeFiles/vrpn2odom.dir/src/vrpn2odom.cpp.o
/home/xaru8145/catkin_ws/devel/lib/rosflight/vrpn2odom: rosflight/rosflight/CMakeFiles/vrpn2odom.dir/build.make
/home/xaru8145/catkin_ws/devel/lib/rosflight/vrpn2odom: /opt/ros/kinetic/lib/libtf.so
/home/xaru8145/catkin_ws/devel/lib/rosflight/vrpn2odom: /opt/ros/kinetic/lib/libtf2_ros.so
/home/xaru8145/catkin_ws/devel/lib/rosflight/vrpn2odom: /opt/ros/kinetic/lib/libactionlib.so
/home/xaru8145/catkin_ws/devel/lib/rosflight/vrpn2odom: /opt/ros/kinetic/lib/libmessage_filters.so
/home/xaru8145/catkin_ws/devel/lib/rosflight/vrpn2odom: /opt/ros/kinetic/lib/libroscpp.so
/home/xaru8145/catkin_ws/devel/lib/rosflight/vrpn2odom: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/xaru8145/catkin_ws/devel/lib/rosflight/vrpn2odom: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/xaru8145/catkin_ws/devel/lib/rosflight/vrpn2odom: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/xaru8145/catkin_ws/devel/lib/rosflight/vrpn2odom: /opt/ros/kinetic/lib/libtf2.so
/home/xaru8145/catkin_ws/devel/lib/rosflight/vrpn2odom: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/xaru8145/catkin_ws/devel/lib/rosflight/vrpn2odom: /opt/ros/kinetic/lib/librosconsole.so
/home/xaru8145/catkin_ws/devel/lib/rosflight/vrpn2odom: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/xaru8145/catkin_ws/devel/lib/rosflight/vrpn2odom: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/xaru8145/catkin_ws/devel/lib/rosflight/vrpn2odom: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/xaru8145/catkin_ws/devel/lib/rosflight/vrpn2odom: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/xaru8145/catkin_ws/devel/lib/rosflight/vrpn2odom: /opt/ros/kinetic/lib/librostime.so
/home/xaru8145/catkin_ws/devel/lib/rosflight/vrpn2odom: /opt/ros/kinetic/lib/libcpp_common.so
/home/xaru8145/catkin_ws/devel/lib/rosflight/vrpn2odom: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/xaru8145/catkin_ws/devel/lib/rosflight/vrpn2odom: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/xaru8145/catkin_ws/devel/lib/rosflight/vrpn2odom: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/xaru8145/catkin_ws/devel/lib/rosflight/vrpn2odom: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/xaru8145/catkin_ws/devel/lib/rosflight/vrpn2odom: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/xaru8145/catkin_ws/devel/lib/rosflight/vrpn2odom: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/xaru8145/catkin_ws/devel/lib/rosflight/vrpn2odom: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/xaru8145/catkin_ws/devel/lib/rosflight/vrpn2odom: rosflight/rosflight/CMakeFiles/vrpn2odom.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/xaru8145/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/xaru8145/catkin_ws/devel/lib/rosflight/vrpn2odom"
	cd /home/xaru8145/catkin_ws/build/rosflight/rosflight && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vrpn2odom.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
rosflight/rosflight/CMakeFiles/vrpn2odom.dir/build: /home/xaru8145/catkin_ws/devel/lib/rosflight/vrpn2odom

.PHONY : rosflight/rosflight/CMakeFiles/vrpn2odom.dir/build

rosflight/rosflight/CMakeFiles/vrpn2odom.dir/requires: rosflight/rosflight/CMakeFiles/vrpn2odom.dir/src/vrpn2odom.cpp.o.requires

.PHONY : rosflight/rosflight/CMakeFiles/vrpn2odom.dir/requires

rosflight/rosflight/CMakeFiles/vrpn2odom.dir/clean:
	cd /home/xaru8145/catkin_ws/build/rosflight/rosflight && $(CMAKE_COMMAND) -P CMakeFiles/vrpn2odom.dir/cmake_clean.cmake
.PHONY : rosflight/rosflight/CMakeFiles/vrpn2odom.dir/clean

rosflight/rosflight/CMakeFiles/vrpn2odom.dir/depend:
	cd /home/xaru8145/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xaru8145/catkin_ws/src /home/xaru8145/catkin_ws/src/rosflight/rosflight /home/xaru8145/catkin_ws/build /home/xaru8145/catkin_ws/build/rosflight/rosflight /home/xaru8145/catkin_ws/build/rosflight/rosflight/CMakeFiles/vrpn2odom.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : rosflight/rosflight/CMakeFiles/vrpn2odom.dir/depend

