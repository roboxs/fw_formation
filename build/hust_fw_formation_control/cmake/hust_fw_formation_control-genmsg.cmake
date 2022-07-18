# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "hust_fw_formation_control: 7 messages, 0 services")

set(MSG_I_FLAGS "-Ihust_fw_formation_control:/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(hust_fw_formation_control_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Fwmonitor.msg" NAME_WE)
add_custom_target(_hust_fw_formation_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hust_fw_formation_control" "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Fwmonitor.msg" ""
)

get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Formation_control_states.msg" NAME_WE)
add_custom_target(_hust_fw_formation_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hust_fw_formation_control" "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Formation_control_states.msg" ""
)

get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Leaderstates.msg" NAME_WE)
add_custom_target(_hust_fw_formation_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hust_fw_formation_control" "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Leaderstates.msg" ""
)

get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Fw_cmd_mode.msg" NAME_WE)
add_custom_target(_hust_fw_formation_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hust_fw_formation_control" "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Fw_cmd_mode.msg" ""
)

get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Fw_current_mode.msg" NAME_WE)
add_custom_target(_hust_fw_formation_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hust_fw_formation_control" "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Fw_current_mode.msg" ""
)

get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/FWstates.msg" NAME_WE)
add_custom_target(_hust_fw_formation_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hust_fw_formation_control" "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/FWstates.msg" "geometry_msgs/Vector3:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/FWcmd.msg" NAME_WE)
add_custom_target(_hust_fw_formation_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hust_fw_formation_control" "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/FWcmd.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(hust_fw_formation_control
  "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Formation_control_states.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hust_fw_formation_control
)
_generate_msg_cpp(hust_fw_formation_control
  "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Leaderstates.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hust_fw_formation_control
)
_generate_msg_cpp(hust_fw_formation_control
  "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Fw_cmd_mode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hust_fw_formation_control
)
_generate_msg_cpp(hust_fw_formation_control
  "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/FWcmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hust_fw_formation_control
)
_generate_msg_cpp(hust_fw_formation_control
  "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Fw_current_mode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hust_fw_formation_control
)
_generate_msg_cpp(hust_fw_formation_control
  "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/FWstates.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hust_fw_formation_control
)
_generate_msg_cpp(hust_fw_formation_control
  "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Fwmonitor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hust_fw_formation_control
)

### Generating Services

### Generating Module File
_generate_module_cpp(hust_fw_formation_control
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hust_fw_formation_control
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(hust_fw_formation_control_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(hust_fw_formation_control_generate_messages hust_fw_formation_control_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Fwmonitor.msg" NAME_WE)
add_dependencies(hust_fw_formation_control_generate_messages_cpp _hust_fw_formation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Formation_control_states.msg" NAME_WE)
add_dependencies(hust_fw_formation_control_generate_messages_cpp _hust_fw_formation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Leaderstates.msg" NAME_WE)
add_dependencies(hust_fw_formation_control_generate_messages_cpp _hust_fw_formation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Fw_cmd_mode.msg" NAME_WE)
add_dependencies(hust_fw_formation_control_generate_messages_cpp _hust_fw_formation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Fw_current_mode.msg" NAME_WE)
add_dependencies(hust_fw_formation_control_generate_messages_cpp _hust_fw_formation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/FWstates.msg" NAME_WE)
add_dependencies(hust_fw_formation_control_generate_messages_cpp _hust_fw_formation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/FWcmd.msg" NAME_WE)
add_dependencies(hust_fw_formation_control_generate_messages_cpp _hust_fw_formation_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hust_fw_formation_control_gencpp)
add_dependencies(hust_fw_formation_control_gencpp hust_fw_formation_control_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hust_fw_formation_control_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(hust_fw_formation_control
  "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Formation_control_states.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hust_fw_formation_control
)
_generate_msg_eus(hust_fw_formation_control
  "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Leaderstates.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hust_fw_formation_control
)
_generate_msg_eus(hust_fw_formation_control
  "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Fw_cmd_mode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hust_fw_formation_control
)
_generate_msg_eus(hust_fw_formation_control
  "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/FWcmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hust_fw_formation_control
)
_generate_msg_eus(hust_fw_formation_control
  "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Fw_current_mode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hust_fw_formation_control
)
_generate_msg_eus(hust_fw_formation_control
  "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/FWstates.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hust_fw_formation_control
)
_generate_msg_eus(hust_fw_formation_control
  "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Fwmonitor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hust_fw_formation_control
)

### Generating Services

### Generating Module File
_generate_module_eus(hust_fw_formation_control
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hust_fw_formation_control
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(hust_fw_formation_control_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(hust_fw_formation_control_generate_messages hust_fw_formation_control_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Fwmonitor.msg" NAME_WE)
add_dependencies(hust_fw_formation_control_generate_messages_eus _hust_fw_formation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Formation_control_states.msg" NAME_WE)
add_dependencies(hust_fw_formation_control_generate_messages_eus _hust_fw_formation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Leaderstates.msg" NAME_WE)
add_dependencies(hust_fw_formation_control_generate_messages_eus _hust_fw_formation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Fw_cmd_mode.msg" NAME_WE)
add_dependencies(hust_fw_formation_control_generate_messages_eus _hust_fw_formation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Fw_current_mode.msg" NAME_WE)
add_dependencies(hust_fw_formation_control_generate_messages_eus _hust_fw_formation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/FWstates.msg" NAME_WE)
add_dependencies(hust_fw_formation_control_generate_messages_eus _hust_fw_formation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/FWcmd.msg" NAME_WE)
add_dependencies(hust_fw_formation_control_generate_messages_eus _hust_fw_formation_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hust_fw_formation_control_geneus)
add_dependencies(hust_fw_formation_control_geneus hust_fw_formation_control_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hust_fw_formation_control_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(hust_fw_formation_control
  "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Formation_control_states.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hust_fw_formation_control
)
_generate_msg_lisp(hust_fw_formation_control
  "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Leaderstates.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hust_fw_formation_control
)
_generate_msg_lisp(hust_fw_formation_control
  "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Fw_cmd_mode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hust_fw_formation_control
)
_generate_msg_lisp(hust_fw_formation_control
  "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/FWcmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hust_fw_formation_control
)
_generate_msg_lisp(hust_fw_formation_control
  "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Fw_current_mode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hust_fw_formation_control
)
_generate_msg_lisp(hust_fw_formation_control
  "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/FWstates.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hust_fw_formation_control
)
_generate_msg_lisp(hust_fw_formation_control
  "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Fwmonitor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hust_fw_formation_control
)

### Generating Services

### Generating Module File
_generate_module_lisp(hust_fw_formation_control
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hust_fw_formation_control
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(hust_fw_formation_control_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(hust_fw_formation_control_generate_messages hust_fw_formation_control_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Fwmonitor.msg" NAME_WE)
add_dependencies(hust_fw_formation_control_generate_messages_lisp _hust_fw_formation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Formation_control_states.msg" NAME_WE)
add_dependencies(hust_fw_formation_control_generate_messages_lisp _hust_fw_formation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Leaderstates.msg" NAME_WE)
add_dependencies(hust_fw_formation_control_generate_messages_lisp _hust_fw_formation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Fw_cmd_mode.msg" NAME_WE)
add_dependencies(hust_fw_formation_control_generate_messages_lisp _hust_fw_formation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Fw_current_mode.msg" NAME_WE)
add_dependencies(hust_fw_formation_control_generate_messages_lisp _hust_fw_formation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/FWstates.msg" NAME_WE)
add_dependencies(hust_fw_formation_control_generate_messages_lisp _hust_fw_formation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/FWcmd.msg" NAME_WE)
add_dependencies(hust_fw_formation_control_generate_messages_lisp _hust_fw_formation_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hust_fw_formation_control_genlisp)
add_dependencies(hust_fw_formation_control_genlisp hust_fw_formation_control_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hust_fw_formation_control_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(hust_fw_formation_control
  "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Formation_control_states.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hust_fw_formation_control
)
_generate_msg_nodejs(hust_fw_formation_control
  "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Leaderstates.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hust_fw_formation_control
)
_generate_msg_nodejs(hust_fw_formation_control
  "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Fw_cmd_mode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hust_fw_formation_control
)
_generate_msg_nodejs(hust_fw_formation_control
  "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/FWcmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hust_fw_formation_control
)
_generate_msg_nodejs(hust_fw_formation_control
  "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Fw_current_mode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hust_fw_formation_control
)
_generate_msg_nodejs(hust_fw_formation_control
  "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/FWstates.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hust_fw_formation_control
)
_generate_msg_nodejs(hust_fw_formation_control
  "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Fwmonitor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hust_fw_formation_control
)

### Generating Services

### Generating Module File
_generate_module_nodejs(hust_fw_formation_control
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hust_fw_formation_control
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(hust_fw_formation_control_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(hust_fw_formation_control_generate_messages hust_fw_formation_control_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Fwmonitor.msg" NAME_WE)
add_dependencies(hust_fw_formation_control_generate_messages_nodejs _hust_fw_formation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Formation_control_states.msg" NAME_WE)
add_dependencies(hust_fw_formation_control_generate_messages_nodejs _hust_fw_formation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Leaderstates.msg" NAME_WE)
add_dependencies(hust_fw_formation_control_generate_messages_nodejs _hust_fw_formation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Fw_cmd_mode.msg" NAME_WE)
add_dependencies(hust_fw_formation_control_generate_messages_nodejs _hust_fw_formation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Fw_current_mode.msg" NAME_WE)
add_dependencies(hust_fw_formation_control_generate_messages_nodejs _hust_fw_formation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/FWstates.msg" NAME_WE)
add_dependencies(hust_fw_formation_control_generate_messages_nodejs _hust_fw_formation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/FWcmd.msg" NAME_WE)
add_dependencies(hust_fw_formation_control_generate_messages_nodejs _hust_fw_formation_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hust_fw_formation_control_gennodejs)
add_dependencies(hust_fw_formation_control_gennodejs hust_fw_formation_control_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hust_fw_formation_control_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(hust_fw_formation_control
  "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Formation_control_states.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hust_fw_formation_control
)
_generate_msg_py(hust_fw_formation_control
  "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Leaderstates.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hust_fw_formation_control
)
_generate_msg_py(hust_fw_formation_control
  "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Fw_cmd_mode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hust_fw_formation_control
)
_generate_msg_py(hust_fw_formation_control
  "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/FWcmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hust_fw_formation_control
)
_generate_msg_py(hust_fw_formation_control
  "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Fw_current_mode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hust_fw_formation_control
)
_generate_msg_py(hust_fw_formation_control
  "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/FWstates.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hust_fw_formation_control
)
_generate_msg_py(hust_fw_formation_control
  "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Fwmonitor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hust_fw_formation_control
)

### Generating Services

### Generating Module File
_generate_module_py(hust_fw_formation_control
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hust_fw_formation_control
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(hust_fw_formation_control_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(hust_fw_formation_control_generate_messages hust_fw_formation_control_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Fwmonitor.msg" NAME_WE)
add_dependencies(hust_fw_formation_control_generate_messages_py _hust_fw_formation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Formation_control_states.msg" NAME_WE)
add_dependencies(hust_fw_formation_control_generate_messages_py _hust_fw_formation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Leaderstates.msg" NAME_WE)
add_dependencies(hust_fw_formation_control_generate_messages_py _hust_fw_formation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Fw_cmd_mode.msg" NAME_WE)
add_dependencies(hust_fw_formation_control_generate_messages_py _hust_fw_formation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/Fw_current_mode.msg" NAME_WE)
add_dependencies(hust_fw_formation_control_generate_messages_py _hust_fw_formation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/FWstates.msg" NAME_WE)
add_dependencies(hust_fw_formation_control_generate_messages_py _hust_fw_formation_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaodu/fw_formation/src/hust_fw_formation_control/msg/FWcmd.msg" NAME_WE)
add_dependencies(hust_fw_formation_control_generate_messages_py _hust_fw_formation_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hust_fw_formation_control_genpy)
add_dependencies(hust_fw_formation_control_genpy hust_fw_formation_control_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hust_fw_formation_control_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hust_fw_formation_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hust_fw_formation_control
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(hust_fw_formation_control_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(hust_fw_formation_control_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hust_fw_formation_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hust_fw_formation_control
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(hust_fw_formation_control_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(hust_fw_formation_control_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hust_fw_formation_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hust_fw_formation_control
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(hust_fw_formation_control_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(hust_fw_formation_control_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hust_fw_formation_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hust_fw_formation_control
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(hust_fw_formation_control_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(hust_fw_formation_control_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hust_fw_formation_control)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hust_fw_formation_control\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hust_fw_formation_control
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(hust_fw_formation_control_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(hust_fw_formation_control_generate_messages_py geometry_msgs_generate_messages_py)
endif()
