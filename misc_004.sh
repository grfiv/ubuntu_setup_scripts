#!/usr/bin/env  bash

# DESCRIPTION: exif tool; shutter; variety; C++ Boost; BLAS; virtualenv; at

# provides Windows screen snippet functionality
echo "Install ExifTool per website instructions"
open_url http://www.sno.phy.queensu.ca/~phil/exiftool/install.html#Unix
pause

sudo apt-get install -y gnome-web-photo
sudo apt-get install -y shutter
echo ""
echo "setup shutter"
pause

#sudo apt-get install variety -y
echo ""
echo "sudo add-apt-repository ppa:variety/next"
echo "sudo apt-get update"
echo "sudo apt-get install variety variety-slideshow"
echo "setup variety"
pause

sudo apt-get install -y remmina

#echo "Remindor"
#echo "#################################################################"
#sudo apt-add-repository ppa:bhdouglass/indicator-remindor
#sudo apt-get update
#sudo apt-get install indicator-remindor

echo $'\n C++ Boost library'
echo "#################################################################"
sudo apt-get install -y libboost-all-dev
sudo apt-get install -y libboost-program-options-dev libboost-python-dev
#sudo apt-get install -y libhdf5-mpich-dev

#sudo apt-get install -y libboost-doc libboost1.55-doc gccxml libboost1.55-doc gccxml

echo $'\n BLAS'
echo "#################################################################"
sudo apt-get install -y libopenblas-dev

echo $'\n pip virtualenv'
echo "#################################################################"
sudo apt-get install python-pip python-dev build-essential -y
sudo -H pip install --upgrade pip
sudo -H pip install --upgrade virtualenv

echo $'\n at runs a program at a specified time in the future'
echo "#################################################################"
sudo apt-get -y install at
