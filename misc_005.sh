#!/usr/bin/env  bash

echo $'\n gnome-tweak-tool > Typing > Swap Esc and Caps Lock (for vim)'
echo $'   System Settings > Keyboard allows you to change the speed of repeated keys'
echo "#################################################################"
pause

echo $'\n install git,gitg,xclip and set up the public ssh key'
echo "#################################################################"

sudo apt-get install -y git gitg gitk xclip

echo -e "Make sure you have your ssh keys"
ls -al ~/.ssh
if [ $? -eq 0 ];then
   echo -e "key directory found"
   echo -e "make sure you have id_rsa and id_rsa.pub"
else
   echo -e "no keys have been created for this system"
fi
echo -e "if the keys are not there, do the following:"
echo 'cd;ssh-keygen -t rsa -b 4096 -C "george@georgefisher.com"'
echo 'eval "$(ssh-agent -s)"'
echo 'ssh-add ~/.ssh/id_rsa'
echo 'xclip -sel clip < ~/.ssh/id_rsa.pub'
pause
echo 'If you need to add a new key to GitHub ...'
echo 'The xclip copied the public key to the clipboard'
echo 'Go to github.com/grfiv > profile photo > Settings > SSH and GPG keys > New SSH key'
pause

echo $'\n install dotfiles, tmux, vim'
echo "#################################################################"

cd ~
git clone git@github.com:grfiv/dotfiles.git

cd dotfiles
chmod +x make.sh
./make.sh
pause

echo $'\n htop gfortran wget g++'
echo "#################################################################"
sudo apt-get install -y htop   # system performance
sudo apt-get install -y gfortran build-essential wget #linux-image-generic

sudo apt-get install -y g++ g++-multilib

#echo $'\n audacity'
#echo "#################################################################"
#sudo add-apt-repository ppa:ubuntuhandbook1/audacity
#sudo apt-get update
#sudo apt-get install audacity

echo $'\n gimp'
echo "#################################################################"
sudo apt-get install gimp gimp-data gimp-plugin-registry gimp-data-extras  -y

echo $'\n curl and jq (json parser)'
echo "#################################################################"
echo  "jq online: https://jqplay.org/"
sudo apt-get install curl libcurl3 libcurl3-dev -y
sudo apt-get install jq -y
