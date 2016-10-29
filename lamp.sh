#!/usr/bin/env  bash

echo $'\n LAMP'
echo "#################################################################"
echo -e "install w3m and lynx ... text browsers"
sudo apt-get install w3m w3m-img lynx -y
pause

open_url https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-on-ubuntu-16-04
sudo apt-get install apache2 -y
sudo apt-get install apache2-doc -y
echo -e "\n make sure that  Apache, Apache Full & Apache Secure is on the firewall list"
sudo ufw app list
echo -e "\n... and that Apache Full has access to ports 80 & 443"
sudo ufw app info "Apache Full"
pause

sudo ufw allow in "Apache Full"
open_url http://localhost:80
echo -e "Make sure that the default Apache page has shown up in the browser"
pause

echo -e "\nEnter 'ServerName <server_domain_or_IP>' at the bottom of the file to open up next"
pause
sudo vi /etc/apache2/apache2.conf
echo -e "\n confirm that the following command does not produce errors"
sudo apache2ctl configtest
pause

ifconfig
echo -e "\nfind the local LAN device (eth0, wlp2s0) and enter it in the following command"
echo    "ip addr show eth0 | grep inet | awk '{ print $2; }' | sed 's/\/.*$//'"
pause

external_url=$(curl http://icanhazip.com)
echo -e "\nthe following is your external ip address $external_url"
echo -e "make sure you set up port forwarding on your router"

open_url http://$external_url

echo -e "\nSetup mysql ... only syserr is shown"
pause

sudo apt-get install mysql-server mysql-client  -y 1>/dev/null
sudo systemctl status mysql

echo -e "\nPerform mysql secure installation"
echo -e "The password plugin is optionsal; say y to all else"
pause
sudo mysql_secure_installation

echo -e "\n setup a userid for 'george'\n"
echo -e "mysql -u root -p"
echo -e "CREATE USER 'george'@'localhost' IDENTIFIED BY 'zareason';"
echo -e "GRANT ALL PRIVILEGES ON * . * TO 'george'@'localhost';"
echo -e "FLUSH PRIVILEGES;"
echo -e "SELECT Host,User,Super_priv FROM mysql.user;"
echo -e "quit"
pause

echo -e "\n setup php ... only syserr is shown"
pause

sudo apt-get install php php-pear php-mysql php-sqlite3 php-mongodb php-curl php-mcrypt php-cgi  libapache2-mod-php  -y 1>/dev/null
sudo apt-get install php-mbstring php-gettext -y 1>/dev/null

echo -e "\nThe following file shows the order in which default files are chosen"
pause
sudo vi /etc/apache2/mods-enabled/dir.conf 

echo -e "\n setup phpmyadmin"
pause
sudo apt-get install phpmyadmin -y
echo -e "\n add Include /etc/phpmyadmin/apache.conf at the bottom of the file to be opened next\n"
pause
sudo vi /etc/apache2/apache2.conf

echo -e "root/zareason"
open_url http://localhost/phpmyadmin

pause
echo -e "\nrestart apache"

sudo systemctl restart apache2
sudo systemctl status apache2
pause

echo -e "\nInstall info.php to demonstrate that things are working\n"
echo -e "sudo -i"
echo -e "echo '<?php phpinfo(); ?>' > /var/www/html/info.php"
echo -e "exit"
pause
open_url http://localhost/info.php

echo -e "\nLamp installation complete"

