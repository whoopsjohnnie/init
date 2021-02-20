#!/bin/sh

ln -sf /usr/share/zoneinfo/America/Los_Angeles /etc/localtime
ls -al /etc/localtime

hwclock --systohc

# 
cat << EOF > /etc/locale.gen
en_US.UTF-8 UTF-8

EOF

cat /etc/locale.gen
locale-gen

# 
cat << EOF > /etc/locale.conf
LANG=en_US.UTF-8
LC_MESSAGES=en_US.UTF-8

EOF

cat /etc/locale.conf

# 
cat << EOF > /etc/vconsole.conf
KEYMAP=us

EOF

cat /etc/vconsole.conf

# 
cat << EOF > /etc/hosts
127.0.0.1   localhost
::1         localhost

127.0.1.1   archlinux.local archlinux

EOF


yes | pacman -S nano
yes | pacman -S vim

yes | pacman -S zsh

yes | pacman -S networkmanager
yes | pacman -S sudo
yes | pacman -S grub
yes | pacman -S efibootmgr dosfstools os-prober mtools

mkdir -p /boot/EFI
mount /dev/sda1 /boot/EFI || true
grub-install --target=x86_64-efi --bootloader-id=grub_uefi --recheck
grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable NetworkManager

# 
cat << EOF > /etc/sudoers
root ALL=(ALL) ALL
%wheel ALL=(ALL) ALL
# sudo group is not available by default
# %sudo ALL=(ALL) ALL
@includedir /etc/sudoers.d

EOF

# Prompt for root password
passwd

useradd arch
usermod -aG wheel,storage arch

# Prompt for user password
passwd arch
