# CMake generated Testfile for 
# Source directory: /home/kalana/Xavier/Robot/src/explore-merge/src/m-explore/explore
# Build directory: /home/kalana/Xavier/Robot/build_isolated/explore_lite
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_explore_lite_roslaunch-check_launch "/home/kalana/Xavier/Robot/build_isolated/explore_lite/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/kalana/Xavier/Robot/build_isolated/explore_lite/test_results/explore_lite/roslaunch-check_launch.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/kalana/Xavier/Robot/build_isolated/explore_lite/test_results/explore_lite" "/opt/ros/kinetic/share/roslaunch/cmake/../scripts/roslaunch-check -o '/home/kalana/Xavier/Robot/build_isolated/explore_lite/test_results/explore_lite/roslaunch-check_launch.xml' '/home/kalana/Xavier/Robot/src/explore-merge/src/m-explore/explore/launch' ")
subdirs(gtest)
