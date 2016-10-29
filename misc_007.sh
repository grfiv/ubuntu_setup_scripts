#!/usr/bin/env  bash

echo $'\n AWS'
echo "#################################################################"
sudo -H pip install awscli
sudo -H pip install aws-shell

echo ""
echo "move the aws and boto configuration files"
echo "copy ~/Dropbox/aws/.aws  to /home/user/"
echo "copy ~/Dropbox/aws/.boto to /home/user/"
pause

echo $'\n mop'
echo "#################################################################"
echo "Install go and mop stock ticker per website instructions"
open_url https://www.digitalocean.com/community/tutorials/how-to-install-go-1-6-on-ubuntu-16-04
open_url http://xmodulo.com/monitor-stock-quotes-command-line-linux.html
pause

echo $'\n meld'
echo "#################################################################"
sudo apt-get -y install meld

echo $'\n openssh-server'
echo "#################################################################"
sudo apt-get install openssh-server

echo $'\n sshpass ... send password into ssh'
echo "#################################################################"
sudo apt-get install sshpass

echo $'\n instructions for lxc containers'
echo "#################################################################"
cat<<EOF
 sudo lxc-create -t ubuntu -n ubuntu-lxc
 # create a new lxc container
 # -t is the templated operating system
 # -n is the name of the container

 sudo lxc-ls
 # list all installed containers

 sudo lxc-start -n ubuntu-lxc -d
 # start the container
 # -n the name of the container
 # -d disconnect from the console, otherwise it owns the console

 sudo lxc-ls --fancy
 # show the state as well as the names of the containers
 # the ip address allows us to ssh into the container

 # ---------------------
 # from inside the container

 ssh ubuntu@10.0.3.81
 # lxc ubuntu container has uid/psw of ubuntu/ubuntu
 sudo apt-get update
 sudo apt-get install -y nano vim curl wget # (containers are lean)

 # ---------------------
 # from outside the container
 sudo su
 cd /var/lib/lxc
 cd ubuntu-lxc  # the container of interest
 cd rootfs      # the root file system of the container

 sudo lxc-stop -n ubuntu-lxc
 # stop a container
EOF
pause

echo $'\n visual studio code'
echo "#################################################################"
echo "Install visual studio code per website instructions"
open_url https://code.visualstudio.com/
pause

echo $'\n node js'
echo "#################################################################"
echo "Install node js per website instructions"
open_url https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions
open_url http://www.typescriptlang.org/#download-links
open_url https://github.com/typings/typings
pause




