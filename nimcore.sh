#~/bin/bash
# scp nimbus-core log from stable-01 server without logging into server
# this will pull the file into the Documents directory on the local machine

# Start prompt
echo "Copying nimbus core log from the stable-01 server."
echo

# copy file
scp administrator@dev-vm-test-stable-01:/var/log/supervisor/nimbus-core-stdout.log ~/Documents/

# confirm completion of download
echo
echo "Nimbus core log has been downloaded to the Documents directory."
echo " Good-bye."
