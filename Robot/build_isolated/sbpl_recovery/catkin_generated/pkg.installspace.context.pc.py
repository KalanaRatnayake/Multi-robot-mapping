# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;nav_core;sbpl_lattice_planner;pose_follower;costmap_2d;pluginlib;base_local_planner".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lsbpl_recovery".split(';') if "-lsbpl_recovery" != "" else []
PROJECT_NAME = "sbpl_recovery"
PROJECT_SPACE_DIR = "/home/kalana/Xavier/Robot/install_isolated"
PROJECT_VERSION = "0.2.0"