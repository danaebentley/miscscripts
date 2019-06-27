#!/bin/bash

CRASHES="/var/crashes"

# A script to check if the /var/crashes/ directory has been created
# on server place this in the home dir, then in the .profile file add
# ./crashes
# will run on startup

if [ -d "$CRASHES" ]
then
  echo
  echo
  echo "Crashes folder exists"
  echo
  echo
else
   echo
   echo
   echo "Crashes folder does not exist"
   echo
   echo
fi