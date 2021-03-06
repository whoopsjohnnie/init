#!/bin/sh

# GBs
DISKSIZE=20

SECTORSIZE=512

MEGABYTE=2048
GIGABYTE=$(( 1024 * MEGABYTE ))

EFISTART=$(( 1 * MEGABYTE ))
EFISIZE=$(( 1 * GIGABYTE - 1 * MEGABYTE ))

SWAPSTART=$(( EFISTART + EFISIZE ))
SWAPSIZE=$(( 1 * GIGABYTE ))

ROOTSTART=$(( SWAPSTART + SWAPSIZE ))
ROOTSIZE=$(( (DISKSIZE - 2) * GIGABYTE  ))

cat << EOF > ./sda.sfdisk.out
unit: sectors
/dev/sda1 : start= ${EFISTART}, size= ${EFISIZE}, Id=EF
/dev/sda2 : start= ${SWAPSTART}, size= ${SWAPSIZE}, Id=82
/dev/sda3 : start= ${ROOTSTART}, size= ${ROOTSIZE}, Id=83

EOF

cat ./sda.sfdisk.out

/sbin/sfdisk -l /dev/sda
/sbin/sfdisk /dev/sda < ./sda.sfdisk.out
