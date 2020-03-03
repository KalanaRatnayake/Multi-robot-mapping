# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "sbpl_lattice_planner: 1 messages, 0 services")

set(MSG_I_FLAGS "-Isbpl_lattice_planner:/home/kalana/Xavier/Robot/src/Navigation/navigation_experimental-kinetic-devel/sbpl_lattice_planner/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(sbpl_lattice_planner_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/kalana/Xavier/Robot/src/Navigation/navigation_experimental-kinetic-devel/sbpl_lattice_planner/msg/SBPLLatticePlannerStats.msg" NAME_WE)
add_custom_target(_sbpl_lattice_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sbpl_lattice_planner" "/home/kalana/Xavier/Robot/src/Navigation/navigation_experimental-kinetic-devel/sbpl_lattice_planner/msg/SBPLLatticePlannerStats.msg" "geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(sbpl_lattice_planner
  "/home/kalana/Xavier/Robot/src/Navigation/navigation_experimental-kinetic-devel/sbpl_lattice_planner/msg/SBPLLatticePlannerStats.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sbpl_lattice_planner
)

### Generating Services

### Generating Module File
_generate_module_cpp(sbpl_lattice_planner
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sbpl_lattice_planner
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(sbpl_lattice_planner_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(sbpl_lattice_planner_generate_messages sbpl_lattice_planner_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/Navigation/navigation_experimental-kinetic-devel/sbpl_lattice_planner/msg/SBPLLatticePlannerStats.msg" NAME_WE)
add_dependencies(sbpl_lattice_planner_generate_messages_cpp _sbpl_lattice_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sbpl_lattice_planner_gencpp)
add_dependencies(sbpl_lattice_planner_gencpp sbpl_lattice_planner_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sbpl_lattice_planner_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(sbpl_lattice_planner
  "/home/kalana/Xavier/Robot/src/Navigation/navigation_experimental-kinetic-devel/sbpl_lattice_planner/msg/SBPLLatticePlannerStats.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sbpl_lattice_planner
)

### Generating Services

### Generating Module File
_generate_module_eus(sbpl_lattice_planner
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sbpl_lattice_planner
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(sbpl_lattice_planner_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(sbpl_lattice_planner_generate_messages sbpl_lattice_planner_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/Navigation/navigation_experimental-kinetic-devel/sbpl_lattice_planner/msg/SBPLLatticePlannerStats.msg" NAME_WE)
add_dependencies(sbpl_lattice_planner_generate_messages_eus _sbpl_lattice_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sbpl_lattice_planner_geneus)
add_dependencies(sbpl_lattice_planner_geneus sbpl_lattice_planner_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sbpl_lattice_planner_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(sbpl_lattice_planner
  "/home/kalana/Xavier/Robot/src/Navigation/navigation_experimental-kinetic-devel/sbpl_lattice_planner/msg/SBPLLatticePlannerStats.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sbpl_lattice_planner
)

### Generating Services

### Generating Module File
_generate_module_lisp(sbpl_lattice_planner
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sbpl_lattice_planner
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(sbpl_lattice_planner_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(sbpl_lattice_planner_generate_messages sbpl_lattice_planner_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/Navigation/navigation_experimental-kinetic-devel/sbpl_lattice_planner/msg/SBPLLatticePlannerStats.msg" NAME_WE)
add_dependencies(sbpl_lattice_planner_generate_messages_lisp _sbpl_lattice_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sbpl_lattice_planner_genlisp)
add_dependencies(sbpl_lattice_planner_genlisp sbpl_lattice_planner_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sbpl_lattice_planner_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(sbpl_lattice_planner
  "/home/kalana/Xavier/Robot/src/Navigation/navigation_experimental-kinetic-devel/sbpl_lattice_planner/msg/SBPLLatticePlannerStats.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sbpl_lattice_planner
)

### Generating Services

### Generating Module File
_generate_module_nodejs(sbpl_lattice_planner
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sbpl_lattice_planner
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(sbpl_lattice_planner_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(sbpl_lattice_planner_generate_messages sbpl_lattice_planner_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/Navigation/navigation_experimental-kinetic-devel/sbpl_lattice_planner/msg/SBPLLatticePlannerStats.msg" NAME_WE)
add_dependencies(sbpl_lattice_planner_generate_messages_nodejs _sbpl_lattice_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sbpl_lattice_planner_gennodejs)
add_dependencies(sbpl_lattice_planner_gennodejs sbpl_lattice_planner_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sbpl_lattice_planner_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(sbpl_lattice_planner
  "/home/kalana/Xavier/Robot/src/Navigation/navigation_experimental-kinetic-devel/sbpl_lattice_planner/msg/SBPLLatticePlannerStats.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sbpl_lattice_planner
)

### Generating Services

### Generating Module File
_generate_module_py(sbpl_lattice_planner
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sbpl_lattice_planner
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(sbpl_lattice_planner_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(sbpl_lattice_planner_generate_messages sbpl_lattice_planner_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/Navigation/navigation_experimental-kinetic-devel/sbpl_lattice_planner/msg/SBPLLatticePlannerStats.msg" NAME_WE)
add_dependencies(sbpl_lattice_planner_generate_messages_py _sbpl_lattice_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sbpl_lattice_planner_genpy)
add_dependencies(sbpl_lattice_planner_genpy sbpl_lattice_planner_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sbpl_lattice_planner_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sbpl_lattice_planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sbpl_lattice_planner
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(sbpl_lattice_planner_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sbpl_lattice_planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sbpl_lattice_planner
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(sbpl_lattice_planner_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sbpl_lattice_planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sbpl_lattice_planner
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(sbpl_lattice_planner_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sbpl_lattice_planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sbpl_lattice_planner
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(sbpl_lattice_planner_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sbpl_lattice_planner)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sbpl_lattice_planner\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sbpl_lattice_planner
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(sbpl_lattice_planner_generate_messages_py geometry_msgs_generate_messages_py)
endif()
