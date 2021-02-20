#!/bin/sh

set -x

mkfs.fat -F32 /dev/sda1

swapoff /dev/sda2 || true
mkswap /dev/sda2
# swapon /dev/sda2

mkfs.ext4 /dev/sda3
