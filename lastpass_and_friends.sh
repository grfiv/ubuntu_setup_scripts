#!/usr/bin/env  bash

# last-pass password vault
echo "Install last-pass per website instructions"
open_url https://lastpass.com/lplinux.php
pause 

# PIA: private internet access VPN
echo "Install pia per website instructions"
open_url https://www.privateinternetaccess.com/forum/discussion/18003/openvpn-step-by-step-setups-for-various-debian-based-linux-oss-with-videos-ubuntu-mint-debian
open_url https://www.privateinternetaccess.com/pages/client-support/
pause

# remindor is the app that sets an alarm
echo "remindor isn't setup because the ppa gave me problems"
pause

echo $'\n audio-recorder'
echo "#################################################################"
sudo apt-get -y install audio-recorder
pause

echo $'\n imagemagick'
echo "#################################################################"
sudo apt-get -y install imagemagick
pause

echo $'\n no ping'
echo "#################################################################"
cp ../noping.sh ~/
chmod +x ~/noping.sh
echo "the noping.sh script disables ping response for security; must be run every time you logon"
pause
