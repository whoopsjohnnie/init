# Prototype user .zshrc file

#
# This is my original tcsh shell config from the Digital UNIX kth.se AFS cell
#
# /afs/kth.se/home/e97/e97_jog/.tcshrc, Jan 17 2000, 08:33:08
#

#
# Ported from csh/tcsh to bash by john on June 23, 2021
# Ported to from bash to zsh by john on Feb 20, 2022
# 

# Last modified by patriks/910730

# This file sources a system-wide tcshrc file, which:
#      - sets up standard environment variables
#      - sources user file ~/.environment, if it exists
#      - sets standard path, OR sources user file ~/.path, if it exists
#      - sets up standard cshell variables, aliases, etc.
#      - source user file ~/.zshrc.mine, if it exists

# 
# Altered by john on Feb 20, 2022 to bypass /usr/athena/lib/dotfiles
# 
# export initdir=/usr/athena/lib/dotfiles
# 
# if [ -r $initdir/zshrc ]
# then
#         source $initdir/zshrc
# else
# 	echo "Warning: System-wide initialization files not found."
# 	echo "Zsh Shell initialization has not been performed."
# fi

# 
# Altered by john on Feb 20, 2022 to bypass /usr/athena/lib/dotfiles
# 
# Source the ~/.zshrc.mine file if it exists
if [ -r ~/.zshrc.mine ]
then
	source ~/.zshrc.mine
fi

# If you want to ADJUST the zsh initialization sequence, create any of 
# the following files (as appropriate) in your home directory, with commands
# to achieve the effect listed:
#
#      .environment - setup session environment (set environmental variables, 
#                     attach lockers, etc.)
#      .zshrc.mine - setup cshell environment (set shell variables, aliases,
#                     unset system defaults, etc.)
                      
# If you want to CHANGE the zsh initialization sequence, revise this .zshrc
# file (the one you're reading now).  You may want to copy the contents of
# the system-wide tcshrc file as a starting point.
#
# WARNING: If you revise this .zshrc file, you will not automatically
# get any changes that may be made to the system-wide file at 
# a later date.  Be sure you know what you are doing.

#
# Gömmer irriterande felmeddelanden i Slackware 15, Adelsö Juli 2022
# xset:  unable to open display ":0"
#
# xset -b
xset -b > /dev/null 2>&1
