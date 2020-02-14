# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "multimaster_msgs_fkie: 8 messages, 6 services")

set(MSG_I_FLAGS "-Imultimaster_msgs_fkie:/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(multimaster_msgs_fkie_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/LinkStatesStamped.msg" NAME_WE)
add_custom_target(_multimaster_msgs_fkie_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "multimaster_msgs_fkie" "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/LinkStatesStamped.msg" "multimaster_msgs_fkie/LinkState:std_msgs/Header"
)

get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/ROSMaster.msg" NAME_WE)
add_custom_target(_multimaster_msgs_fkie_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "multimaster_msgs_fkie" "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/ROSMaster.msg" ""
)

get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/LinkState.msg" NAME_WE)
add_custom_target(_multimaster_msgs_fkie_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "multimaster_msgs_fkie" "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/LinkState.msg" ""
)

get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncMasterInfo.msg" NAME_WE)
add_custom_target(_multimaster_msgs_fkie_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "multimaster_msgs_fkie" "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncMasterInfo.msg" "multimaster_msgs_fkie/SyncServiceInfo:multimaster_msgs_fkie/SyncTopicInfo"
)

get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncServiceInfo.msg" NAME_WE)
add_custom_target(_multimaster_msgs_fkie_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "multimaster_msgs_fkie" "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncServiceInfo.msg" ""
)

get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/DiscoverMasters.srv" NAME_WE)
add_custom_target(_multimaster_msgs_fkie_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "multimaster_msgs_fkie" "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/DiscoverMasters.srv" "multimaster_msgs_fkie/ROSMaster"
)

get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/ListNodes.srv" NAME_WE)
add_custom_target(_multimaster_msgs_fkie_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "multimaster_msgs_fkie" "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/ListNodes.srv" ""
)

get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/MasterState.msg" NAME_WE)
add_custom_target(_multimaster_msgs_fkie_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "multimaster_msgs_fkie" "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/MasterState.msg" "multimaster_msgs_fkie/ROSMaster"
)

get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncTopicInfo.msg" NAME_WE)
add_custom_target(_multimaster_msgs_fkie_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "multimaster_msgs_fkie" "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncTopicInfo.msg" ""
)

get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/Task.srv" NAME_WE)
add_custom_target(_multimaster_msgs_fkie_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "multimaster_msgs_fkie" "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/Task.srv" ""
)

get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/LoadLaunch.srv" NAME_WE)
add_custom_target(_multimaster_msgs_fkie_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "multimaster_msgs_fkie" "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/LoadLaunch.srv" ""
)

get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/Capability.msg" NAME_WE)
add_custom_target(_multimaster_msgs_fkie_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "multimaster_msgs_fkie" "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/Capability.msg" ""
)

get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/ListDescription.srv" NAME_WE)
add_custom_target(_multimaster_msgs_fkie_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "multimaster_msgs_fkie" "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/ListDescription.srv" "multimaster_msgs_fkie/Capability"
)

get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/GetSyncInfo.srv" NAME_WE)
add_custom_target(_multimaster_msgs_fkie_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "multimaster_msgs_fkie" "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/GetSyncInfo.srv" "multimaster_msgs_fkie/SyncMasterInfo:multimaster_msgs_fkie/SyncServiceInfo:multimaster_msgs_fkie/SyncTopicInfo"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/LinkStatesStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/LinkState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_msg_cpp(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/ROSMaster.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_msg_cpp(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/LinkState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_msg_cpp(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncMasterInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncServiceInfo.msg;/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncTopicInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_msg_cpp(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncServiceInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_msg_cpp(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/MasterState.msg"
  "${MSG_I_FLAGS}"
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/ROSMaster.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_msg_cpp(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncTopicInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_msg_cpp(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/Capability.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multimaster_msgs_fkie
)

### Generating Services
_generate_srv_cpp(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/GetSyncInfo.srv"
  "${MSG_I_FLAGS}"
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncMasterInfo.msg;/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncServiceInfo.msg;/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncTopicInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_srv_cpp(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/DiscoverMasters.srv"
  "${MSG_I_FLAGS}"
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/ROSMaster.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_srv_cpp(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/Task.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_srv_cpp(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/LoadLaunch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_srv_cpp(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/ListDescription.srv"
  "${MSG_I_FLAGS}"
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/Capability.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_srv_cpp(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/ListNodes.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multimaster_msgs_fkie
)

### Generating Module File
_generate_module_cpp(multimaster_msgs_fkie
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multimaster_msgs_fkie
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(multimaster_msgs_fkie_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(multimaster_msgs_fkie_generate_messages multimaster_msgs_fkie_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/LinkStatesStamped.msg" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_cpp _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/ROSMaster.msg" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_cpp _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/LinkState.msg" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_cpp _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncMasterInfo.msg" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_cpp _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncServiceInfo.msg" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_cpp _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/DiscoverMasters.srv" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_cpp _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/ListNodes.srv" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_cpp _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/MasterState.msg" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_cpp _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncTopicInfo.msg" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_cpp _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/Task.srv" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_cpp _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/LoadLaunch.srv" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_cpp _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/Capability.msg" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_cpp _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/ListDescription.srv" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_cpp _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/GetSyncInfo.srv" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_cpp _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(multimaster_msgs_fkie_gencpp)
add_dependencies(multimaster_msgs_fkie_gencpp multimaster_msgs_fkie_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS multimaster_msgs_fkie_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/LinkStatesStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/LinkState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_msg_eus(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/ROSMaster.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_msg_eus(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/LinkState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_msg_eus(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncMasterInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncServiceInfo.msg;/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncTopicInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_msg_eus(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncServiceInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_msg_eus(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/MasterState.msg"
  "${MSG_I_FLAGS}"
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/ROSMaster.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_msg_eus(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncTopicInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_msg_eus(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/Capability.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multimaster_msgs_fkie
)

### Generating Services
_generate_srv_eus(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/GetSyncInfo.srv"
  "${MSG_I_FLAGS}"
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncMasterInfo.msg;/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncServiceInfo.msg;/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncTopicInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_srv_eus(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/DiscoverMasters.srv"
  "${MSG_I_FLAGS}"
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/ROSMaster.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_srv_eus(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/Task.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_srv_eus(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/LoadLaunch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_srv_eus(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/ListDescription.srv"
  "${MSG_I_FLAGS}"
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/Capability.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_srv_eus(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/ListNodes.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multimaster_msgs_fkie
)

### Generating Module File
_generate_module_eus(multimaster_msgs_fkie
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multimaster_msgs_fkie
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(multimaster_msgs_fkie_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(multimaster_msgs_fkie_generate_messages multimaster_msgs_fkie_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/LinkStatesStamped.msg" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_eus _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/ROSMaster.msg" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_eus _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/LinkState.msg" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_eus _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncMasterInfo.msg" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_eus _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncServiceInfo.msg" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_eus _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/DiscoverMasters.srv" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_eus _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/ListNodes.srv" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_eus _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/MasterState.msg" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_eus _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncTopicInfo.msg" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_eus _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/Task.srv" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_eus _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/LoadLaunch.srv" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_eus _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/Capability.msg" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_eus _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/ListDescription.srv" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_eus _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/GetSyncInfo.srv" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_eus _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(multimaster_msgs_fkie_geneus)
add_dependencies(multimaster_msgs_fkie_geneus multimaster_msgs_fkie_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS multimaster_msgs_fkie_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/LinkStatesStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/LinkState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_msg_lisp(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/ROSMaster.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_msg_lisp(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/LinkState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_msg_lisp(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncMasterInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncServiceInfo.msg;/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncTopicInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_msg_lisp(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncServiceInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_msg_lisp(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/MasterState.msg"
  "${MSG_I_FLAGS}"
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/ROSMaster.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_msg_lisp(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncTopicInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_msg_lisp(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/Capability.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multimaster_msgs_fkie
)

### Generating Services
_generate_srv_lisp(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/GetSyncInfo.srv"
  "${MSG_I_FLAGS}"
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncMasterInfo.msg;/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncServiceInfo.msg;/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncTopicInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_srv_lisp(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/DiscoverMasters.srv"
  "${MSG_I_FLAGS}"
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/ROSMaster.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_srv_lisp(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/Task.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_srv_lisp(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/LoadLaunch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_srv_lisp(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/ListDescription.srv"
  "${MSG_I_FLAGS}"
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/Capability.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_srv_lisp(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/ListNodes.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multimaster_msgs_fkie
)

### Generating Module File
_generate_module_lisp(multimaster_msgs_fkie
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multimaster_msgs_fkie
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(multimaster_msgs_fkie_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(multimaster_msgs_fkie_generate_messages multimaster_msgs_fkie_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/LinkStatesStamped.msg" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_lisp _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/ROSMaster.msg" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_lisp _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/LinkState.msg" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_lisp _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncMasterInfo.msg" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_lisp _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncServiceInfo.msg" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_lisp _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/DiscoverMasters.srv" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_lisp _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/ListNodes.srv" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_lisp _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/MasterState.msg" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_lisp _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncTopicInfo.msg" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_lisp _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/Task.srv" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_lisp _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/LoadLaunch.srv" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_lisp _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/Capability.msg" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_lisp _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/ListDescription.srv" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_lisp _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/GetSyncInfo.srv" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_lisp _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(multimaster_msgs_fkie_genlisp)
add_dependencies(multimaster_msgs_fkie_genlisp multimaster_msgs_fkie_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS multimaster_msgs_fkie_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/LinkStatesStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/LinkState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_msg_nodejs(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/ROSMaster.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_msg_nodejs(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/LinkState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_msg_nodejs(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncMasterInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncServiceInfo.msg;/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncTopicInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_msg_nodejs(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncServiceInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_msg_nodejs(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/MasterState.msg"
  "${MSG_I_FLAGS}"
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/ROSMaster.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_msg_nodejs(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncTopicInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_msg_nodejs(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/Capability.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multimaster_msgs_fkie
)

### Generating Services
_generate_srv_nodejs(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/GetSyncInfo.srv"
  "${MSG_I_FLAGS}"
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncMasterInfo.msg;/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncServiceInfo.msg;/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncTopicInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_srv_nodejs(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/DiscoverMasters.srv"
  "${MSG_I_FLAGS}"
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/ROSMaster.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_srv_nodejs(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/Task.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_srv_nodejs(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/LoadLaunch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_srv_nodejs(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/ListDescription.srv"
  "${MSG_I_FLAGS}"
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/Capability.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_srv_nodejs(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/ListNodes.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multimaster_msgs_fkie
)

### Generating Module File
_generate_module_nodejs(multimaster_msgs_fkie
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multimaster_msgs_fkie
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(multimaster_msgs_fkie_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(multimaster_msgs_fkie_generate_messages multimaster_msgs_fkie_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/LinkStatesStamped.msg" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_nodejs _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/ROSMaster.msg" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_nodejs _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/LinkState.msg" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_nodejs _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncMasterInfo.msg" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_nodejs _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncServiceInfo.msg" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_nodejs _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/DiscoverMasters.srv" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_nodejs _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/ListNodes.srv" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_nodejs _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/MasterState.msg" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_nodejs _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncTopicInfo.msg" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_nodejs _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/Task.srv" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_nodejs _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/LoadLaunch.srv" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_nodejs _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/Capability.msg" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_nodejs _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/ListDescription.srv" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_nodejs _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/GetSyncInfo.srv" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_nodejs _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(multimaster_msgs_fkie_gennodejs)
add_dependencies(multimaster_msgs_fkie_gennodejs multimaster_msgs_fkie_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS multimaster_msgs_fkie_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/LinkStatesStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/LinkState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_msg_py(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/ROSMaster.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_msg_py(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/LinkState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_msg_py(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncMasterInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncServiceInfo.msg;/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncTopicInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_msg_py(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncServiceInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_msg_py(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/MasterState.msg"
  "${MSG_I_FLAGS}"
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/ROSMaster.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_msg_py(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncTopicInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_msg_py(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/Capability.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multimaster_msgs_fkie
)

### Generating Services
_generate_srv_py(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/GetSyncInfo.srv"
  "${MSG_I_FLAGS}"
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncMasterInfo.msg;/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncServiceInfo.msg;/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncTopicInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_srv_py(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/DiscoverMasters.srv"
  "${MSG_I_FLAGS}"
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/ROSMaster.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_srv_py(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/Task.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_srv_py(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/LoadLaunch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_srv_py(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/ListDescription.srv"
  "${MSG_I_FLAGS}"
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/Capability.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multimaster_msgs_fkie
)
_generate_srv_py(multimaster_msgs_fkie
  "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/ListNodes.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multimaster_msgs_fkie
)

### Generating Module File
_generate_module_py(multimaster_msgs_fkie
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multimaster_msgs_fkie
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(multimaster_msgs_fkie_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(multimaster_msgs_fkie_generate_messages multimaster_msgs_fkie_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/LinkStatesStamped.msg" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_py _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/ROSMaster.msg" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_py _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/LinkState.msg" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_py _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncMasterInfo.msg" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_py _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncServiceInfo.msg" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_py _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/DiscoverMasters.srv" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_py _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/ListNodes.srv" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_py _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/MasterState.msg" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_py _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/SyncTopicInfo.msg" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_py _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/Task.srv" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_py _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/LoadLaunch.srv" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_py _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/msg/Capability.msg" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_py _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/ListDescription.srv" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_py _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kalana/Xavier/Robot/src/multimaster_fkie/src/multimaster_msgs_fkie/srv/GetSyncInfo.srv" NAME_WE)
add_dependencies(multimaster_msgs_fkie_generate_messages_py _multimaster_msgs_fkie_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(multimaster_msgs_fkie_genpy)
add_dependencies(multimaster_msgs_fkie_genpy multimaster_msgs_fkie_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS multimaster_msgs_fkie_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multimaster_msgs_fkie)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multimaster_msgs_fkie
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(multimaster_msgs_fkie_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multimaster_msgs_fkie)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multimaster_msgs_fkie
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(multimaster_msgs_fkie_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multimaster_msgs_fkie)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multimaster_msgs_fkie
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(multimaster_msgs_fkie_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multimaster_msgs_fkie)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multimaster_msgs_fkie
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(multimaster_msgs_fkie_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multimaster_msgs_fkie)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multimaster_msgs_fkie\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multimaster_msgs_fkie
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(multimaster_msgs_fkie_generate_messages_py std_msgs_generate_messages_py)
endif()
