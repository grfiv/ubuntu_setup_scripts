#!/usr/bin/env  bash

echo $'\n latex'
echo "#################################################################"
sudo apt-get install texlive-full -y
sudo apt-get install dvipng -y

echo $'\n jabref texstudio'
echo "#################################################################"
sudo apt-get -y install jabref
sudo apt-get -y install texstudio

#echo $'\n GitHub markdown editor'
#echo "#################################################################"
#sudo apt-get install -y retext



