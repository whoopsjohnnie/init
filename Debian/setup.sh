#!/bin/sh

# set -x

# Sys
sudo apt-get install -y rsync
sudo apt-get install -y snapd

# Env
sudo apt-get install -y zsh

# Editors

# !! POSIX/UNIX !!
sudo apt-get install -y ed
sudo apt-get install -y nvi
sudo update-alternatives --set vi /usr/bin/nvi

# Better
sudo apt-get install -y vim
sudo apt-get install -y emacs

sudo snap install --classic sublime-text

sudo snap install --classic code
sudo snap install --classic eclipse

sudo snap install --classic slack

# Dev
sudo apt-get install -y gawk 
sudo apt-get install -y git

sudo apt-get install -y python2
sudo apt-get install -y python3

sudo apt-get install -y python2-pip
sudo apt-get install -y python3-pip

sudo apt-get install -y python2-virtualenv
sudo apt-get install -y python3-virtualenv

sudo apt-get install -y pipenv

# X
# sudo apt-get install -y task-mate-desktop
# sudo apt-get install -y mate-desktop-environment
# sudo apt-get install -y mate-desktop-environment-extras

sudo apt-get install -y network-manager
sudo apt-get install -y network-manager-gnome

# sudo apt-get install -y gtk2-engines-murrine
# sudo apt-get install -y gtk2-engines-pixbuf

# sudo apt-get install -y arc-theme
# sudo apt-get install -y numix-gtk-theme

# sudo apt-get install -y gnome-icon-theme
# sudo apt-get install -y moka-icon-theme
# sudo apt-get install -y numix-icon-theme

# Dots
cp ./home/.bashrc ~/.bashrc
cp ./home/.zshrc ~/.zshrc
cp ./home/.emacs ~/.emacs

# Shell
chmod 644 .zshrc || true
chsh -s /bin/zsh || true

# VirtualBox
# https://www.virtualbox.org/wiki/Linux_Downloads
# deb http://download.virtualbox.org/virtualbox/debian buster contrib
# wget https://www.virtualbox.org/download/oracle_vbox_2016.asc
# sudo apt-key add oracle_vbox_2016.asc
# sudo apt-get update
# sudo apt-get install virtualbox-6.1
# sudo apt-get install build-essential dkms linux-headers-$(uname -r)

# Vagrant
# vagrant plugin install vagrant-vbguest
