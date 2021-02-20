#!/bin/sh

pacstrap /mnt base linux linux-firmware

genfstab -U /mnt >> /mnt/etc/fstab
cat /mnt/etc/fstab

# 
cp ./setup_system.sh /mnt/root/

arch-chroot /mnt
