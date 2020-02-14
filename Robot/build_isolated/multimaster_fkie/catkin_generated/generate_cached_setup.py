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
    for workspace in "/home/kalana/Xavier/Robot/devel_isolated/multi_robot_exploration;/home/kalana/Xavier/Robot/devel_isolated/amcl;/home/kalana/Xavier/Robot/devel_isolated/map_server;/home/kalana/Xavier/Robot/devel_isolated/kobuki_testsuite;/home/kalana/Xavier/Robot/devel_isolated/kobuki_node;/home/kalana/Xavier/Robot/devel_isolated/kobuki_safety_controller;/home/kalana/Xavier/Robot/devel_isolated/kobuki_rapps;/home/kalana/Xavier/Robot/devel_isolated/kobuki_random_walker;/home/kalana/Xavier/Robot/devel_isolated/kobuki_keyop;/home/kalana/Xavier/Robot/devel_isolated/kobuki_controller_tutorial;/home/kalana/Xavier/Robot/devel_isolated/kobuki_bumper2pc;/home/kalana/Xavier/Robot/devel_isolated/kobuki_auto_docking;/home/kalana/Xavier/Robot/devel_isolated/kobuki_msgs;/home/kalana/Xavier/Robot/devel_isolated/kobuki_ftdi;/home/kalana/Xavier/Robot/devel_isolated/kobuki_driver;/home/kalana/Xavier/Robot/devel_isolated/kobuki_dock_drive;/home/kalana/Xavier/Robot/devel_isolated/kobuki_description;/home/kalana/Xavier/Robot/devel_isolated/kobuki_core;/home/kalana/Xavier/Robot/devel_isolated/kobuki_capabilities;/home/kalana/Xavier/Robot/devel_isolated/kobuki;/home/kalana/Xavier/Robot/devel_isolated/freenect_stack;/home/kalana/Xavier/Robot/devel_isolated/freenect_launch;/home/kalana/Xavier/Robot/devel_isolated/freenect_camera;/home/kalana/Xavier/Robot/devel_isolated/fake_localization;/opt/ros/kinetic".split(';'):
        python_path = os.path.join(workspace, 'lib/python2.7/dist-packages')
        if os.path.isdir(os.path.join(python_path, 'catkin')):
            sys.path.insert(0, python_path)
            break
    from catkin.environment_cache import generate_environment_script

code = generate_environment_script('/home/kalana/Xavier/Robot/devel_isolated/multimaster_fkie/env.sh')

output_filename = '/home/kalana/Xavier/Robot/build_isolated/multimaster_fkie/catkin_generated/setup_cached.sh'
with open(output_filename, 'w') as f:
    #print('Generate script for cached setup "%s"' % output_filename)
    f.write('\n'.join(code))

mode = os.stat(output_filename).st_mode
os.chmod(output_filename, mode | stat.S_IXUSR)
