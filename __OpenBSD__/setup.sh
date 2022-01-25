#!/bin/sh

# set -x

# 
pkg_add -aI sudo--

# Editors
pkg_add -aI vim--gtk3
pkg_add -aI emacs--gtk3
# pkg_add -aI emacs-nox
pkg_add -aI xemacs--

# 
pkg_add -aI git

# 
pkg_add -aI tcsh

# 
# pkg_add -aI xorg
# pkg_add -aI xinit
# pkg_add -aI xset
# pkg_add -aI xsetroot
# pkg_add -aI xrandr
# pkg_add -aI xdm

# 
pkg_add -aI xv
# pkg_add -aI xman
# pkg_add -aI xmag
pkg_add -aI xpaint
# pkg_add -aI xcalc
# pkg_add -aI xbiff
pkg_add -aI exmh

# pkg_add -aI xclock
# pkg_add -aI xlogo
# pkg_add -aI xload
# pkg_add -aI xkill

pkg_add -aI xbill
# pkg_add -aI xsnow
# pkg_add -aI xeyes
pkg_add -aI xearth
pkg_add -aI xplanet

# pkg_add -aI xlock
# pkg_add -aI xlockmore

# 
# pkg_add -aI afterstep
# pkg_add -aI afterstep1
# pkg_add -aI asbutton
# pkg_add -aI asclock
# pkg_add -aI astzclock
# pkg_add -aI astime
# pkg_add -aI ascpu
# pkg_add -aI asmem
# pkg_add -aI asfsm
# pkg_add -aI asmail
# pkg_add -aI asmix
# pkg_add -aI asmixer
# pkg_add -aI aterm

#
pkg_add -aI fvwm2

# 
pkg_add -aI firefox

# Ahh, good old scheme
# 
# I can't remember which version of scheme was used at KTH in 1997 - 1998, 
# It would have been a version that was available for Digital UNIX on 64 bit alpha in 1997.
# My guess is that its either mit-scheme, scm, or scheme48
# 
# In the pkg/mpkg ports trees, which were used during this time on the elektro Digital Unix systems, 
# I can find the following scheme versions, umb-scheme, guile and chez
# 
pkg_add -aI scm--
pkg_add -aI scheme48
# pkg_add -aI chez-scheme
# pkg_add -aI mit-scheme
pkg_add -aI guile

# Gotta have an HP48! This was one of the most popular graphing calculators of that time, 
# I used a TI-89 but oh well.
pkg_add -aI x48

# GNU Octave will suffice for actual Matlab
pkg_add -aI octave

# 
# cp ./usr/local/etc/X11/xorg.conf.d/screen-resolution.conf /usr/local/etc/X11/xorg.conf.d/
cp ./usr/local/lib/X11/app-defaults/* /usr/local/lib/X11/app-defaults/
cp ./usr/local/lib/X11/system.mwmrc /usr/local/lib/X11/

# 
cp -r ./usr/athena /usr/
