#!/bin/bash -f

#
# Ported from csh/tcsh to bash by john on June 23, 2021
# 

# This file sources a system-wide logout file, which:
#	- destroys kerberos tickets
#	- sources user file ~/.logout.mine, if it exists

set initdir=/usr/athena/lib/dotfiles

if (-r $initdir/logout) then
        source $initdir/logout
else
	if ($?prompt) then		# Don't echo if noninteractive
	  echo "Warning: System-wide cleanup files not found."
	  echo "Logout cleanup will not been performed."
	endif
endif

# WARNING: If you revise this .logout file, you will not automatically
# get any changes that the system managers  may make to the system-wide 
# file at a later date.  Be sure you know what you are doing.
