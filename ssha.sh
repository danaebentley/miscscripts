#!/bin/bash
#script for ssh'ing into a robot or server with the -A flag automatically added
#syntax to run is ./ssha.sh xx-yy 
#where xx is 18 or 22 depending on robot type
#and yy is the robot's assigned number

ssh administrator@robot-ph-cpe$1 -A
