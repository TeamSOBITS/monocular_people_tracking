#!/bin/bash

echo "╔══╣ Install: People Tracking (STARTING) ╠══╗"


# Get current directory
DIR=`pwd`

# Download dependencies
sudo apt-get install -y \
    ros-$ROS_DISTRO-usb-cam \
    ros-$ROS_DISTRO-image-view


# Return to the original directory
cd $DIR


echo "╚══╣ Install: People Tracking (FINISHED) ╠══╝"
