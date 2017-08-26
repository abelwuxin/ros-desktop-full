# This is an auto generated Dockerfile for ros:desktop-full
# generated from docker_images/create_ros_image.Dockerfile.em
FROM osrf/ros:indigo-desktop-trusty

# install ros packages
RUN apt-get update && apt-get install -y \
    ros-indigo-desktop-full=1.1.5-0* \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y \
    ros-indigo-ros-tutorials \
    ros-indigo-common-tutorials \
    ros-indigo-control-toolbox* \
    ros-indigo-navigation* \
    ros-indigo-csm* \
    software-properties-common \
    && rm -rf /var/lib/apt/lists/

RUN add-apt-repository -y ppa:ubuntu-toolchain-r/test \
    && apt-get update \
    && apt-get install -y \
    gcc-4.9 \
    g++-4.9 \
    && rm -rf /var/lib/apt/lists/
    
