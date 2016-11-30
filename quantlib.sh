#!/bin/bash

pause ()
{
    echo -n "... press Enter ";
    read -p "$*"
}
open_url ()
{
    URL=$1;
    if which xdg-open > /dev/null; then
        xdg-open $URL > /dev/null;
    else
        if which gnome-open > /dev/null; then
            gnome-open $URL > /dev/null;
        fi;
    fi
}


# Quantlib intro/installation
# http://dirk.eddelbuettel.com/code/rquantlib.html
# http://quantlib.org/index.shtml
# http://quantlib.org/install/linux.shtml
# http://quantlib.org/install/linux-python.shtml

echo -e "boost libraries required for quantlib"
sudo apt-get install libboost-all-dev
sudo apt-get install automake autoconf libtool
sudo apt-get install python-dev
pause

"
#:r !apt-cache search quantlib
apt-cache search quantlib
pause
sudo apt-get install libquantlib0-dev     # - Quantitative Finance Library -- development package
sudo apt-get install libquantlib0v5       # - Quantitative Finance Library -- library package
sudo apt-get install quantlib-examples    # - Quantitative Finance Library -- example binaries
sudo apt-get install quantlib-python      # - Python bindings for the Quantlib Quantitative Finance library
sudo apt-get install quantlib-refman-html # - Quantitative Finance Library -- reference manual in html
sudo apt-get install r-cran-rquantlib     # - GNU R package interfacing the QuantLib finance library
pause

cd ~/Downloads
git clone git@github.com:lballabio/QuantLib.git
 cd QuantLib/
./autogen.sh
pause

./configure
pause

make
pause

sudo make install
pause

export PATH=$PATH:$(which quantlib-config)
echo "look for quantlib-config"
echo $PATH
pause

# Python
# ======

open_url https://sourceforge.net/projects/quantlib/files/QuantLib/1.9/other%20languages/
pause
cd ~/Downloads
echo "tar xzf Quantlib-SWIG????"
echo "cd Quantlib-SWIG????"
echo "./configure"
echo "make -C Python"
echo "sudo make -C Python install"
"


