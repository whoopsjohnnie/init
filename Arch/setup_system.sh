#!/bin/sh

ln -sf /usr/share/zoneinfo/America/Los_Angeles /etc/localtime
ls -al /etc/localtime

hwclock --systohc

echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
cat /etc/locale.gen
locale-gen

echo "LANG=en_US.UTF-8" > /etc/locale.conf
echo "LC_MESSAGES=en_US.UTF-8" >> /etc/locale.conf
cat /etc/locale.conf

echo "KEYMAP=us" > /etc/vconsole.conf
cat /etc/vconsole.conf

echo "127.0.0.1 localhost" > /etc/hosts
echo "::1 localhost" >> /etc/hosts
echo "127.0.1.1 archlinux.local archlinux" >> /etc/hosts

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
