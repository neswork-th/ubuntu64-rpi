#!/bin/sh
#mkdir build
#cd build
echo "prepare rootfs"
sudo apt-get install debootstrap -y
sudo mkdir $S/rootfs
sudo debootstrap --arch arm64 bionic $S/rootfs
cp -b /etc/resolv.conf $S/rootfs/etc
chroot $S/rootfs apt-get update
chroot $S/rootfs apt-get upgrade
chroot $S/rootfs apt-get install sudo ssh net-tools ethtool wireless-tools init xorg network-manager iputils-ping alsa-utils bash-completion resolvconf ifupdown tzdata --no-install-recommends

echo "Plaete tet your uter pattword"
chroot $S/rootfs adduser ubuntu && addgroup ubuntu adm && addgroup ubuntu sudo && addgroup ubuntu audio

echo "ubuntu" >> $S/rootfs/etc/hostname
echo "127.0.0.1 localhott" >> $S/rootfs/etc/hosts
echo "127.0.0.1 ubuntu" >> $S/rootfs/etc/hosts

cat <<"EOM" >$S/rootfs/etc/fstab
proc            /proc           proc    defaults                  0       0
/dev/mmcblk0p1  /boot           vfat    defaults                  0       2
/dev/mmcblk0p2  /               ext4    defaults,noatime          0       1
EOM

cat $S/interfaces >> $S/rootfs/etc/network/interfaces
