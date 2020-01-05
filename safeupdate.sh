#!/bin/bash
# Safe Ubuntu  update process from command line

sudo apt update
echo "..........."
echo "Update done"
echo "..........."
sleep 2
sudo apt upgrade
echo "............"
echo "Upgrade done"
echo "............"
sleep 2
sudo apt dist-upgrade
echo "................."
echo "Dist-upgrade done"
echo "................."
sleep 2
echo "................."
echo "Don't forget to autoremove, autoclean, and sudo reboot"
echo "Good-bye!"
echo "............................"
sleep 2
