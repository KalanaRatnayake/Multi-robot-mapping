# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/include/eigen3".split(';') if "${prefix}/include;/usr/include/eigen3" != "" else []
PROJECT_CATKIN_DEPENDS = "tf;costmap_2d;roscpp;roslib;geometry_msgs;move_base_msgs;actionlib;message_filters;base_local_planner;angles;pluginlib;sensor_msgs;filters".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-llaser_scan_filters".split(';') if "-llaser_scan_filters" != "" else []
PROJECT_NAME = "assisted_teleop"
PROJECT_SPACE_DIR = "/home/kalana/Xavier/Robot/install_isolated"
PROJECT_VERSION = "0.2.0"
