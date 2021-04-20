#!/bin/sh

# set -x

# Sys
sudo apt-get install -y sudo
sudo apt-get install -y rsync
# sudo apt-get install -y snapd

# Env
sudo apt-get install -y zsh
sudo apt-get install -y tcsh

sudo apt-get install -y vim
sudo apt-get install -y emacs
sudo apt-get install -y git

# sudo snap install --classic sublime-text

# sudo snap install --classic code
# sudo snap install --classic eclipse
# 
# sudo snap install --classic slack

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

# sudo apt-get install -y network-manager
# sudo apt-get install -y network-manager-gnome

# sudo apt-get install -y gtk2-engines-murrine
# sudo apt-get install -y gtk2-engines-pixbuf

# sudo apt-get install -y arc-theme
# sudo apt-get install -y numix-gtk-theme

# sudo apt-get install -y gnome-icon-theme
# sudo apt-get install -y moka-icon-theme
# sudo apt-get install -y numix-icon-theme

# X
sudo apt-get install -y xorg
sudo apt-get install -y xinit
sudo apt-get install -y xdm

sudo apt-get install -y xterm
sudo apt-get install -y rxvt

sudo apt-get install -y x11-apps
sudo apt-get install -y xpaint

sudo apt-get install -y exmh

sudo apt-get install -y xbill
sudo apt-get install -y xplanet

# AfterStep
# sudo apt-get install -y afterstep

# WindowMaker
sudo apt-get install -y wmaker
sudo apt-get install -y wmaker-common
sudo apt-get install -y wmaker-utils
sudo apt-get install -y menu

sudo apt-get install -y wmbubble
# sudo apt-get install -y wmpager
sudo apt-get install -y wmclock
sudo apt-get install -y asmon

# Mate
sudo apt-get install -y task-mate-desktop
sudo apt-get install -y mate-desktop-environment
sudo apt-get install -y mate-desktop-environment-extras

# 
# sudo apt-get install -y firefox
sudo apt-get install -y firefox-esr

# Ahh, good old scheme
# 
# I can't remember which version of scheme was used at KTH in 1997 - 1998, 
# It would have been a version that was available for Digital UNIX on 64 bit alpha in 1997.
# My guess is that its either mit-scheme, scm, or scheme48
# 
# In the pkg/mpkg ports trees, which were used during this time on the elektro Digital Unix systems, 
# I can find the following scheme versions, umb-scheme, guile and chez
# 
# sudo apt-get install -y scm
# sudo apt-get install -y scheme48
# sudo apt-get install -y chez-scheme
sudo apt-get install -y mit-scheme
sudo apt-get install -y guile2.2

# Gotta have an HP48! This was one of the most popular graphing calculators of that time, 
# I used a TI-89 but oh well.
# sudo apt-get install -y x48

# GNU Octave will suffice for actual Matlab
sudo apt-get install -y octave

# Dots
# cp ./home/.bashrc ~/.bashrc
# cp ./home/.zshrc ~/.zshrc
# cp ./home/.emacs ~/.emacs

# Shell
# chmod 644 .zshrc || true
# chsh -s /bin/zsh || true

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
