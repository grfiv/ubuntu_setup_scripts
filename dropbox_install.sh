#!/usr/bin/env  bash

read -n1 -p $'(1) GUI Dropbox\n(2) Command line Dropbox\n> ' db

case "$db" in
    "1") sudo apt-get -y install nautilus-dropbox    ;;
    
    "2") echo "command-line Dropbox setup not ready" ;;
    
    *  ) echo "invalid Dropbox installation option"  ;;
esac
