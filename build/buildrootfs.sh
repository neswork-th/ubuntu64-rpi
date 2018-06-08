#!/bin/sh
mkdir build
cd build
echo "prepare rootfs"
sudo apt-get install debootstrap
sudo mkdir rootfs
sudo debootstrap --arch arm64 bonic rootfs
cp -b /etc/resolv.conf rootfs/etc
chroot rootfs apt-get update
chroot rootfs apt-get upgrade
chroot rootfs apt-get install sudo ssh net-tools ethtool wireless-tools init xorg network-manager iputils-ping rsyslog alsa-utils bash-completion resolvconf ifupdown tzdata --no-install-recommends

echo "Plaese set your user password"
chroot adduser ubuntu && addgroup ubuntu adm && addgroup ubuntu sudo && addgroup ubuntu audio

echo "ubuntu" >> rootfs/etc/hostname
echo "127.0.0.1 localhost" >> rootfs/etc/hosts
echo "127.0.0.1 ubuntu" >> rootfs/etc/hosts

cat <<"EOM" >rootfs/etc/fstab
proc            /proc           proc    defaults                  0       0
/dev/mmcblk0p1  /boot           vfat    defaults                  0       2
/dev/mmcblk0p2  /               ext4    defaults,noatime          0       1
EOM
