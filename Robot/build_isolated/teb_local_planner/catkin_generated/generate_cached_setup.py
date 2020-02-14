# -*- coding: utf-8 -*-
from __future__ import print_function
import argparse
import os
import stat
import sys

# find the import for catkin's python package - either from source space or from an installed underlay
if os.path.exists(os.path.join('/opt/ros/kinetic/share/catkin/cmake', 'catkinConfig.cmake.in')):
    sys.path.insert(0, os.path.join('/opt/ros/kinetic/share/catkin/cmake', '..', 'python'))
try:
    from catkin.environment_cache import generate_environment_script
except ImportError:
    # search for catkin package in all workspaces and prepend to path
    for workspace in "/home/kalana/Xavier/Robot/devel_isolated/sbpl_recovery;/home/kalana/Xavier/Robot/devel_isolated/sbpl_lattice_planner;/home/kalana/Xavier/Robot/devel_isolated/move_base;/home/kalana/Xavier/Robot/devel_isolated/rotate_recovery;/home/kalana/Xavier/Robot/devel_isolated/pose_follower;/home/kalana/Xavier/Robot/devel_isolated/global_planner;/home/kalana/Xavier/Robot/devel_isolated/navfn;/home/kalana/Xavier/Robot/devel_isolated/move_slow_and_clear;/home/kalana/Xavier/Robot/devel_isolated/goal_passer;/home/kalana/Xavier/Robot/devel_isolated/dwa_local_planner;/home/kalana/Xavier/Robot/devel_isolated/clear_costmap_recovery;/home/kalana/Xavier/Robot/devel_isolated/carrot_planner;/home/kalana/Xavier/Robot/devel_isolated/assisted_teleop;/home/kalana/Xavier/Robot/devel_isolated/base_local_planner;/home/kalana/Xavier/Robot/devel_isolated/nav_core;/home/kalana/Xavier/Robot/devel_isolated/explore_lite;/home/kalana/Xavier/Robot/devel_isolated/costmap_2d;/home/kalana/Xavier/Robot/devel_isolated/voxel_grid;/home/kalana/Xavier/Robot/devel_isolated/simple_navigation_goals;/home/kalana/Xavier/Robot/devel_isolated/robot_pose_ekf;/home/kalana/Xavier/Robot/devel_isolated/rgbd_launch;/home/kalana/Xavier/Robot/devel_isolated/pose_base_controller;/home/kalana/Xavier/Robot/devel_isolated/octomap_server;/home/kalana/Xavier/Robot/devel_isolated/octomap_rviz_plugins;/home/kalana/Xavier/Robot/devel_isolated/octomap_ros;/home/kalana/Xavier/Robot/devel_isolated/octomap_msgs;/home/kalana/Xavier/Robot/devel_isolated/node_manager_fkie;/home/kalana/Xavier/Robot/devel_isolated/navigation_experimental;/home/kalana/Xavier/Robot/devel_isolated/navigation;/home/kalana/Xavier/Robot/devel_isolated/my_robot_navigation;/home/kalana/Xavier/Robot/devel_isolated/my_robot_config;/home/kalana/Xavier/Robot/devel_isolated/multirobot_map_merge;/home/kalana/Xavier/Robot/devel_isolated/master_sync_fkie;/home/kalana/Xavier/Robot/devel_isolated/master_discovery_fkie;/home/kalana/Xavier/Robot/devel_isolated/default_cfg_fkie;/home/kalana/Xavier/Robot/devel_isolated/multimaster_msgs_fkie;/home/kalana/Xavier/Robot/devel_isolated/multimaster_fkie;/home/kalana/Xavier/Robot/devel_isolated/multi_robot_exploration;/home/kalana/Xavier/Robot/devel_isolated/amcl;/home/kalana/Xavier/Robot/devel_isolated/map_server;/home/kalana/Xavier/Robot/devel_isolated/kobuki_testsuite;/home/kalana/Xavier/Robot/devel_isolated/kobuki_node;/home/kalana/Xavier/Robot/devel_isolated/kobuki_safety_controller;/home/kalana/Xavier/Robot/devel_isolated/kobuki_rapps;/home/kalana/Xavier/Robot/devel_isolated/kobuki_random_walker;/home/kalana/Xavier/Robot/devel_isolated/kobuki_keyop;/home/kalana/Xavier/Robot/devel_isolated/kobuki_controller_tutorial;/home/kalana/Xavier/Robot/devel_isolated/kobuki_bumper2pc;/home/kalana/Xavier/Robot/devel_isolated/kobuki_auto_docking;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs;/home/kalana/Xavier/Robot/devel_isolated/kobuki_ftdi;/home/kalana/Xavier/Robot/devel_isolated/kobuki_driver;/home/kalana/Xavier/Robot/devel_isolated/kobuki_dock_drive;/home/kalana/Xavier/Robot/devel_isolated/kobuki_description;/home/kalana/Xavier/Robot/devel_isolated/kobuki_core;/home/kalana/Xavier/Robot/devel_isolated/kobuki_capabilities;/home/kalana/Xavier/Robot/devel_isolated/kobuki;/home/kalana/Xavier/Robot/devel_isolated/freenect_stack;/home/kalana/Xavier/Robot/devel_isolated/freenect_launch;/home/kalana/Xavier/Robot/devel_isolated/freenect_camera;/home/kalana/Xavier/Robot/devel_isolated/fake_localization;/opt/ros/kinetic".split(';'):
        python_path = os.path.join(workspace, 'lib/python2.7/dist-packages')
        if os.path.isdir(os.path.join(python_path, 'catkin')):
            sys.path.insert(0, python_path)
            break
    from catkin.environment_cache import generate_environment_script

code = generate_environment_script('/home/kalana/Xavier/Robot/devel_isolated/teb_local_planner/env.sh')

output_filename = '/home/kalana/Xavier/Robot/build_isolated/teb_local_planner/catkin_generated/setup_cached.sh'
with open(output_filename, 'w') as f:
    #print('Generate script for cached setup "%s"' % output_filename)
    f.write('\n'.join(code))

mode = os.stat(output_filename).st_mode
os.chmod(output_filename, mode | stat.S_IXUSR)
