#!/bin/sh
sudo apt-get install -y dosfstools dump parted kpartx

sudo dd if=/dev/zero of=raspberrypi.img bs=1M count=2100
sudo parted raspberrypi.img mktablel msdos
sudo parted raspberrypi.img --script -- mkpart primary fat32 8192s 2682879s
sudo parted raspberrypi.img --script -- mkpart primary ext4 2682880s -1

sudo kpartx raspberrypi.img
partBoot= $(ls /dev/mapper | grep p1)
partRoot= $(ls /dev/mapper | grep p2)
sudo mkfs.vfat $partBoot
sudo mkfs.ext4 $partRoot
sudo mount -t vfat $partBoot /mnt
sudo cp -rfp boot/* /mnt
sudo umount /media
sudo mount -t ext4 $partRoot /media/
cd /media
sudo dump -0uaf - / | sudo restore -rf -
cd
sudo umount /media
sudo kpartx -d $loopdevice
sudo losetup -d $loopdevice