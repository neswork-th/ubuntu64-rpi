#!/bin/sh
S= $(pwd)
cd $S
sudo git clone --depth=1 -b rpi-4.14.y https://github.com/raspberrypi/linux.git
cd linux
make ARCH=arm64 bcmrpi3_defconfig
make ARCH=arm64 -j4

make install INSTALL_PATH=$S/boot
make modules_install INSTALL_MOD_PATH=$S/rootfs
make headers_install INSTALL_HDR_PATH=$S/rootfs/usr

sudo cp arch/arm64/boot/Image $S/boot/kernel8.img
sudo cp arch/arm64/boot/dts/broadcom/bcm* $S/boot

touch $S/boot/config.txt
echo "kernel=kernel8.img" >> $S/boot/config.txt
