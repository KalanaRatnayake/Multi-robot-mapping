# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "kobuki_msgs: 25 messages, 0 services")

set(MSG_I_FLAGS "-Ikobuki_msgs:/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg;-Ikobuki_msgs:/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(kobuki_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionGoal.msg" NAME_WE)
add_custom_target(_kobuki_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_msgs" "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionGoal.msg" "actionlib_msgs/GoalID:kobuki_msgs/AutoDockingGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ScanAngle.msg" NAME_WE)
add_custom_target(_kobuki_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_msgs" "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ScanAngle.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/DigitalOutput.msg" NAME_WE)
add_custom_target(_kobuki_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_msgs" "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/DigitalOutput.msg" ""
)

get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/PowerSystemEvent.msg" NAME_WE)
add_custom_target(_kobuki_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_msgs" "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/PowerSystemEvent.msg" ""
)

get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/WheelDropEvent.msg" NAME_WE)
add_custom_target(_kobuki_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_msgs" "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/WheelDropEvent.msg" ""
)

get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/MotorPower.msg" NAME_WE)
add_custom_target(_kobuki_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_msgs" "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/MotorPower.msg" ""
)

get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/VersionInfo.msg" NAME_WE)
add_custom_target(_kobuki_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_msgs" "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/VersionInfo.msg" ""
)

get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/Sound.msg" NAME_WE)
add_custom_target(_kobuki_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_msgs" "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/Sound.msg" ""
)

get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/DockInfraRed.msg" NAME_WE)
add_custom_target(_kobuki_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_msgs" "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/DockInfraRed.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/SensorState.msg" NAME_WE)
add_custom_target(_kobuki_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_msgs" "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/SensorState.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingResult.msg" NAME_WE)
add_custom_target(_kobuki_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_msgs" "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingResult.msg" ""
)

get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionFeedback.msg" NAME_WE)
add_custom_target(_kobuki_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_msgs" "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionFeedback.msg" "actionlib_msgs/GoalID:kobuki_msgs/AutoDockingFeedback:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/KeyboardInput.msg" NAME_WE)
add_custom_target(_kobuki_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_msgs" "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/KeyboardInput.msg" ""
)

get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/BumperEvent.msg" NAME_WE)
add_custom_target(_kobuki_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_msgs" "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/BumperEvent.msg" ""
)

get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionResult.msg" NAME_WE)
add_custom_target(_kobuki_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_msgs" "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionResult.msg" "actionlib_msgs/GoalID:kobuki_msgs/AutoDockingResult:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ExternalPower.msg" NAME_WE)
add_custom_target(_kobuki_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_msgs" "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ExternalPower.msg" ""
)

get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/DigitalInputEvent.msg" NAME_WE)
add_custom_target(_kobuki_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_msgs" "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/DigitalInputEvent.msg" ""
)

get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/Led.msg" NAME_WE)
add_custom_target(_kobuki_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_msgs" "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/Led.msg" ""
)

get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/RobotStateEvent.msg" NAME_WE)
add_custom_target(_kobuki_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_msgs" "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/RobotStateEvent.msg" ""
)

get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingGoal.msg" NAME_WE)
add_custom_target(_kobuki_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_msgs" "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingGoal.msg" ""
)

get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingAction.msg" NAME_WE)
add_custom_target(_kobuki_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_msgs" "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingAction.msg" "kobuki_msgs/AutoDockingFeedback:std_msgs/Header:kobuki_msgs/AutoDockingGoal:kobuki_msgs/AutoDockingResult:kobuki_msgs/AutoDockingActionFeedback:kobuki_msgs/AutoDockingActionGoal:actionlib_msgs/GoalID:kobuki_msgs/AutoDockingActionResult:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ControllerInfo.msg" NAME_WE)
add_custom_target(_kobuki_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_msgs" "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ControllerInfo.msg" ""
)

get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/CliffEvent.msg" NAME_WE)
add_custom_target(_kobuki_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_msgs" "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/CliffEvent.msg" ""
)

get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ButtonEvent.msg" NAME_WE)
add_custom_target(_kobuki_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_msgs" "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ButtonEvent.msg" ""
)

get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingFeedback.msg" NAME_WE)
add_custom_target(_kobuki_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kobuki_msgs" "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingFeedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(kobuki_msgs
  "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_cpp(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ScanAngle.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_cpp(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/DigitalOutput.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_cpp(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/PowerSystemEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_cpp(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/WheelDropEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_cpp(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/MotorPower.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_cpp(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/VersionInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_cpp(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/Sound.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_cpp(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/DockInfraRed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_cpp(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/SensorState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_cpp(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ExternalPower.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_cpp(kobuki_msgs
  "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_cpp(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/CliffEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_cpp(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/BumperEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_cpp(kobuki_msgs
  "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_cpp(kobuki_msgs
  "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_cpp(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/DigitalInputEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_cpp(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/Led.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_cpp(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/RobotStateEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_cpp(kobuki_msgs
  "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_cpp(kobuki_msgs
  "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingAction.msg"
  "${MSG_I_FLAGS}"
  "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingGoal.msg;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingResult.msg;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionFeedback.msg;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_cpp(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ControllerInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_cpp(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/KeyboardInput.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_cpp(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ButtonEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_cpp(kobuki_msgs
  "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(kobuki_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(kobuki_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(kobuki_msgs_generate_messages kobuki_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionGoal.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_cpp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ScanAngle.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_cpp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/DigitalOutput.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_cpp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/PowerSystemEvent.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_cpp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/WheelDropEvent.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_cpp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/MotorPower.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_cpp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/VersionInfo.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_cpp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/Sound.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_cpp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/DockInfraRed.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_cpp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/SensorState.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_cpp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingResult.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_cpp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionFeedback.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_cpp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/KeyboardInput.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_cpp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/BumperEvent.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_cpp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionResult.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_cpp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ExternalPower.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_cpp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/DigitalInputEvent.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_cpp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/Led.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_cpp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/RobotStateEvent.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_cpp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingGoal.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_cpp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingAction.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_cpp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ControllerInfo.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_cpp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/CliffEvent.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_cpp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ButtonEvent.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_cpp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingFeedback.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_cpp _kobuki_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kobuki_msgs_gencpp)
add_dependencies(kobuki_msgs_gencpp kobuki_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kobuki_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(kobuki_msgs
  "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_eus(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ScanAngle.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_eus(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/DigitalOutput.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_eus(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/PowerSystemEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_eus(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/WheelDropEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_eus(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/MotorPower.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_eus(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/VersionInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_eus(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/Sound.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_eus(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/DockInfraRed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_eus(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/SensorState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_eus(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ExternalPower.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_eus(kobuki_msgs
  "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_eus(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/CliffEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_eus(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/BumperEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_eus(kobuki_msgs
  "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_eus(kobuki_msgs
  "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_eus(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/DigitalInputEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_eus(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/Led.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_eus(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/RobotStateEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_eus(kobuki_msgs
  "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_eus(kobuki_msgs
  "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingAction.msg"
  "${MSG_I_FLAGS}"
  "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingGoal.msg;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingResult.msg;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionFeedback.msg;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_eus(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ControllerInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_eus(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/KeyboardInput.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_eus(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ButtonEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_eus(kobuki_msgs
  "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kobuki_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(kobuki_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kobuki_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(kobuki_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(kobuki_msgs_generate_messages kobuki_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionGoal.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_eus _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ScanAngle.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_eus _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/DigitalOutput.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_eus _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/PowerSystemEvent.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_eus _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/WheelDropEvent.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_eus _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/MotorPower.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_eus _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/VersionInfo.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_eus _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/Sound.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_eus _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/DockInfraRed.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_eus _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/SensorState.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_eus _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingResult.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_eus _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionFeedback.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_eus _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/KeyboardInput.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_eus _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/BumperEvent.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_eus _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionResult.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_eus _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ExternalPower.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_eus _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/DigitalInputEvent.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_eus _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/Led.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_eus _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/RobotStateEvent.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_eus _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingGoal.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_eus _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingAction.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_eus _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ControllerInfo.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_eus _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/CliffEvent.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_eus _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ButtonEvent.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_eus _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingFeedback.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_eus _kobuki_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kobuki_msgs_geneus)
add_dependencies(kobuki_msgs_geneus kobuki_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kobuki_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(kobuki_msgs
  "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_lisp(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ScanAngle.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_lisp(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/DigitalOutput.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_lisp(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/PowerSystemEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_lisp(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/WheelDropEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_lisp(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/MotorPower.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_lisp(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/VersionInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_lisp(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/Sound.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_lisp(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/DockInfraRed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_lisp(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/SensorState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_lisp(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ExternalPower.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_lisp(kobuki_msgs
  "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_lisp(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/CliffEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_lisp(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/BumperEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_lisp(kobuki_msgs
  "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_lisp(kobuki_msgs
  "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_lisp(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/DigitalInputEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_lisp(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/Led.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_lisp(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/RobotStateEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_lisp(kobuki_msgs
  "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_lisp(kobuki_msgs
  "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingAction.msg"
  "${MSG_I_FLAGS}"
  "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingGoal.msg;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingResult.msg;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionFeedback.msg;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_lisp(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ControllerInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_lisp(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/KeyboardInput.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_lisp(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ButtonEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_lisp(kobuki_msgs
  "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(kobuki_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(kobuki_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(kobuki_msgs_generate_messages kobuki_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionGoal.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_lisp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ScanAngle.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_lisp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/DigitalOutput.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_lisp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/PowerSystemEvent.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_lisp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/WheelDropEvent.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_lisp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/MotorPower.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_lisp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/VersionInfo.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_lisp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/Sound.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_lisp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/DockInfraRed.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_lisp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/SensorState.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_lisp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingResult.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_lisp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionFeedback.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_lisp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/KeyboardInput.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_lisp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/BumperEvent.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_lisp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionResult.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_lisp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ExternalPower.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_lisp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/DigitalInputEvent.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_lisp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/Led.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_lisp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/RobotStateEvent.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_lisp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingGoal.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_lisp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingAction.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_lisp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ControllerInfo.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_lisp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/CliffEvent.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_lisp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ButtonEvent.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_lisp _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingFeedback.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_lisp _kobuki_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kobuki_msgs_genlisp)
add_dependencies(kobuki_msgs_genlisp kobuki_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kobuki_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(kobuki_msgs
  "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_nodejs(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ScanAngle.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_nodejs(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/DigitalOutput.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_nodejs(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/PowerSystemEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_nodejs(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/WheelDropEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_nodejs(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/MotorPower.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_nodejs(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/VersionInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_nodejs(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/Sound.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_nodejs(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/DockInfraRed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_nodejs(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/SensorState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_nodejs(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ExternalPower.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_nodejs(kobuki_msgs
  "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_nodejs(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/CliffEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_nodejs(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/BumperEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_nodejs(kobuki_msgs
  "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_nodejs(kobuki_msgs
  "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_nodejs(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/DigitalInputEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_nodejs(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/Led.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_nodejs(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/RobotStateEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_nodejs(kobuki_msgs
  "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_nodejs(kobuki_msgs
  "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingAction.msg"
  "${MSG_I_FLAGS}"
  "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingGoal.msg;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingResult.msg;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionFeedback.msg;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_nodejs(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ControllerInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_nodejs(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/KeyboardInput.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_nodejs(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ButtonEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_nodejs(kobuki_msgs
  "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kobuki_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(kobuki_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kobuki_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(kobuki_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(kobuki_msgs_generate_messages kobuki_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionGoal.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_nodejs _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ScanAngle.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_nodejs _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/DigitalOutput.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_nodejs _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/PowerSystemEvent.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_nodejs _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/WheelDropEvent.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_nodejs _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/MotorPower.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_nodejs _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/VersionInfo.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_nodejs _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/Sound.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_nodejs _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/DockInfraRed.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_nodejs _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/SensorState.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_nodejs _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingResult.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_nodejs _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionFeedback.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_nodejs _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/KeyboardInput.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_nodejs _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/BumperEvent.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_nodejs _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionResult.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_nodejs _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ExternalPower.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_nodejs _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/DigitalInputEvent.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_nodejs _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/Led.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_nodejs _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/RobotStateEvent.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_nodejs _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingGoal.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_nodejs _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingAction.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_nodejs _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ControllerInfo.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_nodejs _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/CliffEvent.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_nodejs _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ButtonEvent.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_nodejs _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingFeedback.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_nodejs _kobuki_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kobuki_msgs_gennodejs)
add_dependencies(kobuki_msgs_gennodejs kobuki_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kobuki_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(kobuki_msgs
  "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_py(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ScanAngle.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_py(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/DigitalOutput.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_py(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/PowerSystemEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_py(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/WheelDropEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_py(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/MotorPower.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_py(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/VersionInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_py(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/Sound.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_py(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/DockInfraRed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_py(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/SensorState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_py(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ExternalPower.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_py(kobuki_msgs
  "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_py(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/CliffEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_py(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/BumperEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_py(kobuki_msgs
  "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_py(kobuki_msgs
  "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_py(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/DigitalInputEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_py(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/Led.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_py(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/RobotStateEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_py(kobuki_msgs
  "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_py(kobuki_msgs
  "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingAction.msg"
  "${MSG_I_FLAGS}"
  "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingGoal.msg;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingResult.msg;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionFeedback.msg;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_py(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ControllerInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_py(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/KeyboardInput.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_py(kobuki_msgs
  "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ButtonEvent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_msgs
)
_generate_msg_py(kobuki_msgs
  "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(kobuki_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(kobuki_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(kobuki_msgs_generate_messages kobuki_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionGoal.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_py _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ScanAngle.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_py _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/DigitalOutput.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_py _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/PowerSystemEvent.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_py _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/WheelDropEvent.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_py _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/MotorPower.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_py _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/VersionInfo.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_py _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/Sound.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_py _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/DockInfraRed.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_py _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/SensorState.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_py _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingResult.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_py _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionFeedback.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_py _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/KeyboardInput.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_py _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/BumperEvent.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_py _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingActionResult.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_py _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ExternalPower.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_py _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/DigitalInputEvent.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_py _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/Led.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_py _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/RobotStateEvent.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_py _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingGoal.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_py _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingAction.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_py _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ControllerInfo.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_py _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/CliffEvent.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_py _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/kobuki/kobuki_msgs-kinetic/msg/ButtonEvent.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_py _kobuki_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs/share/kobuki_msgs/msg/AutoDockingFeedback.msg" NAME_WE)
add_dependencies(kobuki_msgs_generate_messages_py _kobuki_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kobuki_msgs_genpy)
add_dependencies(kobuki_msgs_genpy kobuki_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kobuki_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kobuki_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(kobuki_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(kobuki_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kobuki_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kobuki_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(kobuki_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(kobuki_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kobuki_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(kobuki_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(kobuki_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kobuki_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kobuki_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(kobuki_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(kobuki_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kobuki_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(kobuki_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(kobuki_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
