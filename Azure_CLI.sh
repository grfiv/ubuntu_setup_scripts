#!/bin/bash

# QJ8qy&5vH73Y^gr

#
# Install Azure CLI on local Ubuntu laptop
#
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential

sudo apt-get install -y nodejs-legacy
sudo apt-get install -y npm
sudo npm install -g azure-cli -g

echo -e "the following command gives you a URL and a token to enter to gain access\n"
azure login

azure config mode arm


azure --completion >> ~/azure.completion.sh
echo '# Enable Azure CLI tab completion' >> ~/.bash_aliases
echo 'source ~/azure.completion.sh' >> ~/.bash_aliases
sudo npm update -g azure-cli
source ~/.bashrc

echo -e "\nPress Enter to continue"




#echo -e "\nenter a Resource Group name, big laptop was grfiv_zareason\n"
#read group_name
#
#azure group create $group_name eastus
#
#azure vm quick-create
#
#pause
