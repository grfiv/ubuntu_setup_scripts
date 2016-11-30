#!/bin/bash


echo $'\n install docker as follows'
echo "#################################################################\n"

#echo 'wget -qO- https://get.docker.com/ | sh'
#echo 'service docker restart'
#echo 'docker version'


#!/bin/bash
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y apt-transport-https ca-certificate
sudo apt-get install -y linux-image-extra-$(uname -r) linux-image-extra-virtual
sudo apt-key adv \
               --keyserver hkp://ha.pool.sks-keyservers.net:80 \
               --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" > /etc/apt/sources.list.d/docker.list
sudo apt-get update
sudo apt-get install -y docker-engine
systemctl enable docker
systemctl restart docker
systemctl status docker

pause
#AWS swarm
#public_ip=$(curl http://169.254.169.254/latest/meta-data/public-ipv4)
#private_ip=$(curl http://169.254.169.254/latest/meta-data/local-ipv4)
#docker swarm init \
#    --advertise-addr $private_ip:2377 \
#    --listen-addr $private_ip:2377
#docker swarm join-token manager
#docker swarm join-token worker

