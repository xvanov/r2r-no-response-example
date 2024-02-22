#!/bin/bash
set -e

#sudo husarnet start
source /opt/ros/$ROS_DISTRO/setup.bash

exec "$@"
