#!/bin/bash

echo "╔══╣ Install: People Tracking (STARTING) ╠══╗"


# Get current directory
DIR=`pwd`

# Download dependencies
sudo apt-get install -y \
    ros-$ROS_DISTRO-usb-cam \
    ros-$ROS_DISTRO-image-view

# Clone required repositories
cd ../
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
