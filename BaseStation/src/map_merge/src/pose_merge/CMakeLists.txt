cmake_minimum_required(VERSION 2.8.3)
project(pose_merge)

find_package(catkin REQUIRED COMPONENTS
  pcl_conversions
  pcl_ros
  roscpp
  sensor_msgs
  geometry_msgs
  octomap_msgs
  octomap_ros
)

catkin_package(
  CATKIN_DEPENDS octomap_ros
)

include_directories(
  ${catkin_INCLUDE_DIRS}
)

add_executable(octomap_msg_reader src/cpp/octomap_msg_reader.cpp)
target_link_libraries(octomap_msg_reader ${catkin_LIBRARIES})
add_dependencies(octomap_msg_reader map_merge_generate_messages_cpp)

add_executable(publish_octomap src/cpp/publish_octomap.cpp)
target_link_libraries(publish_octomap ${catkin_LIBRARIES})
add_dependencies(publish_octomap map_merge_generate_messages_cpp)

add_executable(color_octomap_saver src/cpp/color_octomap_saver.cpp)
target_link_libraries(color_octomap_saver ${catkin_LIBRARIES})
add_dependencies(color_octomap_saver map_merge_generate_messages_cpp)

add_executable(transform_live_octomap src/cpp/transform_live_octomap.cpp)
target_link_libraries(transform_live_octomap ${catkin_LIBRARIES})
add_dependencies(transform_live_octomap map_merge_generate_messages_cpp)

add_executable(multirobot_color_merge src/cpp/multirobot_color_merge.cpp)
target_link_libraries(multirobot_color_merge ${catkin_LIBRARIES})
add_dependencies(multirobot_color_merge map_merge_generate_messages_cpp)

add_executable(multirobot_binary_merge src/cpp/multirobot_binary_merge.cpp)
target_link_libraries(multirobot_binary_merge ${catkin_LIBRARIES})
add_dependencies(multirobot_binary_merge map_merge_generate_messages_cpp)

add_executable(color_merge_test src/cpp/color_merge_test.cpp)
target_link_libraries(color_merge_test ${catkin_LIBRARIES})
add_dependencies(color_merge_test map_merge_generate_messages_cpp)

add_executable(publish_binary_map_file src/cpp/publish_binary_map_file.cpp)
target_link_libraries(publish_binary_map_file ${catkin_LIBRARIES})
add_dependencies(publish_binary_map_file map_merge_generate_messages_cpp)

#add_executable(publish_color_map_file src/cpp/publish_color_map_file.cpp)
#target_link_libraries(publish_color_map_file ${catkin_LIBRARIES})
#add_dependencies(publish_color_map_file map_merge_generate_messages_cpp)

add_executable(sub_pub_test src/cpp/sub_pub_test.cpp)
target_link_libraries(sub_pub_test ${catkin_LIBRARIES})
add_dependencies(sub_pub_test map_merge_generate_messages_cpp)

add_executable(multirobot_live_color_merge src/cpp/multirobot_live_color_merge.cpp)
target_link_libraries(multirobot_live_color_merge ${catkin_LIBRARIES})
add_dependencies(multirobot_live_color_merge map_merge_generate_messages_cpp)


