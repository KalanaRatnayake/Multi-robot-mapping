# CMake generated Testfile for 
# Source directory: /home/kalana/Xavier/Robot/src/Navigation_setup/navigation-kinetic-devel/clear_costmap_recovery
# Build directory: /home/kalana/Xavier/Robot/build_isolated/clear_costmap_recovery
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_clear_costmap_recovery_rostest_test_clear_tests.launch "/home/kalana/Xavier/Robot/build_isolated/clear_costmap_recovery/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/kalana/Xavier/Robot/build_isolated/clear_costmap_recovery/test_results/clear_costmap_recovery/rostest-test_clear_tests.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/kalana/Xavier/Robot/src/Navigation_setup/navigation-kinetic-devel/clear_costmap_recovery --package=clear_costmap_recovery --results-filename test_clear_tests.xml --results-base-dir \"/home/kalana/Xavier/Robot/build_isolated/clear_costmap_recovery/test_results\" /home/kalana/Xavier/Robot/src/Navigation_setup/navigation-kinetic-devel/clear_costmap_recovery/test/clear_tests.launch ")
subdirs(gtest)
