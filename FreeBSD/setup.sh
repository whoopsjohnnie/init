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
pkg install -y xorg
pkg install -y xinit
pkg install -y xset
pkg install -y xsetroot
pkg install -y xrandr
pkg install -y xdm

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

# 
pkg install -y firefox

# Ahh, good old scheme
# 
# I can't remember which version of scheme was used at KTH in 1997 - 1998, 
# It would have been a version that was available for Digital UNIX on 64 bit alpha in 1997.
# My guess is that its either mit-scheme, scm, or scheme48
# 
# pkg install -y scm
# pkg install -y scheme48
pkg install -y mit-scheme
pkg install -y guile
