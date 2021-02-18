
FROM ros:kinetic

# install ros packages
# Change the PAckages to the Support-packages you need!
RUN apt-get update && apt-get install -y \
      ros-${ROS_DISTRO}-abb \
      ros-${ROS_DISTRO}-universal-robot && \
    rm -rf /var/lib/apt/lists/*

# launch ros package
CMD ["ros2", "launch", "demo_nodes_cpp", "talker_listener.launch.py"]