# MethaneQuad


This repo allows the quad to do waypoint following both through a motion caption system (VICON or OPTITRACK) and GPS (under developement. It uses customized **ROSFlight** and **ROSCopter** to provide an autopilot interface and waypoint following capabilities.

Waypoint following through mocap system. Run the following command lines:
- Initialize rosflight, vrpn_ros_client, vrpn2odom, working_params, load_params: 
```bash
$ roslaunch rosflight auto_sys_startup.launch
```
- Initialize roscopter controller: 
```bash
$ rosrun roscopter controller
```
- Initialize a waypoint managing file .py in ~roscopter/roscopter/src/waypoint_manager:
  + Easiest waypoint commanding file to test autonomous flight
```bash
$ rosrun roscopter simple_pub_command
```
  + More complex waypoint commanding #goal
```bash
$ rosrun roscopter waypoint_manager
```
