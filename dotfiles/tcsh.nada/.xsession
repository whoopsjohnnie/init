#! /bin/csh
#
# Example .xinitrc file
#

# 
# Charset och locale
# 
# EN/US Amerikanska
# export CHARSET="UTF-8"
# export LANG="en_US.UTF-8"
# export LC_ALL="en_US.UTF-8"
# export LC_CTYPE="en_US.UTF-8"

# SV/SE Svenska
export CHARSET="UTF-8"
export LANG="sv_SE.UTF-8"
export LC_ALL="sv_SE.UTF-8"
export LC_CTYPE="sv_SE.UTF-8"

# Resolution on my MacBook Pro 13 inch
xrandr -s 1440x900

#  User environment
if ( -r $HOME/.environment ) then
    source $HOME/.environment
endif

#  Read Xresource database
# if ( -r $HOME/.Xresources ) then
#   xrdb $HOME/.Xresources
# endif
xrdb -load ~/.Xdefaults

#  Keyboard remapping
if ( -r $HOME/.xmodmaprc ) then
  xmodmap $HOME/.xmodmaprc
endif

#  User modules
if ( -r $HOME/.modules ) then
    source $HOME/.modules
endif

#  If there is a variable PREPATH, put it first in the PATH
if ( $?PREPATH ) then
  setenv PATH $PREPATH":"$PATH
endif

# Set bell parameters
xset b 1 1 1 # bell percent=1 pitch=1 duration=1

# If this is a workstation you need to watch console output.
# display=`expr "$DISPLAY" : "\(.*\)[:]"`
# if [ x$display = x ]; then
#   xconsole -geometry +0+0 -unmapped &
# elif [ $display = unix ]; then
#   xconsole -geometry +0+0 -unmapped &
# fi

# Start window manager
# if [ "$WINDOW_MANAGER" ]; then
#   $WINDOW_MANAGER &
# else
#   mwm &					# Use Motif window manager.
# fi

# Default applications
# clock -geometry 120x120-0+0 &
# emacs -i -geometry 80x32-0-0 &
xterm -T Terminal -ls -geometry 80x32+0+0 &

# This should not be in the background. You get logged out when it exits.
# xlogout -geometry -142+0

# exec mwm
# exec fvwm2
exec wmaker

