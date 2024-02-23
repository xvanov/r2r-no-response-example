# Start

Given two devices we can communicate via ros2 between them over husarnet with ros2 router handling the dds communication and filtering. 

On both devices setup `.env` based on `.env.template` with a `JOIN_CODE`: from husarnet. 

On device 1:
```
source opt/ros/humble/setup.bash
ros2 run demo_nodes_cpp add_two_ints_server
```

On device 2:
```
source opt/ros/humble/setup.bash
ros2 run demo_nodes_cpp add_two_ints_client
```

# Issue with service calls

Currently something is wrong with this config, since service call requests give no responses back to the requester device. 


# Concepts to know before 
- Husarnet: peer-to-peer VPN that allows devices to connect over the interent as if they were on the same local network
- IPC: inter-process communication, a set of mechanisms to ensure efficient data exchange
- Shared Memory: A type of IPC that allows multiple processes to access the same portion of memory without copying it

# What this config does



# Prerequisites



# Husarnet docker configuration

# Setup if needed in docker
husarnet:
husarnet join \
fc94:b01d:1803:8dd8:b293:5c7d:7639:932a/JOINCODE \
rpi

talker:
sudo apt-get update
sudo apt-get install ros-galactic-demo-nodes-cpp
. /opt/ros/galactic/setup.bash
ros2 run demo_nodes_cpp talker

run in background
apt-get install screen


# More resources:
- https://github.com/husarnet/husarnet-ros2router
- https://github.com/DominikN/husarnet-ros2-bridge-lan
