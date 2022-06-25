# Prototype user .bashrc file

#
# Ported from csh/tcsh to bash by john on June 23, 2021
# 

# Last modified by patriks/910730

# This file sources a system-wide tcshrc file, which:
#      - sets up standard environment variables
#      - sources user file ~/.environment, if it exists
#      - sets standard path, OR sources user file ~/.path, if it exists
#      - sets up standard cshell variables, aliases, etc.
#      - source user file ~/.bashrc.mine, if it exists

# 
# Altered by john on Feb 20, 2022 to bypass /usr/athena/lib/dotfiles
# 
# export initdir=/usr/athena/lib/dotfiles
# 
# if [ -r $initdir/bashrc ]
# then
#         source $initdir/bashrc
# else
# 	echo "Warning: System-wide initialization files not found."
# 	echo "Bash Shell initialization has not been performed."
# fi

# 
# Altered by john on Feb 20, 2022 to bypass /usr/athena/lib/dotfiles
# 
# Source the ~/.bashrc.mine file if it exists
if [ -r ~/.bashrc.mine ]
then
	source ~/.bashrc.mine
fi

# If you want to ADJUST the bash initialization sequence, create any of 
# the following files (as appropriate) in your home directory, with commands
# to achieve the effect listed:
#
#      .environment - setup session environment (set environmental variables, 
#                     attach lockers, etc.)
#      .bashrc.mine - setup cshell environment (set shell variables, aliases,
#                     unset system defaults, etc.)
                      
# If you want to CHANGE the bash initialization sequence, revise this .bashrc
# file (the one you're reading now).  You may want to copy the contents of
# the system-wide tcshrc file as a starting point.
#
# WARNING: If you revise this .bashrc file, you will not automatically
# get any changes that may be made to the system-wide file at 
# a later date.  Be sure you know what you are doing.

xset -b

source ~/.bash_environment

