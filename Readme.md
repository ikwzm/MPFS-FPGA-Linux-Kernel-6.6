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

* Hardware
  + MPFS-DISCO-KIT : Microchip PolarFire SoC Discovery Kit

* Linux Kernel Version 6.6.x
  + 

Release
------------------------------------------------------------------------------------

The main branch contains only Readme.md.     
For Linux Kernel image and Debian Packages, please refer to the respective release tag listed below.

| Linux Version | Extra Version    | Local Name    | Build Version | Release Tag |
|:--------------|:-----------------|:--------------|:--------------|:------------|
| 6.6.51        | mpfs-fpga        | origin        | 1             | [6.6.51-mpfs-fpga-origin-1](https://github.com/ikwzm/MPFS-FPGA-Linux-Kernel-6.6/tree/6.6.51-mpfs-fpga-origin-1)
| 6.6.51        | linux4microchip+fpga-2024.09 |   |               | [linux4microchip+fpga-2024.09](https://github.com/ikwzm/MPFS-FPGA-Linux-Kernel-6.6/tree/linux4microchip%2Bfpga-2024.09)

Download
------------------------------------------------------------------------------------

```console
shell$ export RELEASE_TAG=6.6.51-mpfs-fpga-origin-1
shell$ wget https://github.com/ikwzm/MPFS-FPGA-Linux-Kernel-6.6/archive/refs/tags/$RELEASE_TAG.tar.gz
shell$ tar xfz $RELEASE_TAG.tar.gz
shell$ cd MPFS-FPGA-Linux-Kernel-6.6-$RELEASE_TAG
```

