#!/bin/sh

# yes | pacman -S --needed xorg
pacman -S --needed --noconfirm xorg
# pacman -S --needed --noconfirm xorg-xinit
pacman -S --needed --noconfirm xterm
pacman -S --needed --noconfirm xscreensaver

# yes | pacman -S --needed \
pacman -S --needed --noconfirm \
	gnome \
	gnome-terminal \
	gnome-control-center \
	gnome-screensaver \
	arc-gtk-theme \
	arc-icon-theme \
	gdm

# yes | pacman -S --needed \
pacman -S --needed --noconfirm \
	firefox \
	thunderbird \
	xscreensaver \
	archlinux-wallpaper

# This one does not install above?
yes | pacman -S xorg-xinit
yes | pacman -S gdm

systemctl enable gdm
systemctl enable NetworkManager
