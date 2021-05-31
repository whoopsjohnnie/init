
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
xsetroot -solid "#505075"

xrdb -merge ~/.Xresources

# xterm &
# aterm &

# xearth &

# AfterStep
# I know I settled on AfterStep (1.x) or WindowMaker on DEC UNIX,
# for some reason CDE wasn't available, or at least I have no
# memory of ever running it except on Solaris at Nada
# exec afterstep

# FVWM/2/95
# I do remember playing around with fvwm, fvwm2, fvwm95(!), twm/mwm(?).
# I cannot find any of these dotfiles but there is a fvwm2 config found on
# the KTH AFS cell here.
exec fvwm2

# CDE
# I did eventually find some CDE settings and old sessions on DEC UNIX,
# so I must have run that at some time. Please see the .dt.digital folder here.
# I know I ran CDE almost all the time on Solaris. I did find some WindowMaker
# config files in my old Solaris home so I must have played around with that too.
## exec /usr/local/dt/bin/dtsession
# exec /usr/local/dt/bin/Xsession 
