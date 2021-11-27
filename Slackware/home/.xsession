#!/bin/sh

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

# I bet I had a black background with some image applied. 
# In .steprc I have a ref to a Gigerdir folder, I bet this contained desktop images
# ~/Public/Gigerdir/Giger/
# xsetroot -solid "#505075"
# xsetroot -solid "#505075"

# Ladda .environment
. ~/.bash_environment

# Ladda Xdefaults
# xrdb -merge ~/.Xresources
xrdb -load ~/.Xdefaults

# Exekvera .starup.X
. $HOME/.startup.X

# Starta en console
xconsole -iconic &

# Starta fönsterhanteraren
# DET ÄR FÖNSTERHANTERAREN SOM ÄR MASTER PROCESS NÄR DEN AVSLUTAS LOGGAS MAN UT!!!

# if ( $?FVWM2WINDOWS ) then
# echo "FVWM2WINDOWS is set, loading standard FVWM2" > /dev/console
# exec fvwm2
# endif

# if ( $?WINDOW_MANAGER ) then
echo "WINDOW_MANAGER is set to $WINDOW_MANAGER" # > /dev/console
exec $WINDOW_MANAGER # >& /dev/console
# endif
