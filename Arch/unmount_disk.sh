#!/bin/sh

swapoff /dev/sda2 || true

umount /mnt || true
