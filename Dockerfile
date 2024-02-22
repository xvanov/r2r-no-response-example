#FROM arm64v8/ros:humble-ros-base-jammy
FROM ros:humble-ros-base-jammy

SHELL ["/bin/bash", "-c"]

# build demo ROS 2 nodes
RUN apt update && apt install -y \
        ros-$ROS_DISTRO-demo-nodes-cpp

# install tools
RUN DEBIAN_FRONTEND=noninteractive apt-get update -y && \
    apt-get install -y curl \
    iproute2 \
    iputils-ping \
    vim && \
    rm -rf /var/lib/apt/lists/*


# install husarnet
RUN curl -s https://install.husarnet.com/install.sh | bash

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]   
CMD ["bash"]
