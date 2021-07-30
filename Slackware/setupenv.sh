#!/bin/sh

# cp ./home/.Xresources ~/
cp ./home/.Xdefaults ~/

# rm -rf ~/.config
# cp -r ./home/.config ~/

# cp ./home/.dtprofile ~/
# cp -r ./home/.dt ~/

cp ./home/.emacs ~/

rm -rf ~/.emacs.d
cp -r ./home/.emacs.d ~/

# cp ./home/.gtkrc ~/
# cp ./home/.gtkrc_afterstep ~/

cp ./home/.bash_environment ~/
cp ./home/.bash_login ~/
cp ./home/.bash_logout ~/
cp ./home/.bash_profile ~/

cp ./home/.mh_profile ~/

# cp ./home/.steprc ~/

cp ./home/.bashrc ~/
cp ./home/.bashrc.mine ~/

cp ./home/.startup.X ~/
cp ./home/.xinitrc ~/
cp ./home/.xsession ~/

cp ./home/.zephyr.subs ~/

cp ./home/README ~/
cp ./home/README.mail ~/

rm -rf ~/emacs
cp -r ./home/emacs ~/




# touch -d YYYY-MM-DDThh:mm:SS
# touch -d 1997-08-21T10:51:25 ~/.login
# touch -d 1997-08-21T10:51:25 ~/.logout

touch -d 1997-08-21T10:51:25 ~/.mh_profile

# touch -d 2000-07-25T07:31:57 ~/.steprc

# touch -d 2000-01-16T23:33:08 ~/.tcshrc
# touch -d 2000-10-31T14:42:51 ~/.tcshrc.mine

touch -d 1997-08-21T10:51:25 ~/.zephyr.subs

touch -d 1997-08-21T10:51:25 ~/README
touch -d 1997-08-21T10:51:25 ~/README.mail

touch -d 2001-02-05T03:40:44 ~/emacs/FSF-emacs

rm -f ~/timestamps
rm -rf ~/emacs/timestamps

# Must be after the above delete
touch -d 2002-11-12T07:42:00 ~/emacs
