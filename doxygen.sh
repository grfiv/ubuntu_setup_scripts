#!/bin/bash

echo -e "Install doxygen"
sudo apt-get install flex
pause
sudo apt-get install bison
pause
sudo apt-get install make
pause
sudo apt-get install cmake
pause
sudo apt-get install qt5-default
pause
sudo apt-get install doxygen
pause
sudo apt-get install doxygen-latex doxygen-doc doxygen-gui
pause

echo -e "see the Getting Started website ..."
open_url https://www.stack.nl/~dimitri/doxygen/manual/starting.html
echo -e "each project gets its own Doxyfile"
echo -e "doxywizard helps to get setup"
echo -e "edit the  FILE_PATTERNS and EXCLUDE_PATTERNS options"
echo -e "EXCLUDE_SYMBOL = $*"
echo -e "set the main page:\nINPUT += README.md\nUSE_MDFILE_AS_MAINPAGE = README.md"
echo -e "make sure to scan recursively"
echo -e "file documentation must begin immediately with\n<?php\n/** @file"
pause
