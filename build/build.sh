#!/bin/sh
WR=$(pwd)
echo "Checking environment....."
sudo sh $WR/setenv.sh
echo "Starting building......"
sudo sh $WR/buildrootfs.sh
echo "25% finished...."
sudo sh $WR/makefirmware.sh
echo "50% finished...."
sudo sh $WR/buildkernel.sh
echo "75% finished..."
sudo sh $WR/makeimage.sh
echo "100% finished.."
echo "sucessfuly."
