#!/bin/sh
echo "Start Step2...."
cd build
mkdir init-firmware
cd init-firmware
sudo apt-get download linux-headers-raspi2 linux-image-raspi2
sudo dpkg -X *.deb
