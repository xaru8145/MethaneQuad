# MethaneQuad

This repo allows the quad to do waypoint following both through a motion caption system (VICON or OPTITRACK) and GPS (under developement.

Custom packages used:
- ROSFlight
- ROSCopter

Waypoint followimg through mocap system. Runthe following command lines:
- roslaunch rosflight auto_sys_startup.launch
- rosrun roscopter controller
- Waypoint managing file .py in ~roscopter/roscopter/src/waypoint_manager
  + rosrun roscopter simple_pub_command (easiest waypoint commanding file to test autonomous flight)
  + rosrun roscopter waypoint_manager (more complex waypoint commanding #goal)
  
  
