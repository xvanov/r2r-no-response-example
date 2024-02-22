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
fc94:b01d:1803:8dd8:b293:5c7d:7639:932a/KYWgEEvyuzWC92dLJtMbKi \
rpi

talker:
sudo apt-get update
sudo apt-get install ros-galactic-demo-nodes-cpp
. /opt/ros/galactic/setup.bash
ros2 run demo_nodes_cpp talker

run in backgroun
apt-get install screen

