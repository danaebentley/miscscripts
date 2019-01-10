#!/bin/bash

echo "Enter file path to copy to server:"
read enteredpath

echo "Copying file"
scp $enteredpath administrator@dev-vm-cambridge-nimbus-02:/var/tmp/
echo "File copied"
echo "Good bye"

