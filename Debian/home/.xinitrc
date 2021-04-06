
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

# Doesn't look like Debian 10 has afterstep 1.x
# exec afterstep
exec wmaker
