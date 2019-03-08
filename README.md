# MethaneQuad


This repo allows the quad to do waypoint following both through a motion caption system (VICON or OPTITRACK) and GPS (under developement. It uses customized **ROSFlight** and **ROSCopter** to provide an autopilot interface and waypoint following capabilities.

In order to implement waypoint following through **mocap system**, the following commands should be initialized:
- Launch files that runs rosflight, vrpn_ros_client, vrpn2odom and loads parameters working_params & load_params: 
```bash
$ roslaunch rosflight auto_sys_startup.launch
```
_Note_: It is necessary to edit the auto_sys_startup.launch file and uncomment the mocap that you will be using.

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
