#!/bin/sh
echo "Starting building......"
sudo sh buildrootfs.sh
echo "25% finished...."
sudo sh makefirmware.sh
echo "50% finished...."
sudo sh buildkernel.sh
echo "75% finished..."
sudo sh makeimage.sh
echo "100% finished.."
echo "sucessfuly."
