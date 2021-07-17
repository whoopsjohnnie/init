
# 
# 
# Adventures in Slackware.
# 
# I fondly remember installing and running Slackware the years of 1997-1999, I had a classmate in the electrical 
# engineering departement at KTH who was a devoted Slackware user. I don't remember which Slackware versions I 
# ran back then, but I do have an old InfoMagic CD set from around that time, I think the 1998 version which 
# according to the back came with Slackware 3.4 and kernel 2.0.30. Anyhow, I would have used something in the 3.x 
# line, before the switch to 7.0 in 2000, around which time I switched to Debian 2.2 Potato (side note, Debian 
# remained my favorite for years after).
# 
# I recently re-discovered Slackware in the Covid pandemic of 2020, and while locked up at home have been running 
# 12.2, 14.2 and current (pre 15) as VMs in VMWare. As long as I remember, I have of course named all my Slackware
# boxen 'slacker'. 
# 
# Skriven i Vim 8.2, på Slackware 14.2, en solig sommarsöndag på Adelsö, Ekerö utanför Stockholm, midsommarhelgen 2021. 
# Söndagen den 27e juni 2021
# 
# 

VERSION="14.2"



# 
# Slackware wallpapers slackbuild
# 
# https://slackbuilds.org/repository/14.2/desktop/slack-wallpapers/
# 
cd /tmp/

wget https://slackbuilds.org/slackbuilds/${VERSION}/desktop/slack-wallpapers.tar.gz
tar zxvf slack-wallpapers.tar.gz
cd slack-wallpapers
wget https://github.com/skaendo/slack-wallpapers/archive/1.0/slack-wallpapers-1.0.tar.gz

# sudo MATE=yes && XFCE=yes && LILo=yes && ./slack-wallpapers.SlackBuild
sudo MATE=yes XFCE=yes LILO=yes ./slack-wallpapers.SlackBuild

sudo /sbin/installpkg /tmp/slack-wallpapers-1.0-noarch-2_SBo.tgz



# 
# Slackware MATE desktop build
# 
cd /tmp/

git clone https://github.com/mateslackbuilds/msb.git
cd /tmp/msb/

su ./mate-build-deps.sh
su ./

