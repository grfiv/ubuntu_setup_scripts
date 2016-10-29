#!/usr/bin/env  bash

echo $'\n python'
echo "#################################################################"
sudo apt-get install build-essential python-dev python-setuptools libboost-python-dev libboost-thread-dev -y
sudo apt-get install libopenblas-dev check python-nose g++ g++-multilib cmake-gui -y
sudo apt-get install python-sphinx python-pydot -y

sudo apt-get install python-pip  python-numpy python-scipy python-skimage python-sklearn python-pandas -y
sudo -H pip install quantecon
sudo apt-get install python-apsw -y
sudo apt-get install python-magic -y
sudo apt-get install libatlas-base-dev -y
sudo apt-get install python-pythonmagick -y
sudo apt-get install python-mpmath cython  -y
sudo apt-get install python-seaborn python-bottle python-rpy2 python-scitools python-pyqt5 python-pyside python-gtk2-dev -y
sudo -H pip install pylab
sudo -H apt-get install python-backports.ssl-match-hostname
sudo apt-get remove python-tornado
sudo -H pip install tornado --upgrade
sudo -H pip install jinja2
sudo -H pip install pyzmq
sudo -H pip install sklearn-pandas
sudo -H pip install pymongo
sudo -H pip install pybrain
sudo -H pip install quotequail
sudo -H pip install argparse
sudo -H pip install xgboost
sudo apt-get install python-tk -y
sudo apt-get install python-pygments
sudo -H apt-get install python-markdown -y

sudo -H pip install plotly --upgrade

sudo apt-get install libboost-python-dev cmake
sudo -H pip install -U scikit-image


echo $'\n jupyter'
echo "#################################################################"
pause
#ipython-qtconsole
sudo -H pip install --upgrade ipython[all]
sudo -H pip install jupyter






