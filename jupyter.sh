#!/bin/bash
echo $'\n jupyter'
echo "#################################################################"
pause

sudo -H pip3 install --upgrade pip

sudo -H pip3 install jupyter

open_url https://github.com/ipython/ipython/wiki/IPython-kernels-for-other-languages
pause

echo $'\n jupyter bash'
echo "#################################################################"
pause

sudo -H pip3 install bash_kernel
python3 -m bash_kernel.install

echo $'\n jupyter qtconsole'
echo "#################################################################"
pause

sudo apt-get install python3-pyqt5

sudo -H pip3 install qtconsole


