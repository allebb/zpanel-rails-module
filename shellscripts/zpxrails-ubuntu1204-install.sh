#!/bin/bash

#################################################################
# Rails Module for ZPanelX Automated Installer for Ubuntu 12.04 #
# Created by : Bobby Allen (bobbyallen.uk@gmail.com)            #
#################################################################

sudo apt-get install build-essential
sudo apt-get install python-software-properties
sudo apt-get install libssl-dev libreadline-dev

# Download and install (build Ruby on Rails)
cd /usr/local/src
sudo wget http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p392.tar.gz
tar -z -xf ruby-1.9.3-p392.tar.gz
cd ruby-1.9.3-p392
sudo ./configure --enable-shared
sudo make && sudo make install