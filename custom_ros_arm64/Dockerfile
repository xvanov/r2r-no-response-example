FROM osrf/ros:galactic-desktop

SHELL ["/bin/bash", "-c"]

# build demo ROS 2 nodes
RUN apt update && apt install -y \
        ros-$ROS_DISTRO-demo-nodes-cpp

COPY husarnet2/custom_ros2/ros2_ws ros2_ws/
COPY husarnet2/custom_ros2/ros_entrypoint.sh /

# build custom ROS 2 nodes
RUN cd ros2_ws && \
    source /opt/ros/galactic/setup.bash && \
    colcon build

ENTRYPOINT ["/ros_entrypoint.sh"]   
CMD ["bash"]
