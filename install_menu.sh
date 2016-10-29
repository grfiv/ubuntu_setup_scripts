#!/usr/bin/env  bash

clear

# ---------------------------------------------------
function open_url {
    # open a URL in a browser
    #
    # usage: open_url http://www.google.com
    URL=$1 
    if which xdg-open > /dev/null
    then
      xdg-open $URL > /dev/null
    elif which gnome-open > /dev/null
    then
      gnome-open $URL > /dev/null
    fi
} 
export -f open_url
# ---------------------------------------------------

# ---------------------------------------------------
function pause() {
    # wait for input
    #
    # usage: pause
   echo -n "... press Enter "   
   read -p "$*"
}
export -f pause
# ---------------------------------------------------
    
# ---------------------------------------------------
function install_deb {
     # display instructions to install a deb file
     #
     # usage: install_deb
    echo ""
    echo "download the deb file from the website just opened"
    echo "cd ~/Downloads"
    echo "dpkg -i ..."
    echo ""                   
    pause
}
export -f install_deb
# ---------------------------------------------------

echo $'\n update'
echo "#################################################################"
sudo apt-get update

echo $'\n upgrade'
echo "#################################################################"
sudo apt-get -y upgrade 

echo ""
echo "press Enter to continue"
pause

while :
do
    clear
    cat<<EOF
    ==============================
    Ubuntu setup process
    ------------------------------
    Iteratively select the options to install:

    001 chrome, gmail
    002 Dropbox
    003 pandoc, $HOME/bin, pinfo, sqlite3, tree
    004 shutter, variety, c++, pip, virtualenv, at
    005 git, tmux, xclip, dotfiles, vim, htop, gfortran, wget, g++, gimp, curl, jq
    006 geany, firewall, unity-tweak-tool, cmake, various-zip-tools, ccache
    007 aws, mop, meld, openssh-server, sshpass, lxc, visual studio code, node js
    008 latex
    009 java
    010 python
    011 r, octave
    012 lorem, LAMP, qmail, lynx, w3m
    013 wine
    014 virtualbox, filezilla, sqlite
    015 last-pass, pia, remindor, audio-recorder, imagemagick
    016 cups config
    017 Azure CLI
    018 Prior to VBox guest additions
    019 quantlib
    ------------------------------
EOF
    read -n3 -s
    case "$REPLY" in
    "001")  open_url https://www.google.com/chrome/browser/desktop/   
            echo "install google chrome"
            install_deb 

            sudo apt-get install gnome-gmail -y
            echo ""
            echo "set gmail as the default email reader in System Settings > Details > Default Applications"
            pause                       ;;
            
    "002")  read -n1 -p $'(1) GUI Dropbox\n(2) Command line Dropbox\n> ' db

            case "$db" in
                "1") sudo apt-get -y install nautilus-dropbox    ;;
                
                "2") echo "command-line Dropbox setup not ready" ;;
                
                *  ) echo "invalid Dropbox installation option"  ;;
            esac  
            pause                       ;;
            
    "003")  open_url https://github.com/jgm/pandoc/releases 
            echo "install pandoc"   
            install_deb    
                     
            mkdir $HOME/bin
            echo "$HOME/bin created; .profile adds to PATH for local .sh files"    
            pause
            
            sudo apt-get install pinfo -y # read info pages in color 
            pause                       
            
            #echo -e "chrony is the replacement for the ntp time-sync service"
            #sudo apt-get install chrony -y
            #systemctl enable chrony
            #systemctl start chrony
            #systemctl status chrony
            
            sudo apt-get install sqlite3 -y
            sudo apt-get install sqlitebrowser -y
            
            pause                       
            
            echo -e "tree is a tree-form pretty print for ls"
            sudo apt-get install tree -y
            
            pause                       ;;
    
    "004")  ./misc_004.sh 
            pause                       ;;
    
    "005")  ./misc_005.sh 
            pause                       ;;
    
    "006")  ./misc_006.sh 
            pause                       ;;
    
    "007")  ./misc_007.sh 
            pause                       ;;
    
    "008")  ./misc_008.sh 
            pause                       ;;
    
    "009")  ./java.sh
            pause                       ;;
    
    "010")  ./python.sh
            pause                       ;;
    
    "011")  ./R.sh
            pause                       ;;
    
    "012")  ./lorem.sh
            pause
            ./lamp.sh     
            pause     
            ./qmail.sh
            pause                  ;;
    
    "013")  open_url http://www.tecmint.com/install-wine-on-ubuntu-and-linux-mint/
            open_url https://askubuntu.com/questions/219791/improve-gui-appearance-of-wine-applications
            echo "see new webpages to install wine 1.8"
            pause                       ;;
            
    "014")  sudo apt-get install virtualbox -y
            sudo apt-get install virtualbox-guest-dkms -y
            sudo apt-get install filezilla -y
            echo ""
            echo "setup a soft link so filezilla can share its settings"
            echo "ln -s /home/george/Dropbox/FileZilla/sitemanager.xml  /home/george/.filezilla/sitemanager.xml"
            pause               
            sudo apt-get install sqlite3 libsqlite3-dev     
            sudo add-apt-repository -y ppa:linuxgndu/sqlitebrowser
            sudo apt-get update
            sudo apt-get install sqlitebrowser   ;;
            
    "015")  ./lastpass_and_friends.sh
            pause                       ;;
            
    "016")  ./cups_config.sh
             pause                      ;;
    
    "017")  ./Azure_CLI.sh
             pause                      ;;
             
    "018")  ./VBox_guest-setup.sh
            pause                       ;;
            
    "019" ) ./quantlib.sh
            pause                       ;;
    
     *   )  echo "invalid option"       ;;
    esac
    sleep 1
done


