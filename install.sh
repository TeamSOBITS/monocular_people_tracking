#!/bin/bash

echo "╔══╣ Install: People Tracking (STARTING) ╠══╗"


# Get current directory
DIR=`pwd`

# Download dependencies
sudo apt-get install -y \
    ros-$ROS_DISTRO-cv-bridge \
    ros-$ROS_DISTRO-tf \
    ros-$ROS_DISTRO-tf-conversions \
    ros-$ROS_DISTRO-image-transport \
    ros-$ROS_DISTRO-message-filters \
    ros-$ROS_DISTRO-sensor-msgs \
    ros-$ROS_DISTRO-visualization-msgs \
    ros-$ROS_DISTRO-usb-cam \
    ros-$ROS_DISTRO-image-view

# Clone required repositories
cd $DIR/../
git clone https://github.com/TeamSOBITS/ccf_person_identification.git
cd ccf_person_identification/
bash install.sh

cd $DIR/../
git clone https://github.com/TeamSOBITS/lightweight_human_pose_estimation.git
cd lightweight_human_pose_estimation/
bash install.sh

# Return to the original directory
cd $DIR


echo "╚══╣ Install: People Tracking (FINISHED) ╠══╝"
