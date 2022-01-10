#!/bin/sh

# set -x

# 
pkg install -y sudo

# 
pkg install -y vim
pkg install -y emacs
# pkg install -y emacs-nox
pkg install -y git

# 
pkg install -y htop
pkg install -y mc

# Modern
pkg install -y vscode
pkg install -y kubectl
pkg install -y helm

# 
# https://bugs.freebsd.org/bugzilla/show_bug.cgi?id=244079
# 
# pkg install -y misc/utouch-kmod
pkg install -y utouch-kmod

# 
pkg install -y xorg
pkg install -y xinit
pkg install -y xset
pkg install -y xsetroot
pkg install -y xrandr
pkg install -y xdm
pkg install -y mwm
pkg install -y fvwm

# Verified on FreeBSD 12.2
pkg install -y slim
pkg install -y slim-themes
cp ./usr/local/etc/slim.conf /usr/local/etc/

# 
pkg install -y xf86-video-vmware

# 
pkg install -y xterm
pkg install -y rxvt-unicode

# 
pkg install -y xf86-video-vmware

# 
pkg install -y xterm
pkg install -y rxvt-unicode

# 
pkg install -y xv
pkg install -y xman
pkg install -y xmag
pkg install -y xpaint
pkg install -y xcalc
pkg install -y xbiff
pkg install -y exmh

pkg install -y xclock
pkg install -y xlogo
pkg install -y xload
pkg install -y xkill

pkg install -y xbill
pkg install -y xsnow
pkg install -y xeyes
pkg install -y xearth
pkg install -y xplanet

# pkg install -y xlock
pkg install -y xlockmore

# 
# pkg install -y afterstep
pkg install -y afterstep1
pkg install -y asbutton
pkg install -y asclock
pkg install -y astzclock
pkg install -y astime
pkg install -y ascpu
pkg install -y asmem
pkg install -y asfsm
pkg install -y asmail
pkg install -y asmix
pkg install -y asmixer
pkg install -y aterm

# CDE
# Verified on FreeBSD 12.2 and 13.0
pkg install -y cde
cp ./etc/hosts /etc/
cp ./etc/inetd.conf /etc/
cp ./etc/rc.conf /etc/
cp ./etc/rc.local /etc/
cp ./etc/ttys /etc/

# 
pkg install -y firefox

# Ahh, good old scheme
# 
# I can't remember which version of scheme was used at KTH in 1997 - 1998, 
# It would have been a version that was available for Digital UNIX on 64 bit alpha in 1997.
# My guess is that its either mit-scheme, scm, or scheme48
# 
# In the pkg/mpkg ports trees, which were used during this time on the elektro Digital Unix systems, 
# I can find the following scheme versions, umb-scheme, guile and chez
# 
# pkg install -y scm
# pkg install -y scheme48
pkg install -y chez-scheme
pkg install -y mit-scheme
pkg install -y guile

# Gotta have an HP48! This was one of the most popular graphing calculators of that time, 
# I used a TI-89 but oh well.
pkg install -y x48

# GNU Octave will suffice for actual Matlab
pkg install -y octave

#
# https://cyber.dabamos.de/unix/x11/
#
pkg install -y 3dpong
pkg install -y angband
pkg install -y appres
pkg install -y fsv2
pkg install -y vim
pkg install -y ico
pkg install -y mgdiff
pkg install -y mxico
pkg install -y nedit
pkg install -y plan
pkg install -y sunclock
pkg install -y ted
pkg install -y tiemu3
pkg install -y tk86 wordnet
pkg install -y x026
pkg install -y x48
pkg install -y xarchiver
pkg install -y xascii
pkg install -y xbiff
pkg install -y xbill
pkg install -y xboard
pkg install -y xcalc
pkg install -y xcalendar
pkg install -y xchm
pkg install -y xchomp
pkg install -y xclipboard
pkg install -y xclock
pkg install -y xconsole
pkg install -y xmdiary
pkg install -y xdigger
pkg install -y xearth
pkg install -y xedit
pkg install -y xev
pkg install -y xeyes
pkg install -y xfishtank
pkg install -y xfontsel
pkg install -y xgalaga
pkg install -y xgc
pkg install -y xinfocom
pkg install -y xinvaders3d
pkg install -y xkill
pkg install -y xlaby
pkg install -y xlennart
pkg install -y xless
pkg install -y xlife
pkg install -y xload
pkg install -y xlockmore
pkg install -y xlogo
pkg install -y xmahjongg
pkg install -y xman
pkg install -y xmaxima
pkg install -y xmbibtex
pkg install -y xmessage
pkg install -y grace
pkg install -y xmh
pkg install -y xmixer
pkg install -y xmore
pkg install -y xmosaic
pkg install -y xmotd
pkg install -y xmountains
pkg install -y xneko
pkg install -y xoj
pkg install -y xosview
pkg install -y xplore
pkg install -y xpostit
pkg install -y xroach
pkg install -y xscreensaver
pkg install -y xsnow
pkg install -y xspread
pkg install -y xstarroll
pkg install -y xtacy
pkg install -y xtar
pkg install -y xterm
pkg install -y xtide
pkg install -y xtrojka
pkg install -y xv
pkg install -y xvkbd
pkg install -y xworld
pkg install -y xwpe
pkg install -y xzoom

# 
cp ./usr/local/etc/X11/xorg.conf.d/screen-resolution.conf /usr/local/etc/X11/xorg.conf.d/
cp ./usr/local/etc/X11/xorg.conf.d/99-qemu-input.conf /usr/local/etc/X11/xorg.conf.d/
cp ./usr/local/lib/X11/app-defaults/* /usr/local/lib/X11/app-defaults/
cp ./usr/local/lib/X11/system.mwmrc /usr/local/lib/X11/

# 
cp -r ./usr/athena /usr/
