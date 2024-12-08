#!/bin/bash

CURRENT_DIR=`pwd`
KERNEL_VERSION=6.6.51-mpfs-fpga
KERNEL_STABLE_VERSION=v6.6.51
BUILD_VERSION=1
KERNEL_RELEASE=$KERNEL_VERSION
KERNEL_RELEASE_TAG=v$KERNEL_RELEASE
LINUX_BUILD_DIR=linux-$KERNEL_RELEASE

echo "KERNEL_RELEASE  =" $KERNEL_RELEASE
echo "BUILD_VERSION   =" $BUILD_VERSION
echo "LINUX_BUILD_DIR =" $LINUX_BUILD_DIR

## Download Linux Kernel Source

### Clone from linux-stable.git

git clone --depth 1 -b $KERNEL_STABLE_VERSION git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git $LINUX_BUILD_DIR

### Make Branch

cd $LINUX_BUILD_DIR
git checkout -b $KERNEL_RELEASE refs/tags/$KERNEL_STABLE_VERSION

## Patch to Linux Kernel

### Patch for linux-6.6.x-mpfs-fpga

sh ../patches/linux-$KERNEL_VERSION/xxx_patch.sh

### Patch for builddeb

patch -p1 < ../patches/linux-6.6.51-mpfs-fpga-builddeb.diff
git add --all
git commit -m "[update] scripts/package/builddeb to add tools/include and postinst script to header package."

### Add mpfs_fpga_defconfig

cp ../files/mpfs_fpga_defconfig arch/riscv/configs/
git add arch/riscv/configs/mpfs_fpga_defconfig
git commit -m "[add] mpfs_fpga_defconfig to arch/riscv/configs"

### Create tag and .version

git tag -a $KERNEL_RELEASE_TAG -m "release $KERNEL_RELEASE_TAG"
echo `expr $BUILD_VERSION - 1` > .version

## Build

### Setup for Build 

if [ -z $ARCH ]; then
    export ARCH=riscv
fi
if [ -z $CROSS_COMPILE ]; then
    export CROSS_COMPILE=riscv64-unknown-linux-gnu-
fi
make mpfs_fpga_defconfig

### Build Linux Kernel and device tree

export DTC_FLAGS=--symbols
rm -rf debian
make deb-pkg

### Install kernel image to this repository

cp arch/riscv/boot/Image.gz    ../vmlinuz-$KERNEL_RELEASE-$BUILD_VERSION
cp .config                ../files/config-$KERNEL_RELEASE-$BUILD_VERSION

### Install devicetree to this repository

install -d                         ../devicetrees/$KERNEL_RELEASE-$BUILD_VERSION
cp arch/riscv/boot/dts/microchip/* ../devicetrees/$KERNEL_RELEASE-$BUILD_VERSION

