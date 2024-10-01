# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "quest2ros: 2 messages, 0 services")

set(MSG_I_FLAGS "-Iquest2ros:/workspaces/cloudgripper-quest/catkin_ws/src/quest2ros/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(quest2ros_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/workspaces/cloudgripper-quest/catkin_ws/src/quest2ros/msg/OVR2ROSHapticFeedback.msg" NAME_WE)
add_custom_target(_quest2ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "quest2ros" "/workspaces/cloudgripper-quest/catkin_ws/src/quest2ros/msg/OVR2ROSHapticFeedback.msg" ""
)

get_filename_component(_filename "/workspaces/cloudgripper-quest/catkin_ws/src/quest2ros/msg/OVR2ROSInputs.msg" NAME_WE)
add_custom_target(_quest2ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "quest2ros" "/workspaces/cloudgripper-quest/catkin_ws/src/quest2ros/msg/OVR2ROSInputs.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(quest2ros
  "/workspaces/cloudgripper-quest/catkin_ws/src/quest2ros/msg/OVR2ROSHapticFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quest2ros
)
_generate_msg_cpp(quest2ros
  "/workspaces/cloudgripper-quest/catkin_ws/src/quest2ros/msg/OVR2ROSInputs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quest2ros
)

### Generating Services

### Generating Module File
_generate_module_cpp(quest2ros
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quest2ros
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(quest2ros_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(quest2ros_generate_messages quest2ros_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspaces/cloudgripper-quest/catkin_ws/src/quest2ros/msg/OVR2ROSHapticFeedback.msg" NAME_WE)
add_dependencies(quest2ros_generate_messages_cpp _quest2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspaces/cloudgripper-quest/catkin_ws/src/quest2ros/msg/OVR2ROSInputs.msg" NAME_WE)
add_dependencies(quest2ros_generate_messages_cpp _quest2ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(quest2ros_gencpp)
add_dependencies(quest2ros_gencpp quest2ros_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS quest2ros_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(quest2ros
  "/workspaces/cloudgripper-quest/catkin_ws/src/quest2ros/msg/OVR2ROSHapticFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quest2ros
)
_generate_msg_eus(quest2ros
  "/workspaces/cloudgripper-quest/catkin_ws/src/quest2ros/msg/OVR2ROSInputs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quest2ros
)

### Generating Services

### Generating Module File
_generate_module_eus(quest2ros
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quest2ros
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(quest2ros_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(quest2ros_generate_messages quest2ros_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspaces/cloudgripper-quest/catkin_ws/src/quest2ros/msg/OVR2ROSHapticFeedback.msg" NAME_WE)
add_dependencies(quest2ros_generate_messages_eus _quest2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspaces/cloudgripper-quest/catkin_ws/src/quest2ros/msg/OVR2ROSInputs.msg" NAME_WE)
add_dependencies(quest2ros_generate_messages_eus _quest2ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(quest2ros_geneus)
add_dependencies(quest2ros_geneus quest2ros_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS quest2ros_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(quest2ros
  "/workspaces/cloudgripper-quest/catkin_ws/src/quest2ros/msg/OVR2ROSHapticFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quest2ros
)
_generate_msg_lisp(quest2ros
  "/workspaces/cloudgripper-quest/catkin_ws/src/quest2ros/msg/OVR2ROSInputs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quest2ros
)

### Generating Services

### Generating Module File
_generate_module_lisp(quest2ros
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quest2ros
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(quest2ros_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(quest2ros_generate_messages quest2ros_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspaces/cloudgripper-quest/catkin_ws/src/quest2ros/msg/OVR2ROSHapticFeedback.msg" NAME_WE)
add_dependencies(quest2ros_generate_messages_lisp _quest2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspaces/cloudgripper-quest/catkin_ws/src/quest2ros/msg/OVR2ROSInputs.msg" NAME_WE)
add_dependencies(quest2ros_generate_messages_lisp _quest2ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(quest2ros_genlisp)
add_dependencies(quest2ros_genlisp quest2ros_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS quest2ros_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(quest2ros
  "/workspaces/cloudgripper-quest/catkin_ws/src/quest2ros/msg/OVR2ROSHapticFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quest2ros
)
_generate_msg_nodejs(quest2ros
  "/workspaces/cloudgripper-quest/catkin_ws/src/quest2ros/msg/OVR2ROSInputs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quest2ros
)

### Generating Services

### Generating Module File
_generate_module_nodejs(quest2ros
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quest2ros
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(quest2ros_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(quest2ros_generate_messages quest2ros_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspaces/cloudgripper-quest/catkin_ws/src/quest2ros/msg/OVR2ROSHapticFeedback.msg" NAME_WE)
add_dependencies(quest2ros_generate_messages_nodejs _quest2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspaces/cloudgripper-quest/catkin_ws/src/quest2ros/msg/OVR2ROSInputs.msg" NAME_WE)
add_dependencies(quest2ros_generate_messages_nodejs _quest2ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(quest2ros_gennodejs)
add_dependencies(quest2ros_gennodejs quest2ros_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS quest2ros_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(quest2ros
  "/workspaces/cloudgripper-quest/catkin_ws/src/quest2ros/msg/OVR2ROSHapticFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quest2ros
)
_generate_msg_py(quest2ros
  "/workspaces/cloudgripper-quest/catkin_ws/src/quest2ros/msg/OVR2ROSInputs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quest2ros
)

### Generating Services

### Generating Module File
_generate_module_py(quest2ros
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quest2ros
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(quest2ros_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(quest2ros_generate_messages quest2ros_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspaces/cloudgripper-quest/catkin_ws/src/quest2ros/msg/OVR2ROSHapticFeedback.msg" NAME_WE)
add_dependencies(quest2ros_generate_messages_py _quest2ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspaces/cloudgripper-quest/catkin_ws/src/quest2ros/msg/OVR2ROSInputs.msg" NAME_WE)
add_dependencies(quest2ros_generate_messages_py _quest2ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(quest2ros_genpy)
add_dependencies(quest2ros_genpy quest2ros_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS quest2ros_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quest2ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quest2ros
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(quest2ros_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(quest2ros_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quest2ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quest2ros
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(quest2ros_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(quest2ros_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quest2ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quest2ros
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(quest2ros_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(quest2ros_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quest2ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quest2ros
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(quest2ros_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(quest2ros_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quest2ros)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quest2ros\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quest2ros
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(quest2ros_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(quest2ros_generate_messages_py std_msgs_generate_messages_py)
endif()
