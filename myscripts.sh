#/!/bash

Blue='\033[1;34m'
Yellow='\033[1;33m'
NC='\033[0m'

echo
echo -e "${Blue}These are the scripts available on this machine${NC}"
echo
echo -e "${Yellow}My scripts${NC}"
echo
yourfilenames=`ls ~/miscscripts/*.sh`
for eachfile in $yourfilenames
do
  echo $eachfile
done
echo
# echo -e "${Yellow}My scripts in development${NC}" 
# yourfilesindev=`ls ~/miscscripts/*`
# for eachdevfile in $yourfilesindev
# do
#   echo $eachdevfile
# done
# echo
echo -e "${Yellow}API scripts${NC}"
echo
restfilenames=`ls ~/nimbus_rest_interface/scripts/*`
for eachrestfile in $restfilenames
do
   echo $eachrestfile
done
echo
echo -e "${Yellow}Test Eng scripts${NC}"
echo
tefilenames=`ls ~/cpr_test_eng_tools/*`
for eachtefile in $tefilenames
do
   echo $eachtefile
done
echo
# echo -e "${Yellow}Jason Mercer's rviz script${NC}"
# echo
# echo "/bin/qqq"
# echo


