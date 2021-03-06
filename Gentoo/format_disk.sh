#!/bin/sh

mkfs.fat -F32 /dev/sda1

# mkfs.ext2 /dev/sda2
# mkfs.ext4 /dev/sda2
mkfs.fat -F32 /dev/sda2

swapoff /dev/sda3 || true
mkswap /dev/sda3
# swapon /dev/sda3

mkfs.ext4 /dev/sda4
