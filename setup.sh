#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root / with sudo!" 
   exit 1
fi
apt update --yes
apt dist-upgrade --yes
apt upgrade --yes
apt install --yes git python3 python3-pip python3-requests python3-http-parser python3-dev libpython-dev libqtgui4 libqt4-test libgstreamer1.0-0 libjpeg62-turbo-dev python3-http-parser screen
echo "############### BASE DEPENDENCIES DONE - CHECK FOR ERRORS ###############" 
apt --yes install python3-opencv
echo "############### OPENCV DONE - CHECK FOR ERRORS ###############" 
apt autoremove --yes
apt clean
echo "############### Check our GitHub for alternate install instructions if you error above. ###############" 
echo "############### FULLY COMPLETE - CHECK FOR ERRORS ###############" 
exit
