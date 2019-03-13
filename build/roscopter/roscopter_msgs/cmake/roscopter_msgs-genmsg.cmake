# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "roscopter_msgs: 0 messages, 3 services")

set(MSG_I_FLAGS "")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(roscopter_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/odroid/catkin_ws/src/roscopter/roscopter_msgs/srv/AddWaypoint.srv" NAME_WE)
add_custom_target(_roscopter_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roscopter_msgs" "/home/odroid/catkin_ws/src/roscopter/roscopter_msgs/srv/AddWaypoint.srv" ""
)

get_filename_component(_filename "/home/odroid/catkin_ws/src/roscopter/roscopter_msgs/srv/SetWaypointsFromFile.srv" NAME_WE)
add_custom_target(_roscopter_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roscopter_msgs" "/home/odroid/catkin_ws/src/roscopter/roscopter_msgs/srv/SetWaypointsFromFile.srv" ""
)

get_filename_component(_filename "/home/odroid/catkin_ws/src/roscopter/roscopter_msgs/srv/RemoveWaypoint.srv" NAME_WE)
add_custom_target(_roscopter_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roscopter_msgs" "/home/odroid/catkin_ws/src/roscopter/roscopter_msgs/srv/RemoveWaypoint.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(roscopter_msgs
  "/home/odroid/catkin_ws/src/roscopter/roscopter_msgs/srv/AddWaypoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roscopter_msgs
)
_generate_srv_cpp(roscopter_msgs
  "/home/odroid/catkin_ws/src/roscopter/roscopter_msgs/srv/SetWaypointsFromFile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roscopter_msgs
)
_generate_srv_cpp(roscopter_msgs
  "/home/odroid/catkin_ws/src/roscopter/roscopter_msgs/srv/RemoveWaypoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roscopter_msgs
)

### Generating Module File
_generate_module_cpp(roscopter_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roscopter_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(roscopter_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(roscopter_msgs_generate_messages roscopter_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/odroid/catkin_ws/src/roscopter/roscopter_msgs/srv/AddWaypoint.srv" NAME_WE)
add_dependencies(roscopter_msgs_generate_messages_cpp _roscopter_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/roscopter/roscopter_msgs/srv/SetWaypointsFromFile.srv" NAME_WE)
add_dependencies(roscopter_msgs_generate_messages_cpp _roscopter_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/roscopter/roscopter_msgs/srv/RemoveWaypoint.srv" NAME_WE)
add_dependencies(roscopter_msgs_generate_messages_cpp _roscopter_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roscopter_msgs_gencpp)
add_dependencies(roscopter_msgs_gencpp roscopter_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roscopter_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(roscopter_msgs
  "/home/odroid/catkin_ws/src/roscopter/roscopter_msgs/srv/AddWaypoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roscopter_msgs
)
_generate_srv_eus(roscopter_msgs
  "/home/odroid/catkin_ws/src/roscopter/roscopter_msgs/srv/SetWaypointsFromFile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roscopter_msgs
)
_generate_srv_eus(roscopter_msgs
  "/home/odroid/catkin_ws/src/roscopter/roscopter_msgs/srv/RemoveWaypoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roscopter_msgs
)

### Generating Module File
_generate_module_eus(roscopter_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roscopter_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(roscopter_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(roscopter_msgs_generate_messages roscopter_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/odroid/catkin_ws/src/roscopter/roscopter_msgs/srv/AddWaypoint.srv" NAME_WE)
add_dependencies(roscopter_msgs_generate_messages_eus _roscopter_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/roscopter/roscopter_msgs/srv/SetWaypointsFromFile.srv" NAME_WE)
add_dependencies(roscopter_msgs_generate_messages_eus _roscopter_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/roscopter/roscopter_msgs/srv/RemoveWaypoint.srv" NAME_WE)
add_dependencies(roscopter_msgs_generate_messages_eus _roscopter_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roscopter_msgs_geneus)
add_dependencies(roscopter_msgs_geneus roscopter_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roscopter_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(roscopter_msgs
  "/home/odroid/catkin_ws/src/roscopter/roscopter_msgs/srv/AddWaypoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roscopter_msgs
)
_generate_srv_lisp(roscopter_msgs
  "/home/odroid/catkin_ws/src/roscopter/roscopter_msgs/srv/SetWaypointsFromFile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roscopter_msgs
)
_generate_srv_lisp(roscopter_msgs
  "/home/odroid/catkin_ws/src/roscopter/roscopter_msgs/srv/RemoveWaypoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roscopter_msgs
)

### Generating Module File
_generate_module_lisp(roscopter_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roscopter_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(roscopter_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(roscopter_msgs_generate_messages roscopter_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/odroid/catkin_ws/src/roscopter/roscopter_msgs/srv/AddWaypoint.srv" NAME_WE)
add_dependencies(roscopter_msgs_generate_messages_lisp _roscopter_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/roscopter/roscopter_msgs/srv/SetWaypointsFromFile.srv" NAME_WE)
add_dependencies(roscopter_msgs_generate_messages_lisp _roscopter_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/roscopter/roscopter_msgs/srv/RemoveWaypoint.srv" NAME_WE)
add_dependencies(roscopter_msgs_generate_messages_lisp _roscopter_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roscopter_msgs_genlisp)
add_dependencies(roscopter_msgs_genlisp roscopter_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roscopter_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(roscopter_msgs
  "/home/odroid/catkin_ws/src/roscopter/roscopter_msgs/srv/AddWaypoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roscopter_msgs
)
_generate_srv_nodejs(roscopter_msgs
  "/home/odroid/catkin_ws/src/roscopter/roscopter_msgs/srv/SetWaypointsFromFile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roscopter_msgs
)
_generate_srv_nodejs(roscopter_msgs
  "/home/odroid/catkin_ws/src/roscopter/roscopter_msgs/srv/RemoveWaypoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roscopter_msgs
)

### Generating Module File
_generate_module_nodejs(roscopter_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roscopter_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(roscopter_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(roscopter_msgs_generate_messages roscopter_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/odroid/catkin_ws/src/roscopter/roscopter_msgs/srv/AddWaypoint.srv" NAME_WE)
add_dependencies(roscopter_msgs_generate_messages_nodejs _roscopter_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/roscopter/roscopter_msgs/srv/SetWaypointsFromFile.srv" NAME_WE)
add_dependencies(roscopter_msgs_generate_messages_nodejs _roscopter_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/roscopter/roscopter_msgs/srv/RemoveWaypoint.srv" NAME_WE)
add_dependencies(roscopter_msgs_generate_messages_nodejs _roscopter_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roscopter_msgs_gennodejs)
add_dependencies(roscopter_msgs_gennodejs roscopter_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roscopter_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(roscopter_msgs
  "/home/odroid/catkin_ws/src/roscopter/roscopter_msgs/srv/AddWaypoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roscopter_msgs
)
_generate_srv_py(roscopter_msgs
  "/home/odroid/catkin_ws/src/roscopter/roscopter_msgs/srv/SetWaypointsFromFile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roscopter_msgs
)
_generate_srv_py(roscopter_msgs
  "/home/odroid/catkin_ws/src/roscopter/roscopter_msgs/srv/RemoveWaypoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roscopter_msgs
)

### Generating Module File
_generate_module_py(roscopter_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roscopter_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(roscopter_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(roscopter_msgs_generate_messages roscopter_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/odroid/catkin_ws/src/roscopter/roscopter_msgs/srv/AddWaypoint.srv" NAME_WE)
add_dependencies(roscopter_msgs_generate_messages_py _roscopter_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/roscopter/roscopter_msgs/srv/SetWaypointsFromFile.srv" NAME_WE)
add_dependencies(roscopter_msgs_generate_messages_py _roscopter_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/catkin_ws/src/roscopter/roscopter_msgs/srv/RemoveWaypoint.srv" NAME_WE)
add_dependencies(roscopter_msgs_generate_messages_py _roscopter_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roscopter_msgs_genpy)
add_dependencies(roscopter_msgs_genpy roscopter_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roscopter_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roscopter_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roscopter_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roscopter_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roscopter_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roscopter_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roscopter_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roscopter_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roscopter_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roscopter_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roscopter_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roscopter_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
