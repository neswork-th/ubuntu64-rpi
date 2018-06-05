#!/bin/sh
echo "Start Step2...."
cd build
mkdir boot
sudo apt-get install git
sudo git clone --depth 1 stable https://github.com/raspberrypi/firmware.git
cd firmware/boot
cp * ../..
sudo rm *.dtb
sudo rm *kernel*
cd ../..
sudo rm -rf firmware
cd ../rootfs/lib
sudo git clone --depth 1 https://github.com/rpi-distro/firmware-nonfree.git
sudo mv firmware-nonfree firmware
cd firmware
sudo rm .git
cd ../..
mkdir init-firmware
cd init-firmware
sudo apt-get download linux-headers-raspi2 linux-image-raspi2
sudo dpkg -X *.deb
