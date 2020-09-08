#!/bin/bash
#script to ping 3 times to a hostname on tinc

echo "This will join a server tinc to ping a robot 3 times"
read -p "Server: " hostname1
read -p "Robot: " hostname2


sudo join_tinc join -r $hostname1

export ROS_MASTER_URI=http://$hostname1:11311

ping -c 3 $hostname2.local

