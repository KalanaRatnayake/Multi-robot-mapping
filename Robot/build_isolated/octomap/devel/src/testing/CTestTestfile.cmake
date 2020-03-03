# CMake generated Testfile for 
# Source directory: /home/kalana/Xavier/Robot/src/octomap/octomap/src/testing
# Build directory: /home/kalana/Xavier/Robot/build_isolated/octomap/devel/src/testing
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(MathVector "/home/kalana/Xavier/Robot/src/octomap/octomap/bin/unit_tests" "MathVector")
add_test(MathPose "/home/kalana/Xavier/Robot/src/octomap/octomap/bin/unit_tests" "MathPose")
add_test(InsertRay "/home/kalana/Xavier/Robot/src/octomap/octomap/bin/unit_tests" "InsertRay")
add_test(InsertScan "/home/kalana/Xavier/Robot/src/octomap/octomap/bin/unit_tests" "InsertScan")
add_test(ReadGraph "/home/kalana/Xavier/Robot/src/octomap/octomap/bin/unit_tests" "ReadGraph")
add_test(StampedTree "/home/kalana/Xavier/Robot/src/octomap/octomap/bin/unit_tests" "StampedTree")
add_test(OcTreeKey "/home/kalana/Xavier/Robot/src/octomap/octomap/bin/unit_tests" "OcTreeKey")
add_test(test_scans "/home/kalana/Xavier/Robot/src/octomap/octomap/bin/test_scans" "/home/kalana/Xavier/Robot/src/octomap/octomap/share/data/spherical_scan.graph")
add_test(test_raycasting "/home/kalana/Xavier/Robot/src/octomap/octomap/bin/test_raycasting")
add_test(test_io "/home/kalana/Xavier/Robot/src/octomap/octomap/bin/test_io" "/home/kalana/Xavier/Robot/src/octomap/octomap/share/data/geb079.bt")
add_test(test_pruning "/home/kalana/Xavier/Robot/src/octomap/octomap/bin/test_pruning")
add_test(test_iterators "/home/kalana/Xavier/Robot/src/octomap/octomap/bin/test_iterators" "/home/kalana/Xavier/Robot/src/octomap/octomap/share/data/geb079.bt")
add_test(test_mapcollection "/home/kalana/Xavier/Robot/src/octomap/octomap/bin/test_mapcollection" "/home/kalana/Xavier/Robot/src/octomap/octomap/share/data/mapcoll.txt")
add_test(test_color_tree "/home/kalana/Xavier/Robot/src/octomap/octomap/bin/test_color_tree")
