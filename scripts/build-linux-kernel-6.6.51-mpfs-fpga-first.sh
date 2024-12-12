#!/bin/bash

CURRENT_DIR=`pwd`
KERNEL_VERSION=6.6.51-mpfs-fpga
KERNEL_LOCAL_VERSION=-first
KERNEL_STABLE_VERSION=v6.6.51
BUILD_VERSION=1
KERNEL_RELEASE=$KERNEL_VERSION$KERNEL_LOCAL_VERSION
KERNEL_VERSION_TAG=v$KERNEL_VERSION
LINUX_BUILD_DIR=linux-$KERNEL_RELEASE
PATCH_SCRIPT=first_patch.sh
KERNEL_DEFCONFIG=mpfs_fpga_first_defconfig

echo "KERNEL_VERSION   =" $KERNEL_VERSION
echo "KERNEL_RELEASE   =" $KERNEL_RELEASE
echo "BUILD_VERSION    =" $BUILD_VERSION
echo "LINUX_BUILD_DIR  =" $LINUX_BUILD_DIR
echo "KERNEL_DEFCONFIG =" $KERNEL_DEFCONFIG

## Download Linux Kernel Source

### Clone from linux-stable.git

git clone --depth 1 -b $KERNEL_STABLE_VERSION git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git $LINUX_BUILD_DIR

### Make Branch

cd $LINUX_BUILD_DIR
git checkout -b $KERNEL_RELEASE refs/tags/$KERNEL_STABLE_VERSION

## Patch to Linux Kernel

### Patch for linux-6.6.x-mpfs-fpga

sh ../patches/linux-$KERNEL_VERSION/$PATCH_SCRIPT

### Patch for builddeb

patch -p1 < ../patches/linux-6.6.51-mpfs-fpga-builddeb.diff
git add --all
git commit -m "[update] scripts/package/builddeb to add tools/include and postinst script to header package."

### Add defconfig

cp ../files/$KERNEL_DEFCONFIG arch/riscv/configs/
git add arch/riscv/configs/$KERNEL_DEFCONFIG
git commit -m "[add] $KERNEL_DEFCONFIG to arch/riscv/configs"

### Create tag and .version

git tag -a $KERNEL_VERSION_TAG -m "release $KERNEL_VERSION_TAG"
echo `expr $BUILD_VERSION - 1` > .version

## Build

### Setup for Build 

if [ -z $ARCH ]; then
    export ARCH=riscv
fi
if [ -z $CROSS_COMPILE ]; then
    export CROSS_COMPILE=riscv64-unknown-linux-gnu-
fi
make $KERNEL_DEFCONFIG

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

