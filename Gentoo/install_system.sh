#!/bin/sh

# https://wiki.gentoo.org/wiki/Handbook:AMD64/Installation/Stage

RELEASE=20210303T214503Z

date

ntpd -q -g

cd /mnt/gentoo

# wget https://bouncer.gentoo.org/fetch/root/all/releases/amd64/autobuilds/${RELEASE}/stage3-amd64-${RELEASE}.tar.xz

# openssl dgst -r -sha512 stage3-amd64-<release>.tar.?(bz2|xz)
openssl dgst -r -sha512 stage3-amd64-${RELEASE}.tar.xz

# sha512sum stage3-amd64-<release>.tar.?(bz2|xz)
sha512sum stage3-amd64-${RELEASE}.tar.xz

# tar xpvf stage3-*.tar.xz --xattrs-include='*.*' --numeric-owner
tar xpf stage3-amd64-${RELEASE}.tar.xz --xattrs-include='*.*' --numeric-owner

# mirrorselect -i -o >> /mnt/gentoo/etc/portage/make.conf

mkdir --parents /mnt/gentoo/etc/portage/repos.conf
cp /mnt/gentoo/usr/share/portage/config/repos.conf /mnt/gentoo/etc/portage/repos.conf/gentoo.conf

cp --dereference /etc/resolv.conf /mnt/gentoo/etc/

mount --types proc /proc /mnt/gentoo/proc
mount --rbind /sys /mnt/gentoo/sys
mount --make-rslave /mnt/gentoo/sys
mount --rbind /dev /mnt/gentoo/dev
mount --make-rslave /mnt/gentoo/dev

# test -L /dev/shm && rm /dev/shm && mkdir /dev/shm
# mount --types tmpfs --options nosuid,nodev,noexec shm /dev/shm
# chmod 1777 /dev/shm

chroot /mnt/gentoo /bin/bash
