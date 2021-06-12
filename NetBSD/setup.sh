#!/bin/sh

# set -x

# 
pkg_add sudo

# 
pkg_add vim
pkg_add emacs
# pkg_add -aI emacs-nox
pkg_add git

# 
pkg_add tcsh

# 
# pkg_add xorg
# pkg_add xinit
# pkg_add xset
# pkg_add xsetroot
# pkg_add xrandr
# pkg_add xdm

# 
pkg_add xv
# pkg_add xman
# pkg_add xmag
pkg_add xpaint
# pkg_add xcalc
# pkg_add xbiff
pkg_add exmh

# pkg_add xclock
# pkg_add xlogo
# pkg_add xload
# pkg_add xkill

pkg_add xbill
# pkg_add xsnow
# pkg_add xeyes
pkg_add xearth
pkg_add xplanet

# pkg_add xlock
# pkg_add xlockmore

# 
# pkg_add afterstep
# pkg_add afterstep1
# pkg_add asbutton
# pkg_add asclock
# pkg_add astzclock
# pkg_add astime
# pkg_add ascpu
# pkg_add asmem
# pkg_add asfsm
# pkg_add asmail
# pkg_add asmix
# pkg_add asmixer
# pkg_add aterm

#
pkg_add fvwm

# 
pkg_add firefox

# Ahh, good old scheme
# 
# I can't remember which version of scheme was used at KTH in 1997 - 1998, 
# It would have been a version that was available for Digital UNIX on 64 bit alpha in 1997.
# My guess is that its either mit-scheme, scm, or scheme48
# 
# In the pkg/mpkg ports trees, which were used during this time on the elektro Digital Unix systems, 
# I can find the following scheme versions, umb-scheme, guile and chez
# 
pkg_add scm
pkg_add scheme
# pkg_add chez-scheme
# pkg_add mit-scheme
pkg_add guile

# Gotta have an HP48! This was one of the most popular graphing calculators of that time, 
# I used a TI-89 but oh well.
pkg_add x48

# GNU Octave will suffice for actual Matlab
pkg_add octave

# 
# cp ./usr/local/etc/X11/xorg.conf.d/screen-resolution.conf /usr/local/etc/X11/xorg.conf.d/
cp ./usr/local/lib/X11/app-defaults/* /usr/local/lib/X11/app-defaults/
cp ./usr/local/lib/X11/system.mwmrc /usr/local/lib/X11/

# 
cp -r ./usr/athena /usr/
