#!/bin/bash

# Quantlib intro/installation
# http://dirk.eddelbuettel.com/code/rquantlib.html
# http://quantlib.org/index.shtml

echo -e "boost libraries required for quantlib"
sudo apt-get install libboost-all-dev
pause

#:r !apt-cache search quantlib
sudo apt-get install libquantlib0-dev     # - Quantitative Finance Library -- development package
sudo apt-get install libquantlib0v5       # - Quantitative Finance Library -- library package
sudo apt-get install quantlib-examples    # - Quantitative Finance Library -- example binaries
sudo apt-get install quantlib-python      # - Python bindings for the Quantlib Quantitative Finance library
sudo apt-get install quantlib-refman-html # - Quantitative Finance Library -- reference manual in html
sudo apt-get install r-cran-rquantlib     # - GNU R package interfacing the QuantLib finance library
