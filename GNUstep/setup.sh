#!/bin/sh

# 
# https://wiki.debian.org/DebianGNUstep
# http://galgotsmacs.blogspot.com/2015/05/my-windowmaker-config-on-jessie-part-1.html
# 

# set -x

# Sys
sudo apt-get install -y wget

sudo apt-get install -y x-window-system-core wmaker menu

sudo apt-get install -y gnustep
sudo apt-get install -y gnustep-devel
sudo apt-get install -y gnustep-games
sudo apt-get install -y gnustep-icons

mkdir -p ~/.themes
mkdir -p ~/.icons

mkdir -p ~/Icons

cp ./home/Icons/* ~/Icons/

# gtk theme
# wget -O "GTK-GNUstep.tar" "https://www.gnome-look.org/p/1079490/startdownload?file_id=1460968652&file_name=117765-GTK-GNUstep.tar&file_type=application/x-tar&file_size=307200"

# gtk icons
# wget -O "areao43.tar.bz2" "https://www.gnome-look.org/p/1012496/startdownload?file_id=1460759243&file_name=101979-areao43.tar.bz2&file_type=application/x-bzip2&file_size=704758"

# icons
# wget -O "openstepicons-1.1.tar.gz" "http://galgot.free.fr/NeXTicons/openstepicons-1.1.tar.gz"
# wget -O "areao43_folder-remote.tar.gz" "http://galgot.free.fr/NeXTicons/areao43_folder-remote.tar.gz"
