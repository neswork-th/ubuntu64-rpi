#!/bin/sh
arch=$(arch)
if [ $arch = "aarch64" ];then
   echo "Preparing Tools...."
   sudo apt-get install parted kpartx debootstrap -y
else
   echo "You must build on arm64 host"
   exit
fi

S=$(pwd)
