# MethaneQuad


This repo allows the quad to do waypoint following both through a motion caption system (VICON or OPTITRACK) and GPS (under developement. It uses customized **ROSFlight** and **ROSCopter** to provide an autopilot interface and waypoint following capabilities.

In order to implement waypoint following through **mocap system**, the following commands should be initialized:
- Launch files that runs rosflight, vrpn_ros_client, vrpn2odom and loads parameters working_params & load_params: 
```bash
$ roslaunch rosflight auto_sys_startup.launch
```
- Roscopter controller: 
```bash
$ rosrun roscopter controller
```
- Waypoint managing file .py in ~roscopter/roscopter/src/waypoint_manager:
  + Easiest waypoint commanding file to test autonomous flight
  ```bash
  $ rosrun roscopter simple_pub_command
  ```
  + More complex waypoint commanding #goal
  ```bash
  $ rosrun roscopter waypoint_manager
  ```
Necessary edits:
- _auto_sys_startup.launch_ file: **uncomment** the mocap that you will be using and **change the username** in the path of the vrpn_client_ros launch files.
- _param_startup.launch_ file: **change the username** in the path of the working_params parameter file.
- _vrpn2odom.cpp_ file: **change the hostname**
- _param_startup.launch_ file: **change the username**
- _hosts_ file: **update** hostname and associated IP address (in /etc folder outside catkin_ws)
- _Source the environmen_
```bash
$ source /opt/ros/melodic/setup.bash
```
