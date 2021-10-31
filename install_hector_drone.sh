#!/bin/bash

echo ===== INSTALANDO PACOTES BASICOS =====
cd ~/catkin_ws/src
git clone https://github.com/ros-geographic-info/unique_identifier.git
git clone https://github.com/ros-geographic-info/geographic_info
cd ~/catkin_ws
catkin_make

echo ===== CLONANDO REPOSITORIO DO DRONE HECTOR =====

cd ~/catkin_ws/src
git clone https://github.com/RAFALAMAO/hector_quadrotor_noetic.git
cd ~/catkin_ws
catkin_make
