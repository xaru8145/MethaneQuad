# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "fcu_common: 9 messages, 0 services")

set(MSG_I_FLAGS "-Ifcu_common:/home/odroid/catkin_ws/src/fcu_common/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(fcu_common_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/OutputRaw.msg" NAME_WE)
add_custom_target(_fcu_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fcu_common" "/home/odroid/catkin_ws/src/fcu_common/msg/OutputRaw.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/Attitude.msg" NAME_WE)
add_custom_target(_fcu_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fcu_common" "/home/odroid/catkin_ws/src/fcu_common/msg/Attitude.msg" "geometry_msgs/Vector3:geometry_msgs/Quaternion:std_msgs/Header"
)

get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/GPS.msg" NAME_WE)
add_custom_target(_fcu_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fcu_common" "/home/odroid/catkin_ws/src/fcu_common/msg/GPS.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/State.msg" NAME_WE)
add_custom_target(_fcu_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fcu_common" "/home/odroid/catkin_ws/src/fcu_common/msg/State.msg" ""
)

get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/Status.msg" NAME_WE)
add_custom_target(_fcu_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fcu_common" "/home/odroid/catkin_ws/src/fcu_common/msg/Status.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/RCRaw.msg" NAME_WE)
add_custom_target(_fcu_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fcu_common" "/home/odroid/catkin_ws/src/fcu_common/msg/RCRaw.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/Airspeed.msg" NAME_WE)
add_custom_target(_fcu_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fcu_common" "/home/odroid/catkin_ws/src/fcu_common/msg/Airspeed.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/Barometer.msg" NAME_WE)
add_custom_target(_fcu_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fcu_common" "/home/odroid/catkin_ws/src/fcu_common/msg/Barometer.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/Command.msg" NAME_WE)
add_custom_target(_fcu_common_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fcu_common" "/home/odroid/catkin_ws/src/fcu_common/msg/Command.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/OutputRaw.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fcu_common
)
_generate_msg_cpp(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/Attitude.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fcu_common
)
_generate_msg_cpp(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/GPS.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fcu_common
)
_generate_msg_cpp(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fcu_common
)
_generate_msg_cpp(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fcu_common
)
_generate_msg_cpp(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/Command.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fcu_common
)
_generate_msg_cpp(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/Airspeed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fcu_common
)
_generate_msg_cpp(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/Barometer.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fcu_common
)
_generate_msg_cpp(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/RCRaw.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fcu_common
)

### Generating Services

### Generating Module File
_generate_module_cpp(fcu_common
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fcu_common
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(fcu_common_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(fcu_common_generate_messages fcu_common_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/OutputRaw.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_cpp _fcu_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/Attitude.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_cpp _fcu_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/GPS.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_cpp _fcu_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/State.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_cpp _fcu_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/Status.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_cpp _fcu_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/RCRaw.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_cpp _fcu_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/Airspeed.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_cpp _fcu_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/Barometer.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_cpp _fcu_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/Command.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_cpp _fcu_common_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fcu_common_gencpp)
add_dependencies(fcu_common_gencpp fcu_common_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fcu_common_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/OutputRaw.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fcu_common
)
_generate_msg_eus(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/Attitude.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fcu_common
)
_generate_msg_eus(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/GPS.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fcu_common
)
_generate_msg_eus(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fcu_common
)
_generate_msg_eus(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fcu_common
)
_generate_msg_eus(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/Command.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fcu_common
)
_generate_msg_eus(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/Airspeed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fcu_common
)
_generate_msg_eus(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/Barometer.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fcu_common
)
_generate_msg_eus(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/RCRaw.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fcu_common
)

### Generating Services

### Generating Module File
_generate_module_eus(fcu_common
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fcu_common
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(fcu_common_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(fcu_common_generate_messages fcu_common_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/OutputRaw.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_eus _fcu_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/Attitude.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_eus _fcu_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/GPS.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_eus _fcu_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/State.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_eus _fcu_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/Status.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_eus _fcu_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/RCRaw.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_eus _fcu_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/Airspeed.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_eus _fcu_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/Barometer.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_eus _fcu_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/Command.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_eus _fcu_common_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fcu_common_geneus)
add_dependencies(fcu_common_geneus fcu_common_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fcu_common_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/OutputRaw.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fcu_common
)
_generate_msg_lisp(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/Attitude.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fcu_common
)
_generate_msg_lisp(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/GPS.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fcu_common
)
_generate_msg_lisp(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fcu_common
)
_generate_msg_lisp(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fcu_common
)
_generate_msg_lisp(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/Command.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fcu_common
)
_generate_msg_lisp(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/Airspeed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fcu_common
)
_generate_msg_lisp(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/Barometer.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fcu_common
)
_generate_msg_lisp(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/RCRaw.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fcu_common
)

### Generating Services

### Generating Module File
_generate_module_lisp(fcu_common
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fcu_common
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(fcu_common_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(fcu_common_generate_messages fcu_common_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/OutputRaw.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_lisp _fcu_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/Attitude.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_lisp _fcu_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/GPS.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_lisp _fcu_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/State.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_lisp _fcu_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/Status.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_lisp _fcu_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/RCRaw.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_lisp _fcu_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/Airspeed.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_lisp _fcu_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/Barometer.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_lisp _fcu_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/Command.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_lisp _fcu_common_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fcu_common_genlisp)
add_dependencies(fcu_common_genlisp fcu_common_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fcu_common_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/OutputRaw.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fcu_common
)
_generate_msg_nodejs(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/Attitude.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fcu_common
)
_generate_msg_nodejs(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/GPS.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fcu_common
)
_generate_msg_nodejs(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fcu_common
)
_generate_msg_nodejs(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fcu_common
)
_generate_msg_nodejs(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/Command.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fcu_common
)
_generate_msg_nodejs(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/Airspeed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fcu_common
)
_generate_msg_nodejs(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/Barometer.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fcu_common
)
_generate_msg_nodejs(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/RCRaw.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fcu_common
)

### Generating Services

### Generating Module File
_generate_module_nodejs(fcu_common
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fcu_common
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(fcu_common_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(fcu_common_generate_messages fcu_common_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/OutputRaw.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_nodejs _fcu_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/Attitude.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_nodejs _fcu_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/GPS.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_nodejs _fcu_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/State.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_nodejs _fcu_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/Status.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_nodejs _fcu_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/RCRaw.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_nodejs _fcu_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/Airspeed.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_nodejs _fcu_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/Barometer.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_nodejs _fcu_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/Command.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_nodejs _fcu_common_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fcu_common_gennodejs)
add_dependencies(fcu_common_gennodejs fcu_common_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fcu_common_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/OutputRaw.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fcu_common
)
_generate_msg_py(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/Attitude.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fcu_common
)
_generate_msg_py(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/GPS.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fcu_common
)
_generate_msg_py(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fcu_common
)
_generate_msg_py(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fcu_common
)
_generate_msg_py(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/Command.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fcu_common
)
_generate_msg_py(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/Airspeed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fcu_common
)
_generate_msg_py(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/Barometer.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fcu_common
)
_generate_msg_py(fcu_common
  "/home/odroid/catkin_ws/src/fcu_common/msg/RCRaw.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fcu_common
)

### Generating Services

### Generating Module File
_generate_module_py(fcu_common
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fcu_common
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(fcu_common_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(fcu_common_generate_messages fcu_common_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/OutputRaw.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_py _fcu_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/Attitude.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_py _fcu_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/GPS.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_py _fcu_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/State.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_py _fcu_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/Status.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_py _fcu_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/RCRaw.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_py _fcu_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/Airspeed.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_py _fcu_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/Barometer.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_py _fcu_common_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/fcu_common/msg/Command.msg" NAME_WE)
add_dependencies(fcu_common_generate_messages_py _fcu_common_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fcu_common_genpy)
add_dependencies(fcu_common_genpy fcu_common_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fcu_common_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fcu_common)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fcu_common
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(fcu_common_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(fcu_common_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(fcu_common_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fcu_common)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fcu_common
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(fcu_common_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(fcu_common_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(fcu_common_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fcu_common)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fcu_common
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(fcu_common_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(fcu_common_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(fcu_common_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fcu_common)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fcu_common
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(fcu_common_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(fcu_common_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(fcu_common_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fcu_common)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fcu_common\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fcu_common
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(fcu_common_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(fcu_common_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(fcu_common_generate_messages_py geometry_msgs_generate_messages_py)
endif()
