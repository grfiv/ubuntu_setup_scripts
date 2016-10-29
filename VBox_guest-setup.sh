#!/usr/bin/env  bash

function pause() {
    # wait for input
    #
    # usage: pause
   echo -n "... press Enter "   
   read -p "$*"
}

sudo lshw | grep -i virtualbox
if [[ $? -eq 0 ]]; then

    echo $'\n VBox Guest Additions'
    echo "#################################################################"
    sudo apt-get install build-essential module-assistant linux-headers-$(uname -r)
    sudo apt-get install virtualbox-guest-utils virtualbox-guest-dkms
    sudo m-a prepare
    pause

    sudo ls /sys/class/net
    sudo ifconfig
    sudo ifconfig -a
    echo -e "eth1 (or whatever) not set?"
    echo -e "sudo vi /etc/network/interfaces"
    echo -e "    auto eth1"
    echo -e "    iface eth1 inet dhcp"
    echo -e "sudo ifup eth1\n"
    pause

    echo -e "Install Guest Additions: install the iso"
    echo -e "sudo mkdir /mnt/cdrom"
    echo -e "sudo mount /dev/cdrom /mnt/cdrom"
    echo -e "cd /mnt/cdrom"
    echo -e "sudo ./VboxLinuxAdditions.run"
    echo -e "sudo reboot"
    echo -e "lsmod | grep vboxguest"
    pause
    
else
    echo -e "You do not appear to be running as a Virtual Box guest"
fi
