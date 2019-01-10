#!/bin/bash
echo "System report for $(uname -n)"
echo ""
echo Memory: $(free -h | awk 'NR==2{print $2" total"}'), $(free -h | awk 'NR==2{print $4" available"}')
echo Disk: $(df -h /dev/sda1 | awk 'NR==2{print $3" used"}'), $(df -h /dev/sda1 | awk 'NR==2{print $4" available"}')

