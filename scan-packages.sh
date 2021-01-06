#!/bin/sh

#packages
echo building package list
sudo dpkg-scanpackages -m ./debs > Packages

echo bzip compressing
sudo bzip2 -5fkv Packages > Packages.bz2

echo xz compressing
sudo xz -5fkev Packages > Packages.xz

echo lzma compressing
sudo xz -5fkev --format=lzma Packages > Packages.lzma
