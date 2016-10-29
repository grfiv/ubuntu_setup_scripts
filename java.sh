#!/usr/bin/env  bash

echo $'\n java'
echo "#################################################################"
#sudo add-apt-repository ppa:webupd8team/java
#sudo apt-get update
#sudo apt-get install oracle-java9-installer -y
#sudo apt-get install oracle-java9-set-default -y
#java -version


sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer -y
sudo apt-get install oracle-java8-set-default -y
java -version

echo $'\n eclipse'
echo "#################################################################"
pause
sudo apt-get -y install eclipse





