cmake_minimum_required(VERSION 2.8.3)
project(icp_merge)

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

find_package(PCL 1.7 REQUIRED)

include_directories(${catkin_INCLUDE_DIRS})

include_directories(${PCL_INCLUDE_DIRS})
link_directories(${PCL_LIBRARY_DIRS})
add_definitions(${PCL_DEFINITIONS})

add_executable(icp_test src/icp_test.cpp)
target_link_libraries(icp_test ${PCL_LIBRARIES} ${catkin_LIBRARIES})
add_dependencies(icp_test icp_test_generate_messages_cpp)

add_executable(octomap_test src/octomap_icp_merge.cpp)
target_link_libraries(octomap_test ${PCL_LIBRARIES} ${catkin_LIBRARIES})
add_dependencies(octomap_test icp_octomap_generate_messages_cpp)

add_executable(ros_msg_to_pcl src/ros_msg_to_pcl.cpp)
target_link_libraries(ros_msg_to_pcl ${PCL_LIBRARIES} ${catkin_LIBRARIES})
add_dependencies(ros_msg_to_pcl pros_msg_to_pcl_generate_messages_cpp)

add_executable(publish_freiburg_dataset src/publish_freiburg_dataset.cpp)
target_link_libraries(publish_freiburg_dataset ${PCL_LIBRARIES} ${catkin_LIBRARIES})
add_dependencies(publish_freiburg_dataset dataset_generate_messages_cpp)

add_executable(publish_freiburg_dataset_duplicate src/publish_freiburg_dataset_duplicate.cpp)
target_link_libraries(publish_freiburg_dataset_duplicate ${PCL_LIBRARIES} ${catkin_LIBRARIES})
add_dependencies(publish_freiburg_dataset_duplicate dataset_generate_duplicate_messages_cpp)
