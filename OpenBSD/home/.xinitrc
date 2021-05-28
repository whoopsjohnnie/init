
#!/bin/sh

# Set locales
export CHARSET=UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

# Resolution on my MacBook Pro 13 inch
xrandr -s 1440x900

# I bet I had a black background with some image applied. 
# In .steprc I have a ref to a Gigerdir folder, I bet this contained desktop images
# ~/Public/Gigerdir/Giger/
# xsetroot -solid "#505075"
# xsetroot -solid "#505075"

xrdb -merge ~/.Xresources

# xterm &
# aterm &

# xearth &

# exec afterstep
# exec fvwm2
exec mwm

#
# exec /usr/local/dt/bin/dtsession
# exec /usr/local/dt/bin/Xsession

# 
# exec mate-session

# export AMIWM_HOME=/usr/home/john/Documents/development/init/Digital_UNIX/misc/hacks/lib/amiwm/
# echo "$AMIWM_HOME"
# exec amiwm
