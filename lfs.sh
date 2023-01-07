#!/bin/bash

export LFS=/mnt/lfs
export LFS_TGT=x86_64-cephaspi-linux-gnu
export LFS_DISK=/dev/sdb

if ! grep -q "$LFS" /proc/mounts; then
	source setupdisk.sh "$LFS_DISK"
	sudo mount "${LFS_DISK}2" "$LFS"
	sudo chown -v $USER "$LFS"
fi

mkdir -pv $LFS/sources
mkdir -pv $LFS/tools

mkdir -pv $LFS/boot
mkdir -pv $LFS/etc
mkdir -pv $LFS/bin
mkdir -pv $LFS/lib
mkdir -pv $LFS/sbin
mkdir -pv $LFS/usr
mkdir -pv $LFS/var

case $(uname -m) in
	x86_64) mkdir -pv $LFS/lib64 ;;
esac

cp -rf {*.sh,wget-list,md5sums,ch5,ch6,ch7,ch8} "$LFS/sources"
cd "$LFS/sources"

export PATH="$LFS/tools/bin:$PATH"

source download.sh

source packageinstall.sh 5 binutils
