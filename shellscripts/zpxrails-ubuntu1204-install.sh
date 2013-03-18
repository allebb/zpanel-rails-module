#!/bin/bash

#################################################################
# Rails Module for ZPanelX Automated Installer for Ubuntu 12.04 #
# Created by: Bobby Allen (bobbyallen.uk@gmail.com)             #
#################################################################

clear

echo -n "################################################################\n"
echo -n "# Rails Module for ZPanelX Installer                           #\n"
echo -n "# Created by: Bobby Allen (bobbyallen.uk@gmail.com)            #\n"
echo -n "################################################################\n"

if [ "$(id -u)" != "0" ]; then
   echo "Sorry, this script must be run as root!" 1>&2
   exit 1
fi

# Lets install some required tools...
apt-get update
apt-get install build-essential python-software-properties libssl-dev libreadline-dev libcurl4-openssl-dev libssl-dev zlib1g-dev apache2-prefork-dev libapr1-dev libaprutil1-dev
apt-get install libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev

# We now download the latest version of Ruby and build it...
cd /usr/local/src
wget http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p392.tar.gz
tar -z -xf ruby-1.9.3-p392.tar.gz
cd ruby-1.9.3-392
./configure --enable-shared
make && sudo make install

# We now download the latest version of Ruby Gems and install it...
cd /usr/local/src
wget http://production.cf.rubygems.org/rubygems/rubygems-1.8.24.tgz
tar xzvf rubygems-1.8.24.tgz
cd rubygems-1.8.24
ruby setup.rb
gem install rubygems-update
update_rubygems

# Lets now install some Ruby Gems...

# Install rails...
gem install rails
# Install bundler...
gem install bundler
# Install passenger...
gem install passenger

