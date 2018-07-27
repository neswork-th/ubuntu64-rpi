#!/bin/sh
#cd build
mkdir $S/boot
sudo git clone --depth 1 stable https://github.com/raspberrypi/firmware.git
cp -r firmware/boot/* $S/boot
sudo rm $S/boot/*.dtb
sudo rm $S/boot/*kernel*
sudo rm -rf firmware
cd $S/rootfs/lib
sudo git clone --depth 1 https://github.com/rpi-distro/firmware-nonfree.git
sudo mv firmware-nonfree firmware
sudo rm firmware/.git
