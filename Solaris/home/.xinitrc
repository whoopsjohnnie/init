#! /bin/csh
#
# Example .xinitrc file
#

#  Read Xresource database
#
if ( -r $HOME/.Xresources ) then
  xrdb $HOME/.Xresources
else if ( -r /usr/local/etc/xdm/default.Xresources ) then
  xrdb /usr/local/etc/xdm/default.Xresources
  if ( -r $HOME/.Xresources_hook ) then
    xrdb -merge $HOME/.Xresources_hook
  endif
endif

#  Keyboard remapping
#
if ( -r $HOME/.xmodmaprc ) then
  xmodmap $HOME/.xmodmaprc
else if ( -r /usr/local/bin/X11/xnada-remap ) then
  /usr/local/bin/X11/xnada-remap
endif

#  Here you can set the color of the background
#xsetroot -solid tan
#  or load a background image
#/usr/local/hacks/bin/xv -rmode 9 -quit /usr/local/hacks/graphic/bitmaps/misc/sky.gif
 
#  Set bell parameters (normally you can only vary if you want it on or off...)
xset b 1 1 1    # bell percent=1 pitch=1 duration=1


#  Start some initial programs

  xclock -geometry 120x120-0+0 &
  xconsole -geometry +0+0 -unmapped &
  emacs -i -geometry 80x32-0-0 &
  xterm -T Terminal -ls -geometry 80x32+0+0 &

#  Start the window manager
mwm &   # Motif Window Manager
#  Or try one of these window managers
# tvtwm & # Tom's Virtual Tab Window Manager
# fvwm &  # F? Virtual Window Manager
# olwm &  # Open Look Window Manager
# gwm &   # Generic Window Manager, standard profile
# gwm -f vtwm & # Generic Window Manager, vtwm profile

# Have this last, and *not* in the background. When it exits you get logged out.
xlogout -geometry -142+0