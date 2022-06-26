#!/bin/sh

# set -x


# 
# pkg install -y vim
pkg install -y vim-console
# pkg install -y emacs
pkg install -y emacs-nox

# Modern
pkg install -y git

# 
pkg install -y htop
# pkg install -y mc
pkg install -y mc-nox11


# pkg install -y python36
# pkg install -y py36-pip
# pkg install -y py36-virtualenv
# pkg install -y py36-pipenv

# pkg install -y python37
# pkg install -y py37-pip
# pkg install -y py37-virtualenv
# pkg install -y py37-pipenv

pkg install -y python38
pkg install -y py38-pip
pkg install -y py38-virtualenv
pkg install -y py38-pipenv

pkg install -y python39
pkg install -y py39-pip
pkg install -y py39-virtualenv
pkg install -y py39-pipenv

pkg install -y python310
pkg install -y py310-pip
pkg install -y py310-virtualenv
pkg install -y py310-pipenv


# Basic
pkg install -y bwbasic
pkg install -y pbasic
# pkg install -y tcbasic
# pkg install -y yabasic


# Lisp
# pkg install -y clisp
# pkg install -y clisp-hyperspec
pkg install -y newlisp
pkg install -y slisp


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


# GNU Octave will suffice for actual Matlab
# pkg install -y octave

