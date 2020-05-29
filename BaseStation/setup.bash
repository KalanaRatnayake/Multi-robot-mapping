#!/usr/bin/env bash

source /opt/ros/kinetic/setup.bash

source devel/setup.bash

export ROS_MASTER_URI=http://192.168.0.152:11311

sudo sh -c "echo 0 >/proc/sys/net/ipv4/icmp_echo_ignore_broadcasts"

sudo service procps restart