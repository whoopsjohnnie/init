#! /bin/sh
#
# $Header: /afs/.nada.kth.se/sun4x_56/etc/dt/config/RCS/Xsession.nada2,v 1.1 1998/08/21 13:25:59 klas Exp $
#
# Nada global .xinitrc
#

#if [ -f $HOME/.xinitrc ] ; then
#	chmod +x $HOME/.xinitrc
#	exec $HOME/.xinitrc
#fi

	
if [ -f $HOME/.Xresources ]; then
  xrdb $HOME/.Xresources
elif [ -f /etc/dt/config/nada.default.Xresources ]; then
  xrdb /etc/dt/config/nada.default.Xresources 
fi

if [ -f $HOME/.Xresources_hook ]; then
  xrdb -merge $HOME/.Xresources_hook
fi

#
# Default Nada keyboard remapping
#
if [ -f /usr/local/bin/X11/xnada-remap ]; then
  /usr/local/bin/X11/xnada-remap
fi

#
# If user defines NO_DEFAULT_APPS in
# this hook only the hook will be run.
#

if [ -f $HOME/.xinitrc_hook ]; then
  . $HOME/.xinitrc_hook
fi

if [ ! "$NO_DEFAULT_APPS" ]; then
  xset b 1 1 1 # bell percent=1 pitch=1 duration=1
  # If this is a workstation you need to watch console output.
  display=`expr "$DISPLAY" : "\(.*\)[:]"`
  if [ x$display = x ]; then
    xconsole -geometry +0+0 -icon -verbose &
  elif [ $display = unix ]; then
    xconsole -geometry +0+0 -icon -verbose &
  fi
  # Start window manager
  if [ "$WINDOW_MANAGER" ]; then
    $WINDOW_MANAGER &
  else
    XFILESEARCHPATH=$XFILESEARCHPATH:/pkg/motif/2.1/lib/X11/app-defaults
    export XFILESEARCHPATH
    /pkg/motif/2.1/bin/mwm &					# Use Motif window manager.
  fi
  # Default applications
  xclock -geometry 120x120-0+0 &		# Upper right.
  emacs -i -geometry 80x32-0-0 &
  xterm -T Terminal -ls -geometry 80x32+0+0 &
#
# No xlogout in Solaris 8...
# xlogout -geometry -142+0
#
  xterm -title "XLOGOUT" -geometry 80x4-0+0
fi
