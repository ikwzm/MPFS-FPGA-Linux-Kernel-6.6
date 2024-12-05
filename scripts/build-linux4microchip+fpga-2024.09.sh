#!/bin/bash

CURRENT_DIR=`pwd`
KERNEL_VERSION=6.6.51
KERNEL_STABLE_VERSION=v6.6.51
LOCAL_VERSION=zynqmp-fpga-trial
BUILD_VERSION=1
KERNEL_RELEASE=linux4microchip+fpga-2024.09
LINUX_BUILD_DIR=linux4microchip+fpga-2024.09

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

### Patch for linux-xlnx-v2023.1

sh ../patches/linux-$KERNEL_VERSION-$KERNEL_RELEASE/xxx_patch.sh

## Build

### Setup for Build 

export export ARCH=riscv
export export CROSS_COMPILE=/home/ichiro/work/riscv/bin/riscv64-unknown-linux-gnu-
make mpfs_defconfig
./scripts/kconfig/merge_config.sh .config ../files/mpfs-disco-kit/mpfs_cmdline.cfg 

### Build Linux Kernel and device tree

export DTC_FLAGS=--symbols
rm -rf debian
make deb-pkg

### Install kernel image to this repository

cp arch/riscv/boot/Image.gz    ../vmlinuz-$KERNEL_RELEASE
cp .config                     ../files/config-$KERNEL_RELEASE

### Install devicetree to this repository

install -d ../devicetrees/$KERNEL_RELEASE
cp arch/riscv/boot/dts/microchip/* ../devicetrees/$KERNEL_RELEASE

