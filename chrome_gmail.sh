#!/usr/bin/env  bash

open_url https://www.google.com/chrome/browser/desktop/   
echo "install google chrome"
install_deb 

sudo apt-get install gnome-gmail -y
echo ""
echo "set gmail as the default email reader in System Settings > Details > Default Applications"
pause
