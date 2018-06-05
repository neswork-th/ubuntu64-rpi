#!/bin/sh
echo "Step1 Start..."
mkdir build
cd build
echo "prepare rootfs"
sudo apt-get install debootstrap
sudo mkdir rootfs
sudo debootstrap --arch arm64 bonic rootfs
chroot rootfs apt-get update
echo "Prepare To Start Step2...."
sudo bash ../step2.sh
