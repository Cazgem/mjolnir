#!/bin/bash
#
#######################
#					  #
#	  DIVISI LABS	  #
#	MJOLNIR v 1.0.3	  #
#					  #
#######################
#
# This script installs the mjolnir script for website creation.
# Created by Cazgem from https://cazgem.com
# Feel free to modify it and Contribute at https://github.com/Cazgem/mjolnir
#
# EXAMPLE USAGE
# sudo bash /path/to/mjolnir/installer.sh
#
#
cp mjolnir /usr/bin
cd /usr/bin
chmod +x mjolnir
cd ~

mkdir /etc/mjolnir
mkdir /etc/mjolnir/logs

printf "Installation Completed\n"