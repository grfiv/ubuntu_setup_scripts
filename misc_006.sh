#!/usr/bin/env  bash

echo $'\n geany'
echo "#################################################################"
sudo apt-get -y install geany geany-plugins 
sudo apt-get install -y geany-plugin-latex geany-plugin-lipsum geany-plugin-markdown
sudo apt-get install -y geany-plugin-prettyprinter geany-plugin-spellcheck geany-plugin-tableconvert
sudo apt-get install -y geany-plugin-treebrowser  geany-plugin-webhelper

echo $'\n firewall'
echo "#################################################################"
sudo apt-get install gufw -y
echo ""
echo "Firewall (gufw): check the Enabled button and the default will be set to Deny for incoming traffic and Allow for outgoing traffic."
pause

echo ""
echo "turn off ping response"
echo $'sudo su\necho 1 > /proc/sys/net/ipv4/icmp_echo_ignore_all'
pause

echo $'\n unity-tweak-tool gnome-tweak-tool cmake various-zip-tools'
echo "#################################################################"
sudo apt-get install unity-tweak-tool gnome-tweak-tool cmake -y
sudo apt-get install p7zip-rar p7zip-full unace unrar zip unzip -y
sudo apt-get install sharutils rar uudeview mpack arj cabextract file-roller -y
sudo apt-get install xz-utils -y
echo ""
echo "xz is the up-and-coming compression package: linux kernels are moving to it from gzip and bzip2"
echo "tar -xJf file.pkg.tar.xz # -J is the flag that specifically deals with .xz files"
#sudo apt-get install dtrx -y
# dtrx stands for “Do The Right Extraction.” 
# http://brettcsmith.org/2007/dtrx/
pause

echo $'\n ccache'
echo "#################################################################"
sudo apt-get install -y ccache
echo "Show cache statistics: ccache -s"
echo "Empty the cache and reset the stats: ccache -C -z"
pause





