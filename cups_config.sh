#!/usr/bin/env  bash

echo $'\n cups config'
echo "#################################################################"
cat <<EOF
sudo vi /etc/cups/cupsd.conf
set Browsing On
add BrowsingAddress 192.168.1.255
modify <Location />
  Order ...
  Allow localhost
  Allow 192.168.1.0/255.255.255.0
:wq
sudo service cups restart
http://localhost:631
EOF
pause



