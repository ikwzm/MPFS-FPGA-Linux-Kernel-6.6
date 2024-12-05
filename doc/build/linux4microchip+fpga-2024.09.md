## Build Linux Kernel

There are two ways

1. run scripts/build-linux4microchip+fpga-2024.09.sh (easy)
2. run this chapter step-by-step (annoying)

#### Download Linux Kernel Source

##### Clone from linux-stable.git

```console
shell$ git clone --depth 1 -b v6.6.51 git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git linux4microchip+fpga-2024.09
```

##### Make Build Branch

```console
shell$ cd linux4microchip+fpga-2024.09
shell$ git checkout -b linux4microchip+fpga-2024.09 refs/tags/v6.6.51
```

#### Patch to Linux Kernel

### Patch for linux4microchip+fpga-2024.09

```console
shell$ sh ../patches/linux-6.6.51-linux4microchip-fpga+2024.09/xxx_patch.sh
```

### Build

#### Setup for Build 

````console
shell$ cd linux4microchip+fpga-2024.09
shell$ export ARCH=riscv
shell$ export CROSS_COMPILE=riscv64-unknown-linux-gnu-
shell$ make mpfs_defconfig
shell$
shell$ ./scripts/kconfig/merge_config.sh .config ../files/mpfs-disco-kit/mpfs_cmdline.cfg 
```

#### Build Linux Kernel and device tree

````console
shell$ export DTC_FLAGS=--symbols
shell$ make deb-pkg
````

### Install

#### Install kernel image to this repository

```console
shell$ cp arch/riscv/boot/Image.gz ../vmlinuz-linux4microchip+fpga-2024.09
shell$ install -d                  ../files
shell$ cp .config                  ../files/config-linux4microchip+fpga-2024.09
```

#### Install devicetree to this repository

```console
shell$ install -d                         ../devicetrees/linux4microchip+fpga-2024.09
shell$ cp arch/riscv/boot/dts/microchip/* ../devicetrees/linux4microchip+fpga-2024.09
```

