
# Resolution on my MacBook Pro 13 inch
xrandr -s 1440x900

# I bet I had a black background with some image applied. 
# In .steprc I have a ref to a Gigerdir folder, I bet this contained desktop images
# ~/Public/Gigerdir/Giger/
xsetroot -solid "#000000"

xrdb -merge ~/.Xresources

exec afterstep
