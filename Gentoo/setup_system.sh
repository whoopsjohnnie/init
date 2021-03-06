#!/bin/sh

source /etc/profile
export PS1="(chroot) ${PS1}"

mount /dev/sda2 /boot

emerge-webrsync

# emerge --sync
emerge --sync --quiet

# eselect news list
# eselect news read

# eselect profile list
eselect profile set 1
# eselect profile set 2
# eselect profile set 3
# eselect profile set 5
# eselect profile set 6

emerge --ask --verbose --update --deep --newuse @world


# ls /usr/share/zoneinfo
echo "America/Los_Angeles" > /etc/timezone

emerge --config sys-libs/timezone-data

# 
cat << EOF > /etc/locale.gen
en_US.UTF-8 UTF-8

EOF

cat /etc/locale.gen
locale-gen

# eselect locale list
eselect locale set 4


# 
env-update && source /etc/profile && export PS1="(chroot) ${PS1}"


# 
emerge --ask sys-kernel/gentoo-sources
emerge --ask sys-apps/pciutils

# build kernel
# nano -w /etc/fstab
# genkernel all

# 
# emerge --ask sys-kernel/installkernel-systemd-boot
emerge --ask sys-kernel/installkernel-gentoo

# emerge --ask sys-kernel/gentoo-kernel
emerge --ask sys-kernel/gentoo-kernel-bin

# 
emerge --depclean
# emerge --ask @module-rebuild

# 
# emerge --config sys-kernel/gentoo-kernel
emerge --config sys-kernel/gentoo-kernel-bin

mkdir -p /etc/modules-load.d
touch /etc/modules-load.d/network.conf

# 
emerge --ask sys-kernel/linux-firmware

# 
emerge --ask --noreplace net-misc/netifrc
emerge --ask net-misc/dhcpcd
# emerge --ask net-wireless/iw net-wireless/wpa_supplicant

cat << EOF > /etc/conf.d/net
config_eth0="dhcp"

EOF

cd /etc/init.d
ln -s net.lo net.eth0
rc-update add net.eth0 default


# 
emerge --ask app-admin/sysklogd
rc-update add sysklogd default

emerge --ask sys-process/cronie
rc-update add cronie default
crontab /etc/crontab

emerge --ask sys-apps/mlocate

rc-update add sshd default


# 
# emerge --ask --verbose sys-boot/grub:2
echo 'GRUB_PLATFORMS="efi-64"' >> /etc/portage/make.conf
emerge --ask sys-boot/grub:2

grub-install --target=x86_64-efi --efi-directory=/boot
grub-mkconfig -o /boot/grub/grub.cfg


# Prompt for root password
passwd




# 
emerge --ask app-admin/sudo

cat << EOF > /etc/sudoers
root ALL=(ALL) ALL
%wheel ALL=(ALL) ALL
# sudo group is not available by default
# %sudo ALL=(ALL) ALL
@includedir /etc/sudoers.d

EOF


useradd -m gentoo
usermod -aG wheel gentoo

# Prompt for user password
passwd gentoo

