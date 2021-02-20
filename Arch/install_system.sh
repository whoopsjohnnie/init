#!/bin/sh

set -x

# needed, but commenting out now
# pacstrap /mnt base linux linux-firmware

genfstab -U /mnt >> /mnt/etc/fstab
cat /mnt/etc/fstab

arch-chroot /mnt

# ln -sf /usr/share/zoneinfo/America/Los_Angeles /etc/localtime
# ls -al /etc/localtime
