#!/bin/bash

script_description="MPFS-FPGA-Linux-Kernel Installer"

target_kernel_image="vmlinux-\${kernel_release}"
target_uenv_txt="uEnv-linux-\${kernel_release}.txt"

target_id_list="$target_id_list disco_kit"
disco_kit_pattern="mpfs-disco-kit disco-kit DISCO-KIT"
disco_kit_dtb_source="mpfs-disco-kit.dtb"
disco_kit_dtb_target="devicetree-\${kernel_release}-mpfs-disco-kit.dtb"
disco_kit_dts_target="devicetree-\${kernel_release}-mpfs-disco-kit.dts"

target_id_list="$target_id_list icicle_kit"
icicle_kit_pattern="mpfs-icicle-kit icicle-kit ICICLE-KIT"
icicle_kit_dtb_source="mpfs-disco-kit.dtb"
icicle_kit_dtb_target="devicetree-\${kernel_release}-mpfs-icicle-kit.dtb"
icicle_kit_dts_target="devicetree-\${kernel_release}-mpfs-icicle-kit.dts"

