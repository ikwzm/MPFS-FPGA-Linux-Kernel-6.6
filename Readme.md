Linux Kenel 6.6.x for Microchip PolarFire SoC
====================================================================================

Overview
------------------------------------------------------------------------------------

### Introduction

This Repository provides a Linux Kernel (v6.6.x) Image and Device Trees for Microchip PolarFire SoC.

### Note

**The Linux Kernel Image provided in this repository is not official.**    
**I modified it to my liking. Please handle with care.**    

### Features

  * Linux Kernel Version v6.6.51
  * Configuration equivalent to Microchip's linux2microchip+fpga-2024.09
  * Device Trees  equivalent to Microchip's linux2microchip+fpga-2024.09

Files
------------------------------------------------------------------------------------

* vmlinuz-6.6.51-mpfs-fpga-origin-1
* linux-image-6.6.51-mpfs-fpga-origin_6.6.51-mpfs-fpga-1_riscv64.deb
* linux-headers-6.6.51-mpfs-fpga-origin_6.6.51-mpfs-fpga-1_riscv64.deb
* ./devicetrees/6.6.51-mpfs-fpga-origin-1
  + mpfs-disco-kit.dtb
* [./files/config-6.6.51-mpfs-fpga-origin-1](./files/config-6.6.51-mpfs-fpga-origin-1)

Build
------------------------------------------------------------------------------------

* [./doc/build/linux-6.6.51-mpfs-fpga-origin.md](./doc/build/linux-6.6.51-mpfs-fpga-origin.md)
