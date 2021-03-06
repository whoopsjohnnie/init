#!/bin/sh

# 
# https://wiki.gentoo.org/wiki/Handbook:AMD64/Installation/Disks
# 
#    Device Boot    Start       End    Blocks   Id  System
# /dev/sda1             1         3      5198+  ef  EFI (FAT-12/16/32)
# /dev/sda2   *         3        14    105808+  83  Linux
# /dev/sda3            15        81    506520   82  Linux swap
# /dev/sda4            82      3876  28690200   83  Linux
# 

# GBs
DISKSIZE=20

SECTORSIZE=512

MEGABYTE=2048
GIGABYTE=$(( 1024 * MEGABYTE ))

# 4MB
EFISTART=$(( 1 * MEGABYTE ))
EFISIZE=$(( 3 * MEGABYTE ))

# 128 MB
BOOTSTART=$(( EFISTART + EFISIZE ))
BOOTEND=$(( 128 * MEGABYTE ))

# 892 MB 
SWAPSTART=$(( BOOTSTART + BOOTEND ))
SWAPSIZE=$(( 892 * MEGABYTE ))

ROOTSTART=$(( SWAPSTART + SWAPSIZE ))
ROOTSIZE=$(( (DISKSIZE - 2) * GIGABYTE  ))

cat << EOF > ./sda.sfdisk.out
unit: sectors
/dev/sda1 : start= ${EFISTART}, size= ${EFISIZE}, Id=EF
/dev/sda2 : start= ${BOOTSTART}, size= ${BOOTEND}, Id=83
/dev/sda3 : start= ${SWAPSTART}, size= ${SWAPSIZE}, Id=82
/dev/sda4 : start= ${ROOTSTART}, size= ${ROOTSIZE}, Id=83

EOF

cat ./sda.sfdisk.out

/sbin/sfdisk -l /dev/sda
/sbin/sfdisk /dev/sda < ./sda.sfdisk.out
