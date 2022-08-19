#!/bin/bash
echo "Run simulation full system"

echo "Launching: system.launch"

temp=$( realpath "$0"  )
parentdir="$(dirname $(dirname $(dirname "$temp")))"
echo ‘The absolute path is’ $parentdir

source $parentdir/devel/setup.bash

gnome-terminal -- roslaunch nodelet_rosbag system.launch &

echo "Waiting 4s left"

sleep 4

echo "Launching: skymul_realsense_nodelet.launch"

gnome-terminal -- roslaunch nodelet_rosbag skymul_realsense_nodelet.launch 