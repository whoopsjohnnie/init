#!/bin/zsh -f

#
# This is my original tcsh shell config from the Digital UNIX kth.se AFS cell
#
# /afs/kth.se/home/e97/e97_jog/.login, Aug 21 1997, 19:51:25
#

#
# Ported from csh/tcsh to bash by john on June 23, 2021
# Ported to from bash to zsh by john on Feb 20, 2022
# Renamed to .zlogin by john on July 16, 2022
# 

# Prototype user .zsh_login file

# This file sources a system-wide .login file, which:
#      - presumes that the .cshrc file has been sourced
#      - performs standard setups appropriate for tty session
#      - runs standard startup activities (e.g., check mail)
#      - source user file ~/.startup.tty, if it exists

# 
# Altered by john on Feb 20, 2022 to bypass /usr/athena/lib/dotfiles
# 
# export initdir=/usr/athena/lib/dotfiles
# 
# if [ -r $initdir/zsh_login ]
# then
#         source $initdir/zsh_login
# else
# 	echo "Warning: System-wide initialization files not found."
#        	echo "Login initialization has not been performed."
# fi

# 
# Altered by john on July 16, 2022 to source .environment
# 
# Source the ~/.zshenv file if it exists
if [ -r ~/.zshenv ]
then
	source ~/.zshenv
fi

# 
# Altered by john on Feb 20, 2022 to bypass /usr/athena/lib/dotfiles
# 
# Source the ~/.zsh_login.mine file if it exists
if [ -r ~/.zsh_login.mine ]
then
	source ~/.zsh_login.mine
fi

# If you want to ADJUST the login initialization sequence, create a
# .startup.tty file in your home directory, with commands to run activities
# once the environment has been set up (znol, emacs, etc.).

# To adjust the environment initialization sequence, see the instructions in
# the .zshrc file.

# If you want to CHANGE the login initialization sequence, revise this .zsh_login
# file (the one you're reading now).  You may want to copy the contents of
# the system-wide login file as a starting point.
#
# WARNING: If you revise this .zsh_login file, you will not automatically
# get any changes that may be made to the system-wide file at 
# a later date.  Be sure you know what you are doing.
