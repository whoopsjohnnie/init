#!/bin/sh

set -x

swapoff /dev/sda2 || true

umount /mnt || true
