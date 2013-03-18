#!/bin/bash

#################################################################
# Rails Module for ZPanelX Automated Installer for Ubuntu 12.04 #
# Created by: Bobby Allen (bobbyallen.uk@gmail.com)             #
#################################################################

clear
INSTALLLOG=~/zpxrails_install.log # We'll set a log file in the home directory!
exec &>$INSTALLLOG # Lets pipe the output to the log file!

echo -n "################################################################" >/dev/tty
echo -n "# Rails Module for ZPanelX Installer                           #" >/dev/tty
echo -n "# Created by: Bobby Allen (bobbyallen.uk@gmail.com)            #" >/dev/tty
echo -n "################################################################" >/dev/tty

echo -n "Installing some pre-requisites (build-essential, libssl-dev, libreadline-dev etc.)" >/dev/tty
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

# Now we install and update Ruby Gems!
cd /usr/local/src
sudo wget http://production.cf.rubygems.org/rubygems/rubygems-1.8.24.tgz
sudo tar xzvf rubygems-1.8.24.tgz
cd rubygems-1.8.24
sudo ruby setup.rb
sudo gem install rubygems-update
sudo update_rubygems