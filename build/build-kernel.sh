#!/bin/sh
sudo git clone --depth=1 -b rpi-4.14.y https://github.com/raspberrypi/linux.git
cd linux
make ARCH=arm64 bcmrpi3_defconfig
make ARCH=arm64 -j4
