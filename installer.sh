#!/bin/bash
#
#######################
#					  #
#	  DIVISI LABS	  #
#  Installer v 1.0.1  #
#					  #
#######################
#
# This script installs the designated script.
# Created by Cazgem from https://cazgem.com
# Feel free to modify it and Contribute at https://github.com/Cazgem/install.sh
#
# EXAMPLE USAGE
# sudo bash /path/to/SCRIPTNAME/installer.sh
#
#
SCRIPTNAME="mjolnir"

cp $SCRIPTNAME /usr/bin
cd /usr/bin
chmod +x $SCRIPTNAME
cd ~

mkdir /etc/$SCRIPTNAME
mkdir /etc/$SCRIPTNAME/logs

printf "Installation Completed\n"