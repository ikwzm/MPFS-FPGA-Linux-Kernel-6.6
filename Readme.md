Linux Kenel 6.6.x for Microchip PolarFire SoC
====================================================================================

Overview
------------------------------------------------------------------------------------

### Introduction

This Repository provides a Linux Kernel (v6.6.x) Image and Device Trees for Microchip PolarFire SoC.

### Note

**The Linux Kernel Image provided in this repository is not official.**    
**I modified it to my liking. Please handle with care.**    

**Downloading the entire repository takes time, so download the files from URL**   

https://github.com/ikwzm/MPFS-FPGA-Linux-Kernel-6.6/releases/6.6.51-mpfs-fpga-first-1

### Features

  * Linux Kernel Version v6.6.51
  * Enable Device Tree Overlay with Configuration File System

Files
------------------------------------------------------------------------------------

* vmlinuz-6.6.51-mpfs-fpga-first-1
* linux-image-6.6.51-mpfs-fpga-first_6.6.51-mpfs-fpga-1_riscv64.deb
* linux-headers-6.6.51-mpfs-fpga-first_6.6.51-mpfs-fpga-1_riscv64.deb
* ./devicetrees/6.6.51-mpfs-fpga-first-1
  + mpfs-disco-kit.dtb
  + mpfs-icicle-kit.dtb
* [./files/config-6.6.51-mpfs-fpga-first-1](./files/config-6.6.51-mpfs-fpga-first-1)

Build
------------------------------------------------------------------------------------

* [./doc/build/linux-kernel-6.6.51-mpfs-fpga-first.md](./doc/build/linux-kernel-6.6.51-mpfs-fpga-first.md)

