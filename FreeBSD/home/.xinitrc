
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

# I know I settled on AfterStep (1.x) or WindowMaker on DEC UNIX,
# for some reason CDE wasn't available, or at least I have no
# memory of ever running it except on Solaris at Nada
exec afterstep

# I do remember playing around with fvwm, fvwm2, fvwm95(!), twm/mwm(?).
# I cannot find any of these dotfiles but there is a fvwm2 config found on
# the KTH AFS cell here.
# exec fvwm2
