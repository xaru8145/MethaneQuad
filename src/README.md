The **src** folder contains the packages of the workspace:
### ROSflight
This package provides a ROS interface to an autopilot running the ROSflight firmware
  
### ROScopter
This repository contains the ROS packages associated with flying a multirotor on the ROSflight autopilot stack. The roscopter ROS package contains a high-level multirotor autopilot while the roscopter_sim package is used for simulation.

### vrpn_client_ros
The client node connects to a remote VRPN server, and exposes information from the server's Trackers over ROS topics and tf2. The client node auto-detects, or is provided the Tracker names via ROS params

### timed_roslaunch
This script can delay the launch of a roslaunch file. Used to load successfully the file _working_params.yaml_ through another delayed roslaunch file _param_startup.launch_.
