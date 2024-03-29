#!/bin/bash -f

#
# This is my original tcsh shell config from the Digital UNIX kth.se AFS cell
#
# /afs/kth.se/home/e97/e97_jog/.logout, Aug 21 1997, 19:51:25
#

#
# Ported from csh/tcsh to bash by john on June 23, 2021
# 

# This file sources a system-wide logout file, which:
#	- destroys kerberos tickets
#	- sources user file ~/.bash_logout.mine, if it exists

# 
# Altered by john on Feb 20, 2022 to bypass /usr/athena/lib/dotfiles
# 
# set initdir=/usr/athena/lib/dotfiles
# 
# if (-r $initdir/logout) then
#         source $initdir/logout
# else
# 	if ($?prompt) then		# Don't echo if noninteractive
# 	  echo "Warning: System-wide cleanup files not found."
# 	  echo "Logout cleanup will not been performed."
# 	endif
# endif

# 
# Altered by john on Feb 20, 2022 to bypass /usr/athena/lib/dotfiles
# 
# Source the ~/.bash_logout.mine file if it exists
if [ -r ~/.bash_logout.mine ]
then
	source ~/.bash_logout.mine
fi

# WARNING: If you revise this .logout file, you will not automatically
# get any changes that the system managers  may make to the system-wide 
# file at a later date.  Be sure you know what you are doing.
