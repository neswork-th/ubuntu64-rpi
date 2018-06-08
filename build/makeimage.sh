#!/bin/sh
sudo apt-get install -y dosfstools dump parted kpartx

sudo dd if=/dev/zero of=image.img bs=1M count=2100
sudo parted image.img mktablel msdos
sudo parted image.img --script -- mkpart primary fat32 8192s 2682879s
sudo parted image.img --script -- mkpart primary ext4 2682880s -1

sudo kpartx image.img
partBoot= $(ls /dev/mapper | grep p1)
partRoot= $(ls /dev/mapper | grep p2)
sudo mkfs.vfat $partBoot
sudo mkfs.ext4 $partRoot
sudo mount $partRoot /mnt
sudo cp -rfp rootfs/* /mnt
sudo mount $partBoot /mnt/boot
sudo cp -rfp boot/* /mnt/boot
sudo umount /mnt/boot
sudo umount /mnt
sudo sync
sudo kpartx -d image.img
