#!/usr/bin/env  bash

echo $'\n Octave'
echo "#################################################################"
sudo apt-get install octave -y
sudo -H pip install oct2py
pause

echo $'\n R'
echo "#################################################################"
sudo apt-get install -y libgeos-dev
sudo apt-get install -y libzmq3-dev
sudo apt-get install -y libgdal1-dev libproj-dev
sudo apt-get install -y libgsl0ldbl
sudo apt-get install -y gsl-bin libgsl0-dev
sudo apt-get install -y bwidget
sudo apt-get install -y tcl-dev
sudo apt-get install -y libmysqlclient-dev
sudo apt-get install -y libpq-dev
sudo apt-get install -y coinor-symphony
sudo apt-get install -y libiodbc2-dev
sudo apt-get install -y libglu1-mesa-dev
sudo apt-get install -y libcurl4-openssl-dev libxml2-dev
sudo apt-get install -y gdebi-core
sudo apt-get install -y libapparmor1
sudo apt-get install -y libhunspell-dev
# see http://askubuntu.com/questions/506560/how-to-install-package-of-r
# NOTE: trusty is for 14.04; 15.04 is vivid 15.10 is wily 16.04 is xenial
#
# see also https://cran.r-project.org/bin/linux/ubuntu/README
echo 'deb https://cran.cnr.berkeley.edu/bin/linux/ubuntu xenial/' | sudo tee /etc/apt/sources.list.d/r.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
sudo apt-get update
sudo apt-get install r-base -y
sudo apt-get install r-base-dev -y
sudo apt-get build-dep r-cran-rmpi
sudo apt-get install libzmq3-dbg libzmq3-dev libzmq3

echo $'\n RStudio'
echo "#################################################################"
open_url https://www.rstudio.com/products/rstudio/download/ 
echo "install RStudio"

cat <<EOR
install.packages(c("knitr", "ggplot2","rpart.plot","devtools","ggvis","psych","dplyr","tidyr","rvest","magrittr","testthat","roxygen2"),dependencies=TRUE)
--> set Sweave to knitr

install.packages(c('rzmq','repr','IRkernel','IRdisplay'),
                 repos = c('http://irkernel.github.io/', getOption('repos')),
                 type = 'source')
IRkernel::installspec()
EOR


echo "\nFinished with R"
pause
