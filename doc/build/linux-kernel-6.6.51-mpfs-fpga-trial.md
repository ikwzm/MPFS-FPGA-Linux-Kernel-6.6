## Build Linux Kernel

There are two ways

1. run scripts/build-linux-kernel-6.6.51-mpfs-fpga-trial.sh (easy)
2. run this chapter step-by-step (annoying)

#### Download Linux Kernel Source

##### Clone from linux-stable.git

```console
shell$ git clone --depth 1 -b v6.6.51 git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git linux-6.6.51-mpfs-fpga-trial
```

##### Make Build Branch

```console
shell$ cd linux-6.6.51-mpfs-fpga-trial
shell$ git checkout -b linux-6.6.51-mpfs-fpga-trial refs/tags/v6.6.51
```

#### Patch to Linux Kernel

### Patch for linux-6.6.51-mpfs-fpga

```console
shell$ sh ../patches/linux-6.6.51-mpfs-fpga/trial_patch.sh
```
### Patch for builddeb

```console
shell$ patch -p1 < ../patches/linux-6.6.51-mpfs-fpga-builddeb.diff
shell$ git add --all
shell$ git commit -m "[update] scripts/package/builddeb to add tools/include and postinst script to header package."
```

### Add mpfs_fpga_trial_defconfig

```console
shell$ cp ../files/mpfs_fpga_trial_defconfig arch/riscv/configs/
shell$ git add arch/riscv/configs/mpfs_fpga_trial_defconfig
shell$ git commit -m "[add] mpfs_fpga_trial_defconfig to arch/riscv/configs"
```

#### Create tag and .version

```console
shell$ git tag -a v6.6.51-mpfs-fpga -m "release v6.6.51-mpfs-fpga-trial"
shell$ echo 0 > .version
```

### Build

#### Setup for Build 

````console
shell$ cd linux-6.6.51-mpfs-fpga-trial
shell$ export ARCH=riscv
shell$ export CROSS_COMPILE=riscv64-unknown-linux-gnu-
shell$ make mpfs_fpga_trial_defconfig
````

#### Build Linux Kernel and device tree

````console
shell$ export DTC_FLAGS=--symbols
shell$ make deb-pkg
````

### Install

#### Install kernel image to this repository

```console
shell$ cp arch/riscv/boot/Image.gz ../vmlinuz-6.6.51-mpfs-fpga-trial-1
shell$ install -d                  ../files
shell$ cp .config                  ../files/config-6.6.51-mpfs-fpga-trial-1
```

#### Install devicetree to this repository

```console
shell$ install -d                         ../devicetrees/6.6.51-mpfs-fpga-trial-1
shell$ cp arch/riscv/boot/dts/microchip/* ../devicetrees/6.6.51-mpfs-fpga-trial-1
```

