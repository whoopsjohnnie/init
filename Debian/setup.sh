#!/bin/sh

# set -x

# Env
sudo apt-get install -y zsh
sudo apt-get install -y emacs

# Dev
sudo apt-get install -y python2
sudo apt-get install -y python3

sudo apt-get install -y python2-pip
sudo apt-get install -y python3-pip

sudo apt-get install -y python2-virtualenv
sudo apt-get install -y python3-virtualenv

sudo apt-get install -y pipenv

# Dots
cp ./.bashrc ~/.bashrc
cp ./.zshrc ~/.zshrc
cp ./.emacs ~/.emacs

# Shell
chmod 644 .zshrc || true
chsh -s /bin/zsh || true
