#!/bin/sh

# set -x

# Sys
apt-get install -y sudo
apt-get install -y rsync
# apt-get install -y snapd

# Env
apt-get install -y zsh
apt-get install -y tcsh

apt-get install -y vim
apt-get install -y emacs
apt-get install -y git

# snap install --classic sublime-text

# snap install --classic code
# snap install --classic eclipse
# 
# snap install --classic slack

# Dev
apt-get install -y gawk 
apt-get install -y git

apt-get install -y python2
apt-get install -y python3

apt-get install -y python2-pip
apt-get install -y python3-pip

apt-get install -y python2-virtualenv
apt-get install -y python3-virtualenv

apt-get install -y pipenv

# X
# apt-get install -y task-mate-desktop
# apt-get install -y mate-desktop-environment
# apt-get install -y mate-desktop-environment-extras

# apt-get install -y network-manager
# apt-get install -y network-manager-gnome

# apt-get install -y gtk2-engines-murrine
# apt-get install -y gtk2-engines-pixbuf

# apt-get install -y arc-theme
# apt-get install -y numix-gtk-theme

# apt-get install -y gnome-icon-theme
# apt-get install -y moka-icon-theme
# apt-get install -y numix-icon-theme

# X
apt-get install -y xorg
apt-get install -y xinit
apt-get install -y xdm

apt-get install -y xterm
apt-get install -y rxvt

apt-get install -y x11-apps
apt-get install -y xpaint

apt-get install -y exmh

apt-get install -y xbill
apt-get install -y xplanet

# AfterStep
# apt-get install -y afterstep

# WindowMaker
apt-get install -y wmaker
apt-get install -y wmaker-common
apt-get install -y wmaker-utils
apt-get install -y menu

apt-get install -y wmbubble
# apt-get install -y wmpager
apt-get install -y wmclock
apt-get install -y asmon

# Mate
# apt-get install -y task-mate-desktop
# apt-get install -y mate-desktop-environment
# apt-get install -y mate-desktop-environment-extras

# Gnome
apt-get install -y task-gnome-desktop
apt-get install -y gnome-tweaks
apt-get install -y gdm

# 
# apt-get install -y firefox
apt-get install -y firefox-esr

# Ahh, good old scheme
# 
# I can't remember which version of scheme was used at KTH in 1997 - 1998, 
# It would have been a version that was available for Digital UNIX on 64 bit alpha in 1997.
# My guess is that its either mit-scheme, scm, or scheme48
# 
# In the pkg/mpkg ports trees, which were used during this time on the elektro Digital Unix systems, 
# I can find the following scheme versions, umb-scheme, guile and chez
# 
# apt-get install -y scm
# apt-get install -y scheme48
# apt-get install -y chez-scheme
apt-get install -y mit-scheme
apt-get install -y guile2.2

# Gotta have an HP48! This was one of the most popular graphing calculators of that time, 
# I used a TI-89 but oh well.
# apt-get install -y x48

# GNU Octave will suffice for actual Matlab
apt-get install -y octave

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
# apt-key add oracle_vbox_2016.asc
# apt-get update
# apt-get install virtualbox-6.1
# apt-get install build-essential dkms linux-headers-$(uname -r)

# Vagrant
# vagrant plugin install vagrant-vbguest
