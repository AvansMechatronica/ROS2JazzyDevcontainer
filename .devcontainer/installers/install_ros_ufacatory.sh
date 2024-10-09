#!/bin/bash -e

WORKSPACE_DIR='/home/developer/workspace/'


cd $WORKSPACE_DIR/src

# DO NOT omit "--recursive"，or the source code of dependent submodule will not be downloaded.
# Pay attention to the use of the -b parameter command branch, $ROS_DISTRO indicates the currently activated ROS version, if the ROS environment is not activated, you need to customize the specified branch (foxy/galactic/humble)
git clone https://github.com/xArm-Developer/xarm_ros2.git --recursive -b $ROS_DISTRO

cd $WORKSPACE_DIR/src/xarm_ros2

git pull
git submodule sync
git submodule update --init --remote

cd $WORKSPACE_DIR
rosdep update
rosdep install --from-paths . --ignore-src --rosdistro $ROS_DISTRO -y

