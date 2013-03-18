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

