#!/bin/sh
cd build
D= $(pwd)
mkdir boot
sudo git clone --depth 1 stable https://github.com/raspberrypi/firmware.git
cp-r firmware/boot/* $D/boot
sudo rm $D/boot/*.dtb
sudo rm $D/boot/*kernel*
sudo rm -rf firmware
cd $D/rootfs/lib
sudo git clone --depth 1 https://github.com/rpi-distro/firmware-nonfree.git
sudo mv firmware-nonfree firmware
sudo rm firmware/.git
cd $D
