#!/bin/bash
# To use enter epoch date after invoking script
# e.g. ./epochange.sh 1544701819


epochdate=$1
hrdate=$(date -d @$1)

echo 
echo "Epoch time of $1 converts to $hrdate"
echo
