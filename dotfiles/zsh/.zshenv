# Uncomment the next line if you want to use the old Motif based 
# windowmanager MWM that was the default before 980818.
# export DECWINDOWS

# To use a windowmanager other than mwm or fvwm2 with the site-
# specific configuration uncomment the next line.
# export WINDOW_MANAGER="mwm"
# export WINDOW_MANAGER="twm"
# export WINDOW_MANAGER="fvwm2"

# If the environment variable FVWM2WINDOWS is set fvwm2 is started
# with the site-specific (Elektro-specific) configuration, allowing
# dynamic menus and such. Note that you must have the module for
# fvwm2 in order to get this to work.
# export FVWM2WINDOWS

# Load modules. The module fvwm2 is needed if FVWM2WINDOWS is set.
# module add fvwm2

# AfterStep
# I know I settled on AfterStep (1.x) or WindowMaker on DEC UNIX,
# for some reason CDE wasn't available, or at least I have no
# memory of ever running it except on Solaris at Nada
# exec afterstep
# export WINDOW_MANAGER="afterstep"

# FVWM/2/95
# I do remember playing around with fvwm, fvwm2, fvwm95(!), twm/mwm(?).
# I cannot find any of these dotfiles but there is a fvwm2 config found on
# the KTH AFS cell here.
# exec fvwm2
# export WINDOW_MANAGER="fvwm2"

# CDE
# I did eventually find some CDE settings and old sessions on DEC UNIX,
# so I must have run that at some time. Please see the .dt.digital folder here.
# I know I ran CDE almost all the time on Solaris. I did find some WindowMaker
# config files in my old Solaris home so I must have played around with that too.
## exec /usr/local/dt/bin/dtsession
# exec /usr/local/dt/bin/Xsession
# export WINDOW_MANAGER="/usr/local/dt/bin/Xsession"

# KDE
# KDE is the Slackware default
# export WINDOW_MANAGER="startplasma-x11"

HOSTNAME=$(hostname)

# if [ -n $HOSTNAME ]
if [ "$HOSTNAME" = "cola" ]
then

# export WINDOW_MANAGER="mwm"
export WINDOW_MANAGER="fvwm2"
# export WINDOW_MANAGER="/usr/local/dt/bin/Xsession"

elif [ "$HOSTNAME" = "twix" ]
then

export WINDOW_MANAGER="/usr/local/dt/bin/Xsession"

elif [ "$HOSTNAME" = "mars" ]
then

export WINDOW_MANAGER="/usr/local/dt/bin/Xsession"

elif [ "$HOSTNAME" = "pepsi" ]
then

export WINDOW_MANAGER="/usr/local/dt/bin/Xsession"

elif [ "$HOSTNAME" = "raider" ]
then

export CONFHOST=$(hostname)
export XDG_CONFIG_HOME=${HOME}/.hostconfig/${CONFHOST}/

# 
# Linux Mint 20
#
# # env -u SESSION_MANAGER
# unset SESSION_MANAGER
# # env -u DBUS_SESSION_BUS_ADDRESS
# unset DBUS_SESSION_BUS_ADDRESS
# export WINDOW_MANAGER="cinnamon-session"

# 
# Kubuntu 20.04 
#
# export KDE_FULL_SESSION=1
# export KDE_SESSION_VERSION=5
# export XDG_SESSION_DESKTOP=KDE
# export XDG_DATA_DIRS=/usr/share/plasma:/usr/local/share:/usr/share:/var/lib/snapd/desktop
# export XDG_CONFIG_DIRS=/etc/xdg/xdg-plasma:/etc/xdg:/usr/share/kubuntu-default-settings/kf5-settings
# export WINDOW_MANAGER="startplasma-x11"

# 
# Debian 12 Gnome
#
# # export GNOME_SHELL_SESSION_MODE=ubuntu
# # export XDG_CURRENT_DESKTOP=ubuntu:GNOME
# export XDG_DATA_DIRS=/usr/local/share:/usr/share
# export XDG_CONFIG_DIRS=/etc/xdg
# export WINDOW_MANAGER="/usr/bin/gnome-session"

# 
# Awesome WM
#
export WINDOW_MANAGER="awesome"

elif [ "$HOSTNAME" = "snickers" ]
then

export CONFHOST=$(hostname)
export XDG_CONFIG_HOME=${HOME}/.hostconfig/${CONFHOST}/

# 
# Awesome WM
#
export WINDOW_MANAGER="awesome"

elif [ "$HOSTNAME" = "piggelin" ]
then

export CONFHOST=$(hostname)
export XDG_CONFIG_HOME=${HOME}/.hostconfig/${CONFHOST}/

# 
# Awesome WM
#
export WINDOW_MANAGER="awesome"

else

export CONFHOST=$(hostname)
export XDG_CONFIG_HOME=${HOME}/.hostconfig/${CONFHOST}/

# Gnome
# Gnome is the Ubuntu default
#export WINDOW_MANAGER="gnome-shell"

export GNOME_SHELL_SESSION_MODE=ubuntu
export XDG_CURRENT_DESKTOP=ubuntu:GNOME
export XDG_DATA_DIRS=/usr/share/ubuntu:/usr/local/share:/usr/share:/var/lib/snapd/desktop
export XDG_CONFIG_DIRS=/etc/xdg/xdg-ubuntu:/etc/xdg
export WINDOW_MANAGER="/usr/bin/gnome-session --session=ubuntu"

fi
# fi

