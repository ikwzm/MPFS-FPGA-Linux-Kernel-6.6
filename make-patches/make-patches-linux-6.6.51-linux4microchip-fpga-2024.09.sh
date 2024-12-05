PATCH_DIR=./patches/linux-6.6.51-linux4microchip-fpga-2024.09
install -d $PATCH_DIR

PATCH_FILE=$PATCH_DIR/000_Makefile.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/Makefile                                                                                                  linux4microchip-fpga-2024.09/Makefile                                                                                >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/010_arch-riscv.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/arch/riscv/Kconfig.socs                                                                                   linux4microchip-fpga-2024.09/arch/riscv/Kconfig.socs                                                                 >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/riscv/include/asm/vendorid_list.h                                                                    linux4microchip-fpga-2024.09/arch/riscv/include/asm/vendorid_list.h                                                  >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/riscv/kernel/smp.c                                                                                   linux4microchip-fpga-2024.09/arch/riscv/kernel/smp.c                                                                 >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/011_arch-riscv-configs.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/arch/riscv/configs/mpfs_defconfig --label=/dev/null                                                       linux4microchip-fpga-2024.09/arch/riscv/configs/mpfs_defconfig                                                       >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/012_arch-riscv-boot-dts.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/Documentation/devicetree/bindings/riscv/microchip.yaml                                                    linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/riscv/microchip.yaml                                  >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/riscv/boot/dts/microchip/Makefile                                                                    linux4microchip-fpga-2024.09/arch/riscv/boot/dts/microchip/Makefile                                                  >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/riscv/boot/dts/microchip/mpfs-beaglev-fire-fabric.dtsi --label=/dev/null                             linux4microchip-fpga-2024.09/arch/riscv/boot/dts/microchip/mpfs-beaglev-fire-fabric.dtsi                             >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/riscv/boot/dts/microchip/mpfs-beaglev-fire.dts --label=/dev/null                                     linux4microchip-fpga-2024.09/arch/riscv/boot/dts/microchip/mpfs-beaglev-fire.dts                                     >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/riscv/boot/dts/microchip/mpfs-disco-kit-fabric.dtsi --label=/dev/null                                linux4microchip-fpga-2024.09/arch/riscv/boot/dts/microchip/mpfs-disco-kit-fabric.dtsi                                >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/riscv/boot/dts/microchip/mpfs-disco-kit.dts --label=/dev/null                                        linux4microchip-fpga-2024.09/arch/riscv/boot/dts/microchip/mpfs-disco-kit.dts                                        >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/riscv/boot/dts/microchip/mpfs-icicle-kit-fabric.dtsi                                                 linux4microchip-fpga-2024.09/arch/riscv/boot/dts/microchip/mpfs-icicle-kit-fabric.dtsi                               >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/riscv/boot/dts/microchip/mpfs-icicle-kit.dts                                                         linux4microchip-fpga-2024.09/arch/riscv/boot/dts/microchip/mpfs-icicle-kit.dts                                       >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/riscv/boot/dts/microchip/mpfs-m100pfs-fabric.dtsi                                                    linux4microchip-fpga-2024.09/arch/riscv/boot/dts/microchip/mpfs-m100pfs-fabric.dtsi                                  >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/riscv/boot/dts/microchip/mpfs-m100pfsevp-emmc.dts --label=/dev/null                                  linux4microchip-fpga-2024.09/arch/riscv/boot/dts/microchip/mpfs-m100pfsevp-emmc.dts                                  >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/riscv/boot/dts/microchip/mpfs-m100pfsevp-sdcard.dts --label=/dev/null                                linux4microchip-fpga-2024.09/arch/riscv/boot/dts/microchip/mpfs-m100pfsevp-sdcard.dts                                >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/riscv/boot/dts/microchip/mpfs-m100pfsevp.dts                                                         linux4microchip-fpga-2024.09/arch/riscv/boot/dts/microchip/mpfs-m100pfsevp.dts                                       >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/riscv/boot/dts/microchip/mpfs-m100pfsevp.dtsi --label=/dev/null                                      linux4microchip-fpga-2024.09/arch/riscv/boot/dts/microchip/mpfs-m100pfsevp.dtsi                                      >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/riscv/boot/dts/microchip/mpfs-polarberry-fabric.dtsi                                                 linux4microchip-fpga-2024.09/arch/riscv/boot/dts/microchip/mpfs-polarberry-fabric.dtsi                               >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/riscv/boot/dts/microchip/mpfs-polarberry.dts                                                         linux4microchip-fpga-2024.09/arch/riscv/boot/dts/microchip/mpfs-polarberry.dts                                       >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/riscv/boot/dts/microchip/mpfs-sev-kit-fabric.dtsi                                                    linux4microchip-fpga-2024.09/arch/riscv/boot/dts/microchip/mpfs-sev-kit-fabric.dtsi                                  >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/riscv/boot/dts/microchip/mpfs-sev-kit.dts                                                            linux4microchip-fpga-2024.09/arch/riscv/boot/dts/microchip/mpfs-sev-kit.dts                                          >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/riscv/boot/dts/microchip/mpfs-tysom-m.dts                                                            linux4microchip-fpga-2024.09/arch/riscv/boot/dts/microchip/mpfs-tysom-m.dts                                          >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/riscv/boot/dts/microchip/mpfs-video-kit-fabric.dtsi --label=/dev/null                                linux4microchip-fpga-2024.09/arch/riscv/boot/dts/microchip/mpfs-video-kit-fabric.dtsi                                >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/riscv/boot/dts/microchip/mpfs-video-kit.dts --label=/dev/null                                        linux4microchip-fpga-2024.09/arch/riscv/boot/dts/microchip/mpfs-video-kit.dts                                        >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/riscv/boot/dts/microchip/mpfs.dtsi                                                                   linux4microchip-fpga-2024.09/arch/riscv/boot/dts/microchip/mpfs.dtsi                                                 >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/riscv/boot/dts/microchip/pic64gx-curiosity-kit.dts --label=/dev/null                                 linux4microchip-fpga-2024.09/arch/riscv/boot/dts/microchip/pic64gx-curiosity-kit.dts                                 >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/riscv/boot/dts/microchip/pic64gx.dtsi --label=/dev/null                                              linux4microchip-fpga-2024.09/arch/riscv/boot/dts/microchip/pic64gx.dtsi                                              >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/020_arch-arm-mach-at91.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/Documentation/devicetree/bindings/arm/atmel-at91.yaml                                                     linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/arm/atmel-at91.yaml                                   >>$PATCH_FILE 
diff -urN linux-6.6.51/Documentation/devicetree/bindings/arm/atmel-sysregs.txt                                                   linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/arm/atmel-sysregs.txt                                 >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/mach-at91/Kconfig                                                                                linux4microchip-fpga-2024.09/arch/arm/mach-at91/Kconfig                                                              >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/mach-at91/Makefile                                                                               linux4microchip-fpga-2024.09/arch/arm/mach-at91/Makefile                                                             >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/mach-at91/at91_vdec.h --label=/dev/null                                                          linux4microchip-fpga-2024.09/arch/arm/mach-at91/at91_vdec.h                                                          >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/mach-at91/generic.h                                                                              linux4microchip-fpga-2024.09/arch/arm/mach-at91/generic.h                                                            >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/mach-at91/hx170dec.h --label=/dev/null                                                           linux4microchip-fpga-2024.09/arch/arm/mach-at91/hx170dec.h                                                           >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/mach-at91/memalloc.c --label=/dev/null                                                           linux4microchip-fpga-2024.09/arch/arm/mach-at91/memalloc.c                                                           >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/mach-at91/memalloc.h --label=/dev/null                                                           linux4microchip-fpga-2024.09/arch/arm/mach-at91/memalloc.h                                                           >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/mach-at91/pm.c                                                                                   linux4microchip-fpga-2024.09/arch/arm/mach-at91/pm.c                                                                 >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/mach-at91/pm.h                                                                                   linux4microchip-fpga-2024.09/arch/arm/mach-at91/pm.h                                                                 >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/mach-at91/pm_data-offsets.c                                                                      linux4microchip-fpga-2024.09/arch/arm/mach-at91/pm_data-offsets.c                                                    >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/mach-at91/pm_suspend.S                                                                           linux4microchip-fpga-2024.09/arch/arm/mach-at91/pm_suspend.S                                                         >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/mach-at91/sam9x7.c --label=/dev/null                                                             linux4microchip-fpga-2024.09/arch/arm/mach-at91/sam9x7.c                                                             >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/mach-at91/sam_secure.h                                                                           linux4microchip-fpga-2024.09/arch/arm/mach-at91/sam_secure.h                                                         >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/mach-at91/sama5.c                                                                                linux4microchip-fpga-2024.09/arch/arm/mach-at91/sama5.c                                                              >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/mach-at91/sama7.c                                                                                linux4microchip-fpga-2024.09/arch/arm/mach-at91/sama7.c                                                              >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/mach-at91/vdec_g1.c --label=/dev/null                                                            linux4microchip-fpga-2024.09/arch/arm/mach-at91/vdec_g1.c                                                            >>$PATCH_FILE 
diff -urN linux-6.6.51/include/linux/platform_data/atmel.h                                                                       linux4microchip-fpga-2024.09/include/linux/platform_data/atmel.h                                                     >>$PATCH_FILE 
diff -urN linux-6.6.51/include/linux/regmap.h                                                                                    linux4microchip-fpga-2024.09/include/linux/regmap.h                                                                  >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/021_arch-arm-configs.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/arch/arm/configs/am200epdkit_defconfig                                                                    linux4microchip-fpga-2024.09/arch/arm/configs/am200epdkit_defconfig                                                  >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/configs/aspeed_g4_defconfig                                                                      linux4microchip-fpga-2024.09/arch/arm/configs/aspeed_g4_defconfig                                                    >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/configs/aspeed_g5_defconfig                                                                      linux4microchip-fpga-2024.09/arch/arm/configs/aspeed_g5_defconfig                                                    >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/configs/at91_dt_defconfig                                                                        linux4microchip-fpga-2024.09/arch/arm/configs/at91_dt_defconfig                                                      >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/configs/bcm2835_defconfig                                                                        linux4microchip-fpga-2024.09/arch/arm/configs/bcm2835_defconfig                                                      >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/configs/collie_defconfig                                                                         linux4microchip-fpga-2024.09/arch/arm/configs/collie_defconfig                                                       >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/configs/davinci_all_defconfig                                                                    linux4microchip-fpga-2024.09/arch/arm/configs/davinci_all_defconfig                                                  >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/configs/ep93xx_defconfig                                                                         linux4microchip-fpga-2024.09/arch/arm/configs/ep93xx_defconfig                                                       >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/configs/gemini_defconfig                                                                         linux4microchip-fpga-2024.09/arch/arm/configs/gemini_defconfig                                                       >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/configs/jornada720_defconfig                                                                     linux4microchip-fpga-2024.09/arch/arm/configs/jornada720_defconfig                                                   >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/configs/lpc32xx_defconfig                                                                        linux4microchip-fpga-2024.09/arch/arm/configs/lpc32xx_defconfig                                                      >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/configs/mmp2_defconfig                                                                           linux4microchip-fpga-2024.09/arch/arm/configs/mmp2_defconfig                                                         >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/configs/moxart_defconfig                                                                         linux4microchip-fpga-2024.09/arch/arm/configs/moxart_defconfig                                                       >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/configs/multi_v4t_defconfig                                                                      linux4microchip-fpga-2024.09/arch/arm/configs/multi_v4t_defconfig                                                    >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/configs/multi_v5_defconfig                                                                       linux4microchip-fpga-2024.09/arch/arm/configs/multi_v5_defconfig                                                     >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/configs/multi_v7_defconfig                                                                       linux4microchip-fpga-2024.09/arch/arm/configs/multi_v7_defconfig                                                     >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/configs/mv78xx0_defconfig                                                                        linux4microchip-fpga-2024.09/arch/arm/configs/mv78xx0_defconfig                                                      >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/configs/omap1_defconfig                                                                          linux4microchip-fpga-2024.09/arch/arm/configs/omap1_defconfig                                                        >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/configs/pxa168_defconfig                                                                         linux4microchip-fpga-2024.09/arch/arm/configs/pxa168_defconfig                                                       >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/configs/pxa3xx_defconfig                                                                         linux4microchip-fpga-2024.09/arch/arm/configs/pxa3xx_defconfig                                                       >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/configs/pxa910_defconfig                                                                         linux4microchip-fpga-2024.09/arch/arm/configs/pxa910_defconfig                                                       >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/configs/pxa_defconfig                                                                            linux4microchip-fpga-2024.09/arch/arm/configs/pxa_defconfig                                                          >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/configs/qcom_defconfig                                                                           linux4microchip-fpga-2024.09/arch/arm/configs/qcom_defconfig                                                         >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/configs/realview_defconfig                                                                       linux4microchip-fpga-2024.09/arch/arm/configs/realview_defconfig                                                     >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/configs/rpc_defconfig                                                                            linux4microchip-fpga-2024.09/arch/arm/configs/rpc_defconfig                                                          >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/configs/s3c6400_defconfig                                                                        linux4microchip-fpga-2024.09/arch/arm/configs/s3c6400_defconfig                                                      >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/configs/s5pv210_defconfig                                                                        linux4microchip-fpga-2024.09/arch/arm/configs/s5pv210_defconfig                                                      >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/configs/sama5_defconfig                                                                          linux4microchip-fpga-2024.09/arch/arm/configs/sama5_defconfig                                                        >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/configs/sama7_defconfig                                                                          linux4microchip-fpga-2024.09/arch/arm/configs/sama7_defconfig                                                        >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/configs/spitz_defconfig                                                                          linux4microchip-fpga-2024.09/arch/arm/configs/spitz_defconfig                                                        >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/configs/stm32_defconfig                                                                          linux4microchip-fpga-2024.09/arch/arm/configs/stm32_defconfig                                                        >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/configs/tegra_defconfig                                                                          linux4microchip-fpga-2024.09/arch/arm/configs/tegra_defconfig                                                        >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/configs/vf610m4_defconfig                                                                        linux4microchip-fpga-2024.09/arch/arm/configs/vf610m4_defconfig                                                      >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/022_arch-arm-boot-dts.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/arch/arm/boot/dts/microchip/Makefile                                                                      linux4microchip-fpga-2024.09/arch/arm/boot/dts/microchip/Makefile                                                    >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/boot/dts/microchip/at91-sam9x60_curiosity.dts                                                    linux4microchip-fpga-2024.09/arch/arm/boot/dts/microchip/at91-sam9x60_curiosity.dts                                  >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/boot/dts/microchip/at91-sam9x60ek.dts                                                            linux4microchip-fpga-2024.09/arch/arm/boot/dts/microchip/at91-sam9x60ek.dts                                          >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/boot/dts/microchip/at91-sam9x75_curiosity.dts --label=/dev/null                                  linux4microchip-fpga-2024.09/arch/arm/boot/dts/microchip/at91-sam9x75_curiosity.dts                                  >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/boot/dts/microchip/at91-sam9x75eb.dts --label=/dev/null                                          linux4microchip-fpga-2024.09/arch/arm/boot/dts/microchip/at91-sam9x75eb.dts                                          >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/boot/dts/microchip/at91-sama5d27_som1.dtsi                                                       linux4microchip-fpga-2024.09/arch/arm/boot/dts/microchip/at91-sama5d27_som1.dtsi                                     >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/boot/dts/microchip/at91-sama5d27_som1_ek.dts                                                     linux4microchip-fpga-2024.09/arch/arm/boot/dts/microchip/at91-sama5d27_som1_ek.dts                                   >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1.dtsi                                                     linux4microchip-fpga-2024.09/arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1.dtsi                                   >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1_ek.dts                                                   linux4microchip-fpga-2024.09/arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1_ek.dts                                 >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/boot/dts/microchip/at91-sama5d29_curiosity.dts --label=/dev/null                                 linux4microchip-fpga-2024.09/arch/arm/boot/dts/microchip/at91-sama5d29_curiosity.dts                                 >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/boot/dts/microchip/at91-sama5d2_icp.dts                                                          linux4microchip-fpga-2024.09/arch/arm/boot/dts/microchip/at91-sama5d2_icp.dts                                        >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/boot/dts/microchip/at91-sama5d2_xplained.dts                                                     linux4microchip-fpga-2024.09/arch/arm/boot/dts/microchip/at91-sama5d2_xplained.dts                                   >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/boot/dts/microchip/at91-sama5d4_xplained.dts                                                     linux4microchip-fpga-2024.09/arch/arm/boot/dts/microchip/at91-sama5d4_xplained.dts                                   >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/boot/dts/microchip/at91-sama7g54_curiosity.dts --label=/dev/null                                 linux4microchip-fpga-2024.09/arch/arm/boot/dts/microchip/at91-sama7g54_curiosity.dts                                 >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/boot/dts/microchip/at91-sama7g5ek.dts                                                            linux4microchip-fpga-2024.09/arch/arm/boot/dts/microchip/at91-sama7g5ek.dts                                          >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/boot/dts/microchip/sam9x60.dtsi                                                                  linux4microchip-fpga-2024.09/arch/arm/boot/dts/microchip/sam9x60.dtsi                                                >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/boot/dts/microchip/sam9x7.dtsi --label=/dev/null                                                 linux4microchip-fpga-2024.09/arch/arm/boot/dts/microchip/sam9x7.dtsi                                                 >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/boot/dts/microchip/sama5d2-optee.dtsi --label=/dev/null                                          linux4microchip-fpga-2024.09/arch/arm/boot/dts/microchip/sama5d2-optee.dtsi                                          >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/boot/dts/microchip/sama5d2.dtsi                                                                  linux4microchip-fpga-2024.09/arch/arm/boot/dts/microchip/sama5d2.dtsi                                                >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/boot/dts/microchip/sama5d4.dtsi                                                                  linux4microchip-fpga-2024.09/arch/arm/boot/dts/microchip/sama5d4.dtsi                                                >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/boot/dts/microchip/sama7g5-optee.dtsi --label=/dev/null                                          linux4microchip-fpga-2024.09/arch/arm/boot/dts/microchip/sama7g5-optee.dtsi                                          >>$PATCH_FILE 
diff -urN linux-6.6.51/arch/arm/boot/dts/microchip/sama7g5.dtsi                                                                  linux4microchip-fpga-2024.09/arch/arm/boot/dts/microchip/sama7g5.dtsi                                                >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/200_drivers-auxdisplay.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/Documentation/devicetree/bindings/auxdisplay/raspberrypi,sensehat-display.yaml --label=/dev/null          linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/auxdisplay/raspberrypi,sensehat-display.yaml          >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/auxdisplay/Kconfig                                                                                linux4microchip-fpga-2024.09/drivers/auxdisplay/Kconfig                                                              >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/auxdisplay/Makefile                                                                               linux4microchip-fpga-2024.09/drivers/auxdisplay/Makefile                                                             >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/auxdisplay/sensehat-display.c --label=/dev/null                                                   linux4microchip-fpga-2024.09/drivers/auxdisplay/sensehat-display.c                                                   >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/201_drivers-base.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/drivers/base/firmware_loader/sysfs_upload.c                                                               linux4microchip-fpga-2024.09/drivers/base/firmware_loader/sysfs_upload.c                                             >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/base/regmap/Kconfig                                                                               linux4microchip-fpga-2024.09/drivers/base/regmap/Kconfig                                                             >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/base/regmap/Makefile                                                                              linux4microchip-fpga-2024.09/drivers/base/regmap/Makefile                                                            >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/base/regmap/regmap-smccc.c --label=/dev/null                                                      linux4microchip-fpga-2024.09/drivers/base/regmap/regmap-smccc.c                                                      >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/202_drivers-cache.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/Documentation/devicetree/bindings/cache/sifive,ccache0.yaml                                               linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/cache/sifive,ccache0.yaml                             >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/cache/Kconfig                                                                                     linux4microchip-fpga-2024.09/drivers/cache/Kconfig                                                                   >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/cache/Makefile                                                                                    linux4microchip-fpga-2024.09/drivers/cache/Makefile                                                                  >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/cache/sifive_ccache.c --label=/dev/null                                                           linux4microchip-fpga-2024.09/drivers/cache/sifive_ccache.c                                                           >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/203_drivers-clk.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/Documentation/devicetree/bindings/clock/microchip,mpfs-ccc.yaml                                           linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/clock/microchip,mpfs-ccc.yaml                         >>$PATCH_FILE 
diff -urN linux-6.6.51/Documentation/devicetree/bindings/clock/microchip,mpfs-clkcfg.yaml                                        linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/clock/microchip,mpfs-clkcfg.yaml                      >>$PATCH_FILE 
diff -urN linux-6.6.51/Documentation/devicetree/bindings/display/bridge/microchip,sam9x7-lvds.yaml --label=/dev/null             linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/display/bridge/microchip,sam9x7-lvds.yaml             >>$PATCH_FILE 
diff -urN linux-6.6.51/Documentation/devicetree/bindings/display/bridge/microchip,sam9x75-mipi-dsi.yaml --label=/dev/null        linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/display/bridge/microchip,sam9x75-mipi-dsi.yaml        >>$PATCH_FILE 
diff -urN linux-6.6.51/Documentation/devicetree/bindings/rtc/microchip,mfps-rtc.yaml                                             linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/rtc/microchip,mfps-rtc.yaml                           >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/clk/Kconfig                                                                                       linux4microchip-fpga-2024.09/drivers/clk/Kconfig                                                                     >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/clk/Makefile                                                                                      linux4microchip-fpga-2024.09/drivers/clk/Makefile                                                                    >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/clk/at91/Makefile                                                                                 linux4microchip-fpga-2024.09/drivers/clk/at91/Makefile                                                               >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/clk/at91/clk-master.c                                                                             linux4microchip-fpga-2024.09/drivers/clk/at91/clk-master.c                                                           >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/clk/at91/clk-sam9x60-pll.c                                                                        linux4microchip-fpga-2024.09/drivers/clk/at91/clk-sam9x60-pll.c                                                      >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/clk/at91/pmc.h                                                                                    linux4microchip-fpga-2024.09/drivers/clk/at91/pmc.h                                                                  >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/clk/at91/sam9x60.c                                                                                linux4microchip-fpga-2024.09/drivers/clk/at91/sam9x60.c                                                              >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/clk/at91/sam9x7.c --label=/dev/null                                                               linux4microchip-fpga-2024.09/drivers/clk/at91/sam9x7.c                                                               >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/clk/at91/sama7g5.c                                                                                linux4microchip-fpga-2024.09/drivers/clk/at91/sama7g5.c                                                              >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/clk/clk-regmap.c --label=/dev/null                                                                linux4microchip-fpga-2024.09/drivers/clk/clk-regmap.c                                                                >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/clk/meson/Kconfig                                                                                 linux4microchip-fpga-2024.09/drivers/clk/meson/Kconfig                                                               >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/clk/meson/Makefile                                                                                linux4microchip-fpga-2024.09/drivers/clk/meson/Makefile                                                              >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/clk/meson/a1-peripherals.c                                                                        linux4microchip-fpga-2024.09/drivers/clk/meson/a1-peripherals.c                                                      >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/clk/meson/a1-pll.c                                                                                linux4microchip-fpga-2024.09/drivers/clk/meson/a1-pll.c                                                              >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/clk/meson/axg-aoclk.c                                                                             linux4microchip-fpga-2024.09/drivers/clk/meson/axg-aoclk.c                                                           >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/clk/meson/axg-audio.c                                                                             linux4microchip-fpga-2024.09/drivers/clk/meson/axg-audio.c                                                           >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/clk/meson/axg.c                                                                                   linux4microchip-fpga-2024.09/drivers/clk/meson/axg.c                                                                 >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/clk/meson/clk-cpu-dyndiv.c                                                                        linux4microchip-fpga-2024.09/drivers/clk/meson/clk-cpu-dyndiv.c                                                      >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/clk/meson/clk-dualdiv.c                                                                           linux4microchip-fpga-2024.09/drivers/clk/meson/clk-dualdiv.c                                                         >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/clk/meson/clk-mpll.c                                                                              linux4microchip-fpga-2024.09/drivers/clk/meson/clk-mpll.c                                                            >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/clk/meson/clk-phase.c                                                                             linux4microchip-fpga-2024.09/drivers/clk/meson/clk-phase.c                                                           >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/clk/meson/clk-pll.c                                                                               linux4microchip-fpga-2024.09/drivers/clk/meson/clk-pll.c                                                             >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/clk/meson/clk-regmap.c                                                                            linux4microchip-fpga-2024.09/drivers/clk/meson/clk-regmap.c                                                          >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/clk/meson/clk-regmap.h                                                                            linux4microchip-fpga-2024.09/drivers/clk/meson/clk-regmap.h                                                          >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/clk/meson/g12a-aoclk.c                                                                            linux4microchip-fpga-2024.09/drivers/clk/meson/g12a-aoclk.c                                                          >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/clk/meson/g12a.c                                                                                  linux4microchip-fpga-2024.09/drivers/clk/meson/g12a.c                                                                >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/clk/meson/gxbb-aoclk.c                                                                            linux4microchip-fpga-2024.09/drivers/clk/meson/gxbb-aoclk.c                                                          >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/clk/meson/gxbb.c                                                                                  linux4microchip-fpga-2024.09/drivers/clk/meson/gxbb.c                                                                >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/clk/meson/meson-aoclk.h                                                                           linux4microchip-fpga-2024.09/drivers/clk/meson/meson-aoclk.h                                                         >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/clk/meson/meson-eeclk.c                                                                           linux4microchip-fpga-2024.09/drivers/clk/meson/meson-eeclk.c                                                         >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/clk/meson/meson-eeclk.h                                                                           linux4microchip-fpga-2024.09/drivers/clk/meson/meson-eeclk.h                                                         >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/clk/meson/meson8-ddr.c                                                                            linux4microchip-fpga-2024.09/drivers/clk/meson/meson8-ddr.c                                                          >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/clk/meson/meson8b.c                                                                               linux4microchip-fpga-2024.09/drivers/clk/meson/meson8b.c                                                             >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/clk/meson/sclk-div.c                                                                              linux4microchip-fpga-2024.09/drivers/clk/meson/sclk-div.c                                                            >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/clk/meson/vid-pll-div.c                                                                           linux4microchip-fpga-2024.09/drivers/clk/meson/vid-pll-div.c                                                         >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/clk/microchip/Kconfig                                                                             linux4microchip-fpga-2024.09/drivers/clk/microchip/Kconfig                                                           >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/clk/microchip/clk-mpfs.c                                                                          linux4microchip-fpga-2024.09/drivers/clk/microchip/clk-mpfs.c                                                        >>$PATCH_FILE 
diff -urN linux-6.6.51/include/dt-bindings/clock/at91.h                                                                          linux4microchip-fpga-2024.09/include/dt-bindings/clock/at91.h                                                        >>$PATCH_FILE 
diff -urN linux-6.6.51/include/dt-bindings/clock/microchip,mpfs-clock.h                                                          linux4microchip-fpga-2024.09/include/dt-bindings/clock/microchip,mpfs-clock.h                                        >>$PATCH_FILE 
diff -urN linux-6.6.51/include/linux/clk/clk-regmap.h --label=/dev/null                                                          linux4microchip-fpga-2024.09/include/linux/clk/clk-regmap.h                                                          >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/204_drivers-clocksource.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/drivers/clocksource/Kconfig                                                                               linux4microchip-fpga-2024.09/drivers/clocksource/Kconfig                                                             >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/205_drivers-crypto.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/Documentation/devicetree/bindings/crypto/microchip,mpfs-crypto.yaml --label=/dev/null                     linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/crypto/microchip,mpfs-crypto.yaml                     >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/crypto/Kconfig                                                                                    linux4microchip-fpga-2024.09/drivers/crypto/Kconfig                                                                  >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/crypto/Makefile                                                                                   linux4microchip-fpga-2024.09/drivers/crypto/Makefile                                                                 >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/crypto/atmel-aes.c                                                                                linux4microchip-fpga-2024.09/drivers/crypto/atmel-aes.c                                                              >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/crypto/atmel-sha.c                                                                                linux4microchip-fpga-2024.09/drivers/crypto/atmel-sha.c                                                              >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/crypto/microchip/ --label=/dev/null                                                               linux4microchip-fpga-2024.09/drivers/crypto/microchip/                                                               >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/206_drivers-dma.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/Documentation/devicetree/bindings/dma/atmel-xdma.txt                                                      linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/dma/atmel-xdma.txt                                    >>$PATCH_FILE 
diff -urN linux-6.6.51/Documentation/devicetree/bindings/dma/microchip,mpfs-fpga-dma.yaml --label=/dev/null                      linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/dma/microchip,mpfs-fpga-dma.yaml                      >>$PATCH_FILE 
diff -urN linux-6.6.51/Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml                                         linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml                       >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/dma/at_xdmac.c                                                                                    linux4microchip-fpga-2024.09/drivers/dma/at_xdmac.c                                                                  >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/dma/sf-pdma/sf-pdma.c                                                                             linux4microchip-fpga-2024.09/drivers/dma/sf-pdma/sf-pdma.c                                                           >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/dma/sf-pdma/sf-pdma.h                                                                             linux4microchip-fpga-2024.09/drivers/dma/sf-pdma/sf-pdma.h                                                           >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/207_drivers-u-dma-buf.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/drivers/dma-buf/Kconfig                                                                                   linux4microchip-fpga-2024.09/drivers/dma-buf/Kconfig                                                                 >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/dma-buf/Makefile                                                                                  linux4microchip-fpga-2024.09/drivers/dma-buf/Makefile                                                                >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/dma-buf/u-dma-buf.c --label=/dev/null                                                             linux4microchip-fpga-2024.09/drivers/dma-buf/u-dma-buf.c                                                             >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/208_drivers-firmware.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/drivers/firmware/Kconfig                                                                                  linux4microchip-fpga-2024.09/drivers/firmware/Kconfig                                                                >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/firmware/Makefile                                                                                 linux4microchip-fpga-2024.09/drivers/firmware/Makefile                                                               >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/firmware/microchip/ --label=/dev/null                                                             linux4microchip-fpga-2024.09/drivers/firmware/microchip/                                                             >>$PATCH_FILE 
diff -urN linux-6.6.51/include/linux/firmware.h                                                                                  linux4microchip-fpga-2024.09/include/linux/firmware.h                                                                >>$PATCH_FILE 
diff -urN linux-6.6.51/lib/test_firmware.c                                                                                       linux4microchip-fpga-2024.09/lib/test_firmware.c                                                                     >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/209_drivers-gpio.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/Documentation/devicetree/bindings/gpio/microchip,mpfs-gpio.yaml                                           linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/gpio/microchip,mpfs-gpio.yaml                         >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/gpio/Kconfig                                                                                      linux4microchip-fpga-2024.09/drivers/gpio/Kconfig                                                                    >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/gpio/Makefile                                                                                     linux4microchip-fpga-2024.09/drivers/gpio/Makefile                                                                   >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/gpio/gpio-mpfs.c --label=/dev/null                                                                linux4microchip-fpga-2024.09/drivers/gpio/gpio-mpfs.c                                                                >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/210_drivers-gpu-drm.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml                                         linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml                       >>$PATCH_FILE 
diff -urN linux-6.6.51/Documentation/devicetree/bindings/display/panel/panel-simple.yaml                                         linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/display/panel/panel-simple.yaml                       >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c                                                            linux4microchip-fpga-2024.09/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c                                          >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c                                                              linux4microchip-fpga-2024.09/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c                                            >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.h                                                              linux4microchip-fpga-2024.09/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.h                                            >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c                                                           linux4microchip-fpga-2024.09/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c                                         >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/gpu/drm/bridge/Kconfig                                                                            linux4microchip-fpga-2024.09/drivers/gpu/drm/bridge/Kconfig                                                          >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/gpu/drm/bridge/Makefile                                                                           linux4microchip-fpga-2024.09/drivers/gpu/drm/bridge/Makefile                                                         >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/gpu/drm/bridge/dw-mipi-dsi-mchp.c --label=/dev/null                                               linux4microchip-fpga-2024.09/drivers/gpu/drm/bridge/dw-mipi-dsi-mchp.c                                               >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/gpu/drm/bridge/microchip-lvds.c --label=/dev/null                                                 linux4microchip-fpga-2024.09/drivers/gpu/drm/bridge/microchip-lvds.c                                                 >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/gpu/drm/drm_atomic_helper.c                                                                       linux4microchip-fpga-2024.09/drivers/gpu/drm/drm_atomic_helper.c                                                     >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/gpu/drm/panel/panel-himax-hx8394.c                                                                linux4microchip-fpga-2024.09/drivers/gpu/drm/panel/panel-himax-hx8394.c                                              >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/gpu/drm/panel/panel-simple.c                                                                      linux4microchip-fpga-2024.09/drivers/gpu/drm/panel/panel-simple.c                                                    >>$PATCH_FILE 
diff -urN linux-6.6.51/include/drm/drm_atomic_helper.h                                                                           linux4microchip-fpga-2024.09/include/drm/drm_atomic_helper.h                                                         >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/211_drivers-hwmon.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/drivers/hwmon/Kconfig                                                                                     linux4microchip-fpga-2024.09/drivers/hwmon/Kconfig                                                                   >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/hwmon/Makefile                                                                                    linux4microchip-fpga-2024.09/drivers/hwmon/Makefile                                                                  >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/hwmon/tvs-mpfs.c --label=/dev/null                                                                linux4microchip-fpga-2024.09/drivers/hwmon/tvs-mpfs.c                                                                >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/212_drivers-i2c-busses.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/Documentation/devicetree/bindings/i2c/microchip,corei2c.yaml                                              linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/i2c/microchip,corei2c.yaml                            >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/i2c/busses/i2c-at91-core.c                                                                        linux4microchip-fpga-2024.09/drivers/i2c/busses/i2c-at91-core.c                                                      >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/i2c/busses/i2c-at91-master.c                                                                      linux4microchip-fpga-2024.09/drivers/i2c/busses/i2c-at91-master.c                                                    >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/i2c/busses/i2c-microchip-corei2c.c                                                                linux4microchip-fpga-2024.09/drivers/i2c/busses/i2c-microchip-corei2c.c                                              >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/213_drivers-iio-adc.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/Documentation/ABI/testing/sysfs-bus-iio-adc-mcp3564 --label=/dev/null                                     linux4microchip-fpga-2024.09/Documentation/ABI/testing/sysfs-bus-iio-adc-mcp3564                                     >>$PATCH_FILE 
diff -urN linux-6.6.51/Documentation/ABI/testing/sysfs-bus-iio-adc-pac1934 --label=/dev/null                                     linux4microchip-fpga-2024.09/Documentation/ABI/testing/sysfs-bus-iio-adc-pac1934                                     >>$PATCH_FILE 
diff -urN linux-6.6.51/Documentation/devicetree/bindings/iio/adc/atmel,sama5d2-adc.yaml                                          linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/iio/adc/atmel,sama5d2-adc.yaml                        >>$PATCH_FILE 
diff -urN linux-6.6.51/Documentation/devicetree/bindings/iio/adc/microchip,mcp3564.yaml --label=/dev/null                        linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/iio/adc/microchip,mcp3564.yaml                        >>$PATCH_FILE 
diff -urN linux-6.6.51/Documentation/devicetree/bindings/iio/adc/microchip,pac1934.yaml --label=/dev/null                        linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/iio/adc/microchip,pac1934.yaml                        >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/iio/adc/Kconfig                                                                                   linux4microchip-fpga-2024.09/drivers/iio/adc/Kconfig                                                                 >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/iio/adc/Makefile                                                                                  linux4microchip-fpga-2024.09/drivers/iio/adc/Makefile                                                                >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/iio/adc/at91-sama5d2_adc.c                                                                        linux4microchip-fpga-2024.09/drivers/iio/adc/at91-sama5d2_adc.c                                                      >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/iio/adc/mcp3564.c --label=/dev/null                                                               linux4microchip-fpga-2024.09/drivers/iio/adc/mcp3564.c                                                               >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/iio/adc/pac1934.c --label=/dev/null                                                               linux4microchip-fpga-2024.09/drivers/iio/adc/pac1934.c                                                               >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/214_drivers-input-misc.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/Documentation/devicetree/bindings/input/atmel,ptc.txt --label=/dev/null                                   linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/input/atmel,ptc.txt                                   >>$PATCH_FILE 
diff -urN linux-6.6.51/Documentation/devicetree/bindings/input/raspberrypi,sensehat-joystick.yaml --label=/dev/null              linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/input/raspberrypi,sensehat-joystick.yaml              >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/input/misc/Kconfig                                                                                linux4microchip-fpga-2024.09/drivers/input/misc/Kconfig                                                              >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/input/misc/Makefile                                                                               linux4microchip-fpga-2024.09/drivers/input/misc/Makefile                                                             >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/input/misc/atmel_ptc.c --label=/dev/null                                                          linux4microchip-fpga-2024.09/drivers/input/misc/atmel_ptc.c                                                          >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/215_drivers-irqchip.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/Documentation/devicetree/bindings/interrupt-controller/microchip,mpfs-gpio-irq-mux.yaml --label=/dev/null linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/interrupt-controller/microchip,mpfs-gpio-irq-mux.yaml >>$PATCH_FILE 
diff -urN linux-6.6.51/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml                             linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml           >>$PATCH_FILE 
diff -urN linux-6.6.51/Documentation/devicetree/bindings/timer/sifive,clint.yaml                                                 linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/timer/sifive,clint.yaml                               >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/irqchip/Kconfig                                                                                   linux4microchip-fpga-2024.09/drivers/irqchip/Kconfig                                                                 >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/irqchip/Makefile                                                                                  linux4microchip-fpga-2024.09/drivers/irqchip/Makefile                                                                >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/irqchip/irq-atmel-aic5.c                                                                          linux4microchip-fpga-2024.09/drivers/irqchip/irq-atmel-aic5.c                                                        >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/irqchip/irq-mpfs-mux.c --label=/dev/null                                                          linux4microchip-fpga-2024.09/drivers/irqchip/irq-mpfs-mux.c                                                          >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/216_drivers-mailbox.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/Documentation/devicetree/bindings/mailbox/microchip,miv-ihc.yaml --label=/dev/null                        linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/mailbox/microchip,miv-ihc.yaml                        >>$PATCH_FILE 
diff -urN linux-6.6.51/Documentation/devicetree/bindings/mailbox/microchip,mpfs-mailbox.yaml                                     linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/mailbox/microchip,mpfs-mailbox.yaml                   >>$PATCH_FILE 
diff -urN linux-6.6.51/Documentation/devicetree/bindings/mailbox/microchip,sbi-ipc.yaml --label=/dev/null                        linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/mailbox/microchip,sbi-ipc.yaml                        >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/mailbox/Kconfig                                                                                   linux4microchip-fpga-2024.09/drivers/mailbox/Kconfig                                                                 >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/mailbox/Makefile                                                                                  linux4microchip-fpga-2024.09/drivers/mailbox/Makefile                                                                >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/mailbox/mailbox-mchp-ipc-sbi.c --label=/dev/null                                                  linux4microchip-fpga-2024.09/drivers/mailbox/mailbox-mchp-ipc-sbi.c                                                  >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/mailbox/mailbox-miv-ihc.c --label=/dev/null                                                       linux4microchip-fpga-2024.09/drivers/mailbox/mailbox-miv-ihc.c                                                       >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/mailbox/mailbox-mpfs.c                                                                            linux4microchip-fpga-2024.09/drivers/mailbox/mailbox-mpfs.c                                                          >>$PATCH_FILE 
diff -urN linux-6.6.51/include/dt-bindings/mailbox/miv-ihc.h --label=/dev/null                                                   linux4microchip-fpga-2024.09/include/dt-bindings/mailbox/miv-ihc.h                                                   >>$PATCH_FILE 
diff -urN linux-6.6.51/include/linux/mailbox/mchp-ipc.h --label=/dev/null                                                        linux4microchip-fpga-2024.09/include/linux/mailbox/mchp-ipc.h                                                        >>$PATCH_FILE 
diff -urN linux-6.6.51/include/linux/mailbox/miv_ihc.h --label=/dev/null                                                         linux4microchip-fpga-2024.09/include/linux/mailbox/miv_ihc.h                                                         >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/217_drivers-media-i2c.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/drivers/media/i2c/imx334.c                                                                                linux4microchip-fpga-2024.09/drivers/media/i2c/imx334.c                                                              >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/218_drivers-media-platform.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/Documentation/devicetree/bindings/media/microchip,fpga-dscmi.yaml --label=/dev/null                       linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/media/microchip,fpga-dscmi.yaml                       >>$PATCH_FILE 
diff -urN linux-6.6.51/Documentation/devicetree/bindings/media/microchip,generic-video-pipeline-connector.yaml --label=/dev/null linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/media/microchip,generic-video-pipeline-connector.yaml >>$PATCH_FILE 
diff -urN linux-6.6.51/Documentation/devicetree/bindings/media/microchip,image-enhancement.yaml --label=/dev/null                linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/media/microchip,image-enhancement.yaml                >>$PATCH_FILE 
diff -urN linux-6.6.51/Documentation/devicetree/bindings/media/microchip,mipi-csi2rx.yaml --label=/dev/null                      linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/media/microchip,mipi-csi2rx.yaml                      >>$PATCH_FILE 
diff -urN linux-6.6.51/Documentation/devicetree/bindings/media/microchip,osd.yaml --label=/dev/null                              linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/media/microchip,osd.yaml                              >>$PATCH_FILE 
diff -urN linux-6.6.51/Documentation/devicetree/bindings/media/microchip,rgb-scaler.yaml --label=/dev/null                       linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/media/microchip,rgb-scaler.yaml                       >>$PATCH_FILE 
diff -urN linux-6.6.51/Documentation/devicetree/bindings/media/microchip,video-capture.yaml --label=/dev/null                    linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/media/microchip,video-capture.yaml                    >>$PATCH_FILE 
diff -urN linux-6.6.51/Documentation/devicetree/bindings/media/microchip,yuv2h264.yaml --label=/dev/null                         linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/media/microchip,yuv2h264.yaml                         >>$PATCH_FILE 
diff -urN linux-6.6.51/Documentation/devicetree/bindings/media/snps,dw-csi.yaml --label=/dev/null                                linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/media/snps,dw-csi.yaml                                >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/media/platform/Kconfig                                                                            linux4microchip-fpga-2024.09/drivers/media/platform/Kconfig                                                          >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/media/platform/Makefile                                                                           linux4microchip-fpga-2024.09/drivers/media/platform/Makefile                                                         >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/media/platform/dwc/ --label=/dev/null                                                             linux4microchip-fpga-2024.09/drivers/media/platform/dwc/                                                             >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/media/platform/microchip/Kconfig                                                                  linux4microchip-fpga-2024.09/drivers/media/platform/microchip/Kconfig                                                >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/media/platform/microchip/Makefile                                                                 linux4microchip-fpga-2024.09/drivers/media/platform/microchip/Makefile                                               >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/media/platform/microchip/mchp-dscmi.c --label=/dev/null                                           linux4microchip-fpga-2024.09/drivers/media/platform/microchip/mchp-dscmi.c                                           >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/media/platform/microchip/microchip-common.c --label=/dev/null                                     linux4microchip-fpga-2024.09/drivers/media/platform/microchip/microchip-common.c                                     >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/media/platform/microchip/microchip-common.h --label=/dev/null                                     linux4microchip-fpga-2024.09/drivers/media/platform/microchip/microchip-common.h                                     >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/media/platform/microchip/microchip-gvpc.c --label=/dev/null                                       linux4microchip-fpga-2024.09/drivers/media/platform/microchip/microchip-gvpc.c                                       >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/media/platform/microchip/microchip-image-enhancement.c --label=/dev/null                          linux4microchip-fpga-2024.09/drivers/media/platform/microchip/microchip-image-enhancement.c                          >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/media/platform/microchip/microchip-mipi-csi2rx.c --label=/dev/null                                linux4microchip-fpga-2024.09/drivers/media/platform/microchip/microchip-mipi-csi2rx.c                                >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/media/platform/microchip/microchip-osd.c --label=/dev/null                                        linux4microchip-fpga-2024.09/drivers/media/platform/microchip/microchip-osd.c                                        >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/media/platform/microchip/microchip-rgb-scaler.c --label=/dev/null                                 linux4microchip-fpga-2024.09/drivers/media/platform/microchip/microchip-rgb-scaler.c                                 >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/media/platform/microchip/microchip-vcpp.c --label=/dev/null                                       linux4microchip-fpga-2024.09/drivers/media/platform/microchip/microchip-vcpp.c                                       >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/media/platform/microchip/microchip-yuv2h264.c --label=/dev/null                                   linux4microchip-fpga-2024.09/drivers/media/platform/microchip/microchip-yuv2h264.c                                   >>$PATCH_FILE 
diff -urN linux-6.6.51/include/dt-bindings/media/microchip-common.h --label=/dev/null                                            linux4microchip-fpga-2024.09/include/dt-bindings/media/microchip-common.h                                            >>$PATCH_FILE 
diff -urN linux-6.6.51/include/media/dwc/ --label=/dev/null                                                                      linux4microchip-fpga-2024.09/include/media/dwc/                                                                      >>$PATCH_FILE 
diff -urN linux-6.6.51/include/uapi/linux/media-bus-format.h                                                                     linux4microchip-fpga-2024.09/include/uapi/linux/media-bus-format.h                                                   >>$PATCH_FILE 
diff -urN linux-6.6.51/include/uapi/linux/v4l2-mediabus.h                                                                        linux4microchip-fpga-2024.09/include/uapi/linux/v4l2-mediabus.h                                                      >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/219_drivers-mfd.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/Documentation/devicetree/bindings/mfd/atmel-hlcdc.txt                                                     linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/mfd/atmel-hlcdc.txt                                   >>$PATCH_FILE 
diff -urN linux-6.6.51/Documentation/devicetree/bindings/mfd/raspberrypi,sensehat.yaml --label=/dev/null                         linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/mfd/raspberrypi,sensehat.yaml                         >>$PATCH_FILE 
diff -urN linux-6.6.51/Documentation/devicetree/bindings/mfd/syscon-smc.yaml --label=/dev/null                                   linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/mfd/syscon-smc.yaml                                   >>$PATCH_FILE 
diff -urN linux-6.6.51/Documentation/devicetree/bindings/mfd/syscon.yaml                                                         linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/mfd/syscon.yaml                                       >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/mfd/atmel-hlcdc.c                                                                                 linux4microchip-fpga-2024.09/drivers/mfd/atmel-hlcdc.c                                                               >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/mfd/simple-mfd-i2c.c                                                                              linux4microchip-fpga-2024.09/drivers/mfd/simple-mfd-i2c.c                                                            >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/mfd/syscon.c                                                                                      linux4microchip-fpga-2024.09/drivers/mfd/syscon.c                                                                    >>$PATCH_FILE 
diff -urN linux-6.6.51/include/linux/mfd/atmel-hlcdc.h                                                                           linux4microchip-fpga-2024.09/include/linux/mfd/atmel-hlcdc.h                                                         >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/220_drivers-misc.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/Documentation/devicetree/bindings/misc/microchip,mpfs-dma-proxy.yaml --label=/dev/null                    linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/misc/microchip,mpfs-dma-proxy.yaml                    >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/misc/Kconfig                                                                                      linux4microchip-fpga-2024.09/drivers/misc/Kconfig                                                                    >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/misc/Makefile                                                                                     linux4microchip-fpga-2024.09/drivers/misc/Makefile                                                                   >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/misc/eeprom/at24.c                                                                                linux4microchip-fpga-2024.09/drivers/misc/eeprom/at24.c                                                              >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/misc/mpfs-dma-proxy.c --label=/dev/null                                                           linux4microchip-fpga-2024.09/drivers/misc/mpfs-dma-proxy.c                                                           >>$PATCH_FILE 
diff -urN linux-6.6.51/include/uapi/misc/mpfs-dma-proxy.h --label=/dev/null                                                      linux4microchip-fpga-2024.09/include/uapi/misc/mpfs-dma-proxy.h                                                      >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/221_drivers-mmc-core.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/drivers/mmc/core/Kconfig                                                                                  linux4microchip-fpga-2024.09/drivers/mmc/core/Kconfig                                                                >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/mmc/core/card.h                                                                                   linux4microchip-fpga-2024.09/drivers/mmc/core/card.h                                                                 >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/mmc/core/debugfs.c                                                                                linux4microchip-fpga-2024.09/drivers/mmc/core/debugfs.c                                                              >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/mmc/core/mmc.c                                                                                    linux4microchip-fpga-2024.09/drivers/mmc/core/mmc.c                                                                  >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/mmc/core/mmc_test.c                                                                               linux4microchip-fpga-2024.09/drivers/mmc/core/mmc_test.c                                                             >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/mmc/core/queue.c                                                                                  linux4microchip-fpga-2024.09/drivers/mmc/core/queue.c                                                                >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/mmc/core/quirks.h                                                                                 linux4microchip-fpga-2024.09/drivers/mmc/core/quirks.h                                                               >>$PATCH_FILE 
diff -urN linux-6.6.51/include/linux/mmc/card.h                                                                                  linux4microchip-fpga-2024.09/include/linux/mmc/card.h                                                                >>$PATCH_FILE 
diff -urN linux-6.6.51/include/linux/mmc/core.h                                                                                  linux4microchip-fpga-2024.09/include/linux/mmc/core.h                                                                >>$PATCH_FILE 
diff -urN linux-6.6.51/include/linux/mmc/host.h                                                                                  linux4microchip-fpga-2024.09/include/linux/mmc/host.h                                                                >>$PATCH_FILE 
diff -urN linux-6.6.51/include/linux/mmc/mmc.h                                                                                   linux4microchip-fpga-2024.09/include/linux/mmc/mmc.h                                                                 >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/222_drivers-mmc-host.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/Documentation/devicetree/bindings/mmc/cdns,sdhci.yaml                                                     linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/mmc/cdns,sdhci.yaml                                   >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/mmc/host/atmel-mci.c                                                                              linux4microchip-fpga-2024.09/drivers/mmc/host/atmel-mci.c                                                            >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/mmc/host/mmc_hsq.c                                                                                linux4microchip-fpga-2024.09/drivers/mmc/host/mmc_hsq.c                                                              >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/mmc/host/mmc_hsq.h                                                                                linux4microchip-fpga-2024.09/drivers/mmc/host/mmc_hsq.h                                                              >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/mmc/host/mmc_spi.c                                                                                linux4microchip-fpga-2024.09/drivers/mmc/host/mmc_spi.c                                                              >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/mmc/host/sdhci-of-at91.c                                                                          linux4microchip-fpga-2024.09/drivers/mmc/host/sdhci-of-at91.c                                                        >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/mmc/host/sdhci.c                                                                                  linux4microchip-fpga-2024.09/drivers/mmc/host/sdhci.c                                                                >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/mmc/host/sdhci.h                                                                                  linux4microchip-fpga-2024.09/drivers/mmc/host/sdhci.h                                                                >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/223_drivers-mtd-nand.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/Documentation/devicetree/bindings/mtd/atmel-nand.txt                                                      linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/mtd/atmel-nand.txt                                    >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/mtd/nand/raw/atmel/pmecc.c                                                                        linux4microchip-fpga-2024.09/drivers/mtd/nand/raw/atmel/pmecc.c                                                      >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/224_drivers-mtd-spi-nor.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/drivers/mtd/spi-nor/atmel.c                                                                               linux4microchip-fpga-2024.09/drivers/mtd/spi-nor/atmel.c                                                             >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/mtd/spi-nor/core.c                                                                                linux4microchip-fpga-2024.09/drivers/mtd/spi-nor/core.c                                                              >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/mtd/spi-nor/core.h                                                                                linux4microchip-fpga-2024.09/drivers/mtd/spi-nor/core.h                                                              >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/mtd/spi-nor/macronix.c                                                                            linux4microchip-fpga-2024.09/drivers/mtd/spi-nor/macronix.c                                                          >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/mtd/spi-nor/sfdp.c                                                                                linux4microchip-fpga-2024.09/drivers/mtd/spi-nor/sfdp.c                                                              >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/mtd/spi-nor/sfdp.h                                                                                linux4microchip-fpga-2024.09/drivers/mtd/spi-nor/sfdp.h                                                              >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/mtd/spi-nor/sst.c                                                                                 linux4microchip-fpga-2024.09/drivers/mtd/spi-nor/sst.c                                                               >>$PATCH_FILE 
diff -urN linux-6.6.51/include/linux/mtd/spi-nor.h                                                                               linux4microchip-fpga-2024.09/include/linux/mtd/spi-nor.h                                                             >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/225_drivers-net-can.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/Documentation/devicetree/bindings/net/can/microchip,mpfs-can.yaml                                         linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/net/can/microchip,mpfs-can.yaml                       >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/net/can/Kconfig                                                                                   linux4microchip-fpga-2024.09/drivers/net/can/Kconfig                                                                 >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/net/can/Makefile                                                                                  linux4microchip-fpga-2024.09/drivers/net/can/Makefile                                                                >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/net/can/mpfs_can.c --label=/dev/null                                                              linux4microchip-fpga-2024.09/drivers/net/can/mpfs_can.c                                                              >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/226_drivers-net-dsa-microchip.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/drivers/net/dsa/microchip/ksz_common.c                                                                    linux4microchip-fpga-2024.09/drivers/net/dsa/microchip/ksz_common.c                                                  >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/227_drivers-net-ethernet-cadence.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/Documentation/devicetree/bindings/net/cdns,macb.yaml                                                      linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/net/cdns,macb.yaml                                    >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/net/ethernet/cadence/macb.h                                                                       linux4microchip-fpga-2024.09/drivers/net/ethernet/cadence/macb.h                                                     >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/net/ethernet/cadence/macb_main.c                                                                  linux4microchip-fpga-2024.09/drivers/net/ethernet/cadence/macb_main.c                                                >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/net/ethernet/cadence/macb_ptp.c                                                                   linux4microchip-fpga-2024.09/drivers/net/ethernet/cadence/macb_ptp.c                                                 >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/228_drivers-net-phy.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/drivers/net/phy/phylink.c                                                                                 linux4microchip-fpga-2024.09/drivers/net/phy/phylink.c                                                               >>$PATCH_FILE 
diff -urN linux-6.6.51/include/linux/phylink.h                                                                                   linux4microchip-fpga-2024.09/include/linux/phylink.h                                                                 >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/229_drivers-net-wireless-microchip.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/drivers/net/wireless/microchip/Makefile                                                                   linux4microchip-fpga-2024.09/drivers/net/wireless/microchip/Makefile                                                 >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/net/wireless/microchip/wilc1000/Kconfig                                                           linux4microchip-fpga-2024.09/drivers/net/wireless/microchip/wilc1000/Kconfig                                         >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/net/wireless/microchip/wilc1000/Makefile                                                          linux4microchip-fpga-2024.09/drivers/net/wireless/microchip/wilc1000/Makefile                                        >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/net/wireless/microchip/wilc1000/bt.c --label=/dev/null                                            linux4microchip-fpga-2024.09/drivers/net/wireless/microchip/wilc1000/bt.c                                            >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/net/wireless/microchip/wilc1000/cfg80211.c                                                        linux4microchip-fpga-2024.09/drivers/net/wireless/microchip/wilc1000/cfg80211.c                                      >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/net/wireless/microchip/wilc1000/cfg80211.h                                                        linux4microchip-fpga-2024.09/drivers/net/wireless/microchip/wilc1000/cfg80211.h                                      >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/net/wireless/microchip/wilc1000/debugfs.c --label=/dev/null                                       linux4microchip-fpga-2024.09/drivers/net/wireless/microchip/wilc1000/debugfs.c                                       >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/net/wireless/microchip/wilc1000/debugfs.h --label=/dev/null                                       linux4microchip-fpga-2024.09/drivers/net/wireless/microchip/wilc1000/debugfs.h                                       >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/net/wireless/microchip/wilc1000/hif.c                                                             linux4microchip-fpga-2024.09/drivers/net/wireless/microchip/wilc1000/hif.c                                           >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/net/wireless/microchip/wilc1000/hif.h                                                             linux4microchip-fpga-2024.09/drivers/net/wireless/microchip/wilc1000/hif.h                                           >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/net/wireless/microchip/wilc1000/mon.c                                                             linux4microchip-fpga-2024.09/drivers/net/wireless/microchip/wilc1000/mon.c                                           >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/net/wireless/microchip/wilc1000/netdev.c                                                          linux4microchip-fpga-2024.09/drivers/net/wireless/microchip/wilc1000/netdev.c                                        >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/net/wireless/microchip/wilc1000/netdev.h                                                          linux4microchip-fpga-2024.09/drivers/net/wireless/microchip/wilc1000/netdev.h                                        >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/net/wireless/microchip/wilc1000/power.c --label=/dev/null                                         linux4microchip-fpga-2024.09/drivers/net/wireless/microchip/wilc1000/power.c                                         >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/net/wireless/microchip/wilc1000/sdio.c                                                            linux4microchip-fpga-2024.09/drivers/net/wireless/microchip/wilc1000/sdio.c                                          >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/net/wireless/microchip/wilc1000/spi.c                                                             linux4microchip-fpga-2024.09/drivers/net/wireless/microchip/wilc1000/spi.c                                           >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/net/wireless/microchip/wilc1000/sysfs.c --label=/dev/null                                         linux4microchip-fpga-2024.09/drivers/net/wireless/microchip/wilc1000/sysfs.c                                         >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/net/wireless/microchip/wilc1000/wilcs02_loopback.c --label=/dev/null                              linux4microchip-fpga-2024.09/drivers/net/wireless/microchip/wilc1000/wilcs02_loopback.c                              >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/net/wireless/microchip/wilc1000/wilcs02_loopback.h --label=/dev/null                              linux4microchip-fpga-2024.09/drivers/net/wireless/microchip/wilc1000/wilcs02_loopback.h                              >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/net/wireless/microchip/wilc1000/wlan.c                                                            linux4microchip-fpga-2024.09/drivers/net/wireless/microchip/wilc1000/wlan.c                                          >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/net/wireless/microchip/wilc1000/wlan.h                                                            linux4microchip-fpga-2024.09/drivers/net/wireless/microchip/wilc1000/wlan.h                                          >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/net/wireless/microchip/wilc1000/wlan_cfg.c                                                        linux4microchip-fpga-2024.09/drivers/net/wireless/microchip/wilc1000/wlan_cfg.c                                      >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/net/wireless/microchip/wilc1000/wlan_cfg.h                                                        linux4microchip-fpga-2024.09/drivers/net/wireless/microchip/wilc1000/wlan_cfg.h                                      >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/net/wireless/microchip/wilc1000/wlan_if.h                                                         linux4microchip-fpga-2024.09/drivers/net/wireless/microchip/wilc1000/wlan_if.h                                       >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/230_drivers-of.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/Documentation/devicetree/configfs-overlays.txt --label=/dev/null                                          linux4microchip-fpga-2024.09/Documentation/devicetree/configfs-overlays.txt                                          >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/of/Kconfig                                                                                        linux4microchip-fpga-2024.09/drivers/of/Kconfig                                                                      >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/of/Makefile                                                                                       linux4microchip-fpga-2024.09/drivers/of/Makefile                                                                     >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/of/configfs.c --label=/dev/null                                                                   linux4microchip-fpga-2024.09/drivers/of/configfs.c                                                                   >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/of/of_reserved_mem.c                                                                              linux4microchip-fpga-2024.09/drivers/of/of_reserved_mem.c                                                            >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/231_drivers-pci-controller.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/Documentation/devicetree/bindings/pci/microchip,pcie-host.yaml                                            linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/pci/microchip,pcie-host.yaml                          >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/pci/controller/pcie-microchip-host.c                                                              linux4microchip-fpga-2024.09/drivers/pci/controller/pcie-microchip-host.c                                            >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/232_drivers-phy-microchip.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/Documentation/devicetree/bindings/phy/microchip,sama7-usb-phy.yaml --label=/dev/null                      linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/phy/microchip,sama7-usb-phy.yaml                      >>$PATCH_FILE 
diff -urN linux-6.6.51/Documentation/devicetree/bindings/phy/microchip,sama7-utmi-clk.yaml --label=/dev/null                     linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/phy/microchip,sama7-utmi-clk.yaml                     >>$PATCH_FILE 
diff -urN linux-6.6.51/Documentation/devicetree/bindings/phy/snps,dw-dphy-rx.txt --label=/dev/null                               linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/phy/snps,dw-dphy-rx.txt                               >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/phy/microchip/Kconfig                                                                             linux4microchip-fpga-2024.09/drivers/phy/microchip/Kconfig                                                           >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/phy/microchip/Makefile                                                                            linux4microchip-fpga-2024.09/drivers/phy/microchip/Makefile                                                          >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/phy/microchip/phy-sama7-usb.c --label=/dev/null                                                   linux4microchip-fpga-2024.09/drivers/phy/microchip/phy-sama7-usb.c                                                   >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/phy/microchip/phy-sama7-utmi-clk.c --label=/dev/null                                              linux4microchip-fpga-2024.09/drivers/phy/microchip/phy-sama7-utmi-clk.c                                              >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/233_drivers-pinctrl-bcm.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/drivers/pinctrl/bcm/pinctrl-ns.c                                                                          linux4microchip-fpga-2024.09/drivers/pinctrl/bcm/pinctrl-ns.c                                                        >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/234_drivers-pinctrl-berlin.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/drivers/pinctrl/berlin/berlin-bg2.c                                                                       linux4microchip-fpga-2024.09/drivers/pinctrl/berlin/berlin-bg2.c                                                     >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/pinctrl/berlin/berlin-bg2cd.c                                                                     linux4microchip-fpga-2024.09/drivers/pinctrl/berlin/berlin-bg2cd.c                                                   >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/pinctrl/berlin/berlin-bg2q.c                                                                      linux4microchip-fpga-2024.09/drivers/pinctrl/berlin/berlin-bg2q.c                                                    >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/pinctrl/berlin/berlin-bg4ct.c                                                                     linux4microchip-fpga-2024.09/drivers/pinctrl/berlin/berlin-bg4ct.c                                                   >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/pinctrl/berlin/pinctrl-as370.c                                                                    linux4microchip-fpga-2024.09/drivers/pinctrl/berlin/pinctrl-as370.c                                                  >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/235_drivers-pinctrl-mvebu.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/drivers/pinctrl/mvebu/pinctrl-armada-38x.c                                                                linux4microchip-fpga-2024.09/drivers/pinctrl/mvebu/pinctrl-armada-38x.c                                              >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/pinctrl/mvebu/pinctrl-armada-39x.c                                                                linux4microchip-fpga-2024.09/drivers/pinctrl/mvebu/pinctrl-armada-39x.c                                              >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/pinctrl/mvebu/pinctrl-armada-ap806.c                                                              linux4microchip-fpga-2024.09/drivers/pinctrl/mvebu/pinctrl-armada-ap806.c                                            >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/pinctrl/mvebu/pinctrl-armada-cp110.c                                                              linux4microchip-fpga-2024.09/drivers/pinctrl/mvebu/pinctrl-armada-cp110.c                                            >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/pinctrl/mvebu/pinctrl-armada-xp.c                                                                 linux4microchip-fpga-2024.09/drivers/pinctrl/mvebu/pinctrl-armada-xp.c                                               >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/pinctrl/mvebu/pinctrl-dove.c                                                                      linux4microchip-fpga-2024.09/drivers/pinctrl/mvebu/pinctrl-dove.c                                                    >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/pinctrl/mvebu/pinctrl-kirkwood.c                                                                  linux4microchip-fpga-2024.09/drivers/pinctrl/mvebu/pinctrl-kirkwood.c                                                >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/pinctrl/mvebu/pinctrl-orion.c                                                                     linux4microchip-fpga-2024.09/drivers/pinctrl/mvebu/pinctrl-orion.c                                                   >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/236_drivers-pinctrl-nomadik.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/drivers/pinctrl/nomadik/pinctrl-abx500.c                                                                  linux4microchip-fpga-2024.09/drivers/pinctrl/nomadik/pinctrl-abx500.c                                                >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/pinctrl/nomadik/pinctrl-nomadik.c                                                                 linux4microchip-fpga-2024.09/drivers/pinctrl/nomadik/pinctrl-nomadik.c                                               >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/237_drivers-pinctrl-ti.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/drivers/pinctrl/ti/pinctrl-ti-iodelay.c                                                                   linux4microchip-fpga-2024.09/drivers/pinctrl/ti/pinctrl-ti-iodelay.c                                                 >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/238_drivers-pinctrl-at91.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/Documentation/devicetree/bindings/pinctrl/atmel,at91-pio4-pinctrl.txt                                     linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/pinctrl/atmel,at91-pio4-pinctrl.txt                   >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/pinctrl/pinctrl-at91-pio4.c                                                                       linux4microchip-fpga-2024.09/drivers/pinctrl/pinctrl-at91-pio4.c                                                     >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/pinctrl/pinctrl-at91.c                                                                            linux4microchip-fpga-2024.09/drivers/pinctrl/pinctrl-at91.c                                                          >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/239_drivers-pinctrl-xway.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/drivers/pinctrl/pinctrl-xway.c                                                                            linux4microchip-fpga-2024.09/drivers/pinctrl/pinctrl-xway.c                                                          >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/240_drivers-power-reset.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/drivers/power/reset/Kconfig                                                                               linux4microchip-fpga-2024.09/drivers/power/reset/Kconfig                                                             >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/power/reset/at91-sama5d2_shdwc.c                                                                  linux4microchip-fpga-2024.09/drivers/power/reset/at91-sama5d2_shdwc.c                                                >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/241_drivers-pwm.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/drivers/pwm/pwm-atmel-hlcdc.c                                                                             linux4microchip-fpga-2024.09/drivers/pwm/pwm-atmel-hlcdc.c                                                           >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/242_drivers-remoteproc.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/Documentation/devicetree/bindings/remoteproc/microchip,ipc-remoteproc.yaml --label=/dev/null              linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/remoteproc/microchip,ipc-remoteproc.yaml              >>$PATCH_FILE 
diff -urN linux-6.6.51/Documentation/devicetree/bindings/remoteproc/microchip,miv-remoteproc.yaml --label=/dev/null              linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/remoteproc/microchip,miv-remoteproc.yaml              >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/remoteproc/Kconfig                                                                                linux4microchip-fpga-2024.09/drivers/remoteproc/Kconfig                                                              >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/remoteproc/Makefile                                                                               linux4microchip-fpga-2024.09/drivers/remoteproc/Makefile                                                             >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/remoteproc/mchp_ipc_remoteproc.c --label=/dev/null                                                linux4microchip-fpga-2024.09/drivers/remoteproc/mchp_ipc_remoteproc.c                                                >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/remoteproc/miv_remoteproc.c --label=/dev/null                                                     linux4microchip-fpga-2024.09/drivers/remoteproc/miv_remoteproc.c                                                     >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/243_drivers-reset.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/Documentation/devicetree/bindings/power/reset/atmel,sama5d2-shdwc.yaml                                    linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/power/reset/atmel,sama5d2-shdwc.yaml                  >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/reset/reset-mpfs.c                                                                                linux4microchip-fpga-2024.09/drivers/reset/reset-mpfs.c                                                              >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/244_drivers-soc.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/Documentation/devicetree/bindings/soc/microchip/atmel,at91rm9200-tcb.yaml                                 linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/soc/microchip/atmel,at91rm9200-tcb.yaml               >>$PATCH_FILE 
diff -urN linux-6.6.51/Documentation/devicetree/bindings/soc/microchip/microchip,mpfs-control-scb.yaml --label=/dev/null         linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/soc/microchip/microchip,mpfs-control-scb.yaml         >>$PATCH_FILE 
diff -urN linux-6.6.51/Documentation/devicetree/bindings/soc/microchip/microchip,mpfs-mss-top-sysreg.yaml --label=/dev/null      linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/soc/microchip/microchip,mpfs-mss-top-sysreg.yaml      >>$PATCH_FILE 
diff -urN linux-6.6.51/Documentation/devicetree/bindings/soc/microchip/microchip,mpfs-sys-controller.yaml                        linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/soc/microchip/microchip,mpfs-sys-controller.yaml      >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/soc/Kconfig                                                                                       linux4microchip-fpga-2024.09/drivers/soc/Kconfig                                                                     >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/soc/Makefile                                                                                      linux4microchip-fpga-2024.09/drivers/soc/Makefile                                                                    >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/soc/atmel/soc.c                                                                                   linux4microchip-fpga-2024.09/drivers/soc/atmel/soc.c                                                                 >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/soc/atmel/soc.h                                                                                   linux4microchip-fpga-2024.09/drivers/soc/atmel/soc.h                                                                 >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/soc/microchip/Kconfig                                                                             linux4microchip-fpga-2024.09/drivers/soc/microchip/Kconfig                                                           >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/soc/microchip/Makefile                                                                            linux4microchip-fpga-2024.09/drivers/soc/microchip/Makefile                                                          >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/soc/microchip/mpfs-control-scb.c --label=/dev/null                                                linux4microchip-fpga-2024.09/drivers/soc/microchip/mpfs-control-scb.c                                                >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/soc/microchip/mpfs-generic-service.c --label=/dev/null                                            linux4microchip-fpga-2024.09/drivers/soc/microchip/mpfs-generic-service.c                                            >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/soc/microchip/mpfs-mss-top-sysreg.c --label=/dev/null                                             linux4microchip-fpga-2024.09/drivers/soc/microchip/mpfs-mss-top-sysreg.c                                             >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/soc/microchip/mpfs-sys-controller.c                                                               linux4microchip-fpga-2024.09/drivers/soc/microchip/mpfs-sys-controller.c                                             >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/soc/sifive/                                                                                       linux4microchip-fpga-2024.09/drivers/soc/sifive/                                                                     >>$PATCH_FILE 
diff -urN linux-6.6.51/include/soc/at91/sama7-sfr.h --label=/dev/null                                                            linux4microchip-fpga-2024.09/include/soc/at91/sama7-sfr.h                                                            >>$PATCH_FILE 
diff -urN linux-6.6.51/include/soc/at91/sama7-sfrbu.h                                                                            linux4microchip-fpga-2024.09/include/soc/at91/sama7-sfrbu.h                                                          >>$PATCH_FILE 
diff -urN linux-6.6.51/include/soc/microchip/mpfs.h                                                                              linux4microchip-fpga-2024.09/include/soc/microchip/mpfs.h                                                            >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/245_drivers-spi.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/Documentation/devicetree/bindings/spi/atmel,quadspi.yaml                                                  linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/spi/atmel,quadspi.yaml                                >>$PATCH_FILE 
diff -urN linux-6.6.51/Documentation/devicetree/bindings/spi/microchip,mpfs-spi.yaml                                             linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/spi/microchip,mpfs-spi.yaml                           >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/spi/atmel-quadspi.c                                                                               linux4microchip-fpga-2024.09/drivers/spi/atmel-quadspi.c                                                             >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/spi/spi-microchip-core-qspi.c                                                                     linux4microchip-fpga-2024.09/drivers/spi/spi-microchip-core-qspi.c                                                   >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/spi/spi-microchip-core.c                                                                          linux4microchip-fpga-2024.09/drivers/spi/spi-microchip-core.c                                                        >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/spi/spi.c                                                                                         linux4microchip-fpga-2024.09/drivers/spi/spi.c                                                                       >>$PATCH_FILE 
diff -urN linux-6.6.51/include/linux/spi/spi-mem.h                                                                               linux4microchip-fpga-2024.09/include/linux/spi/spi-mem.h                                                             >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/246_drivers-tty-serial.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/drivers/tty/serial/atmel_serial.c                                                                         linux4microchip-fpga-2024.09/drivers/tty/serial/atmel_serial.c                                                       >>$PATCH_FILE 
diff -urN linux-6.6.51/include/linux/tty.h                                                                                       linux4microchip-fpga-2024.09/include/linux/tty.h                                                                     >>$PATCH_FILE 
diff -urN linux-6.6.51/include/uapi/asm-generic/termbits.h                                                                       linux4microchip-fpga-2024.09/include/uapi/asm-generic/termbits.h                                                     >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/247_drivers-uio.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/drivers/uio/Kconfig                                                                                       linux4microchip-fpga-2024.09/drivers/uio/Kconfig                                                                     >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/uio/Makefile                                                                                      linux4microchip-fpga-2024.09/drivers/uio/Makefile                                                                    >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/uio/uio-microchip-dma.c --label=/dev/null                                                         linux4microchip-fpga-2024.09/drivers/uio/uio-microchip-dma.c                                                         >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/248_drivers-usb-gadget.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/drivers/usb/gadget/udc/atmel_usba_udc.c                                                                   linux4microchip-fpga-2024.09/drivers/usb/gadget/udc/atmel_usba_udc.c                                                 >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/usb/gadget/udc/atmel_usba_udc.h                                                                   linux4microchip-fpga-2024.09/drivers/usb/gadget/udc/atmel_usba_udc.h                                                 >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/249_drivers-usb-host.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/Documentation/devicetree/bindings/usb/generic-ehci.yaml                                                   linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/usb/generic-ehci.yaml                                 >>$PATCH_FILE 
diff -urN linux-6.6.51/Documentation/devicetree/bindings/usb/microchip,mpfs-musb.yaml                                            linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/usb/microchip,mpfs-musb.yaml                          >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/usb/host/ohci-at91.c                                                                              linux4microchip-fpga-2024.09/drivers/usb/host/ohci-at91.c                                                            >>$PATCH_FILE 
diff -urN linux-6.6.51/drivers/usb/musb/mpfs.c                                                                                   linux4microchip-fpga-2024.09/drivers/usb/musb/mpfs.c                                                                 >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/250_drivers-watchdog.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/drivers/watchdog/sama5d4_wdt.c                                                                            linux4microchip-fpga-2024.09/drivers/watchdog/sama5d4_wdt.c                                                          >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/300_sound.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/Documentation/devicetree/bindings/sound/microchip,asrc-card.yaml --label=/dev/null                        linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/sound/microchip,asrc-card.yaml                        >>$PATCH_FILE 
diff -urN linux-6.6.51/Documentation/devicetree/bindings/sound/microchip,asrc.yaml --label=/dev/null                             linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/sound/microchip,asrc.yaml                             >>$PATCH_FILE 
diff -urN linux-6.6.51/Documentation/devicetree/bindings/sound/microchip,sama7g5-i2smcc.yaml                                     linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/sound/microchip,sama7g5-i2smcc.yaml                   >>$PATCH_FILE 
diff -urN linux-6.6.51/Documentation/devicetree/bindings/sound/microchip,sama7g5-pdmc.yaml                                       linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/sound/microchip,sama7g5-pdmc.yaml                     >>$PATCH_FILE 
diff -urN linux-6.6.51/Documentation/devicetree/bindings/sound/microchip,sama7g5-spdifrx.yaml                                    linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/sound/microchip,sama7g5-spdifrx.yaml                  >>$PATCH_FILE 
diff -urN linux-6.6.51/Documentation/devicetree/bindings/sound/microchip,sama7g5-spdiftx.yaml                                    linux4microchip-fpga-2024.09/Documentation/devicetree/bindings/sound/microchip,sama7g5-spdiftx.yaml                  >>$PATCH_FILE 
diff -urN linux-6.6.51/include/dt-bindings/sound/microchip,asrc-card.h --label=/dev/null                                         linux4microchip-fpga-2024.09/include/dt-bindings/sound/microchip,asrc-card.h                                         >>$PATCH_FILE 
diff -urN linux-6.6.51/include/sound/pcm.h                                                                                       linux4microchip-fpga-2024.09/include/sound/pcm.h                                                                     >>$PATCH_FILE 
diff -urN linux-6.6.51/include/sound/soc.h                                                                                       linux4microchip-fpga-2024.09/include/sound/soc.h                                                                     >>$PATCH_FILE 
diff -urN linux-6.6.51/sound/core/pcm.c                                                                                          linux4microchip-fpga-2024.09/sound/core/pcm.c                                                                        >>$PATCH_FILE 
diff -urN linux-6.6.51/sound/core/pcm_dmaengine.c                                                                                linux4microchip-fpga-2024.09/sound/core/pcm_dmaengine.c                                                              >>$PATCH_FILE 
diff -urN linux-6.6.51/sound/core/pcm_native.c                                                                                   linux4microchip-fpga-2024.09/sound/core/pcm_native.c                                                                 >>$PATCH_FILE 
diff -urN linux-6.6.51/sound/soc/atmel/Kconfig                                                                                   linux4microchip-fpga-2024.09/sound/soc/atmel/Kconfig                                                                 >>$PATCH_FILE 
diff -urN linux-6.6.51/sound/soc/atmel/Makefile                                                                                  linux4microchip-fpga-2024.09/sound/soc/atmel/Makefile                                                                >>$PATCH_FILE 
diff -urN linux-6.6.51/sound/soc/atmel/atmel_ssc_dai.c                                                                           linux4microchip-fpga-2024.09/sound/soc/atmel/atmel_ssc_dai.c                                                         >>$PATCH_FILE 
diff -urN linux-6.6.51/sound/soc/atmel/mchp-asrc-card.c --label=/dev/null                                                        linux4microchip-fpga-2024.09/sound/soc/atmel/mchp-asrc-card.c                                                        >>$PATCH_FILE 
diff -urN linux-6.6.51/sound/soc/atmel/mchp-asrc-dma.c --label=/dev/null                                                         linux4microchip-fpga-2024.09/sound/soc/atmel/mchp-asrc-dma.c                                                         >>$PATCH_FILE 
diff -urN linux-6.6.51/sound/soc/atmel/mchp-asrc.c --label=/dev/null                                                             linux4microchip-fpga-2024.09/sound/soc/atmel/mchp-asrc.c                                                             >>$PATCH_FILE 
diff -urN linux-6.6.51/sound/soc/atmel/mchp-asrc.h --label=/dev/null                                                             linux4microchip-fpga-2024.09/sound/soc/atmel/mchp-asrc.h                                                             >>$PATCH_FILE 
diff -urN linux-6.6.51/sound/soc/atmel/mchp-i2s-mcc.c                                                                            linux4microchip-fpga-2024.09/sound/soc/atmel/mchp-i2s-mcc.c                                                          >>$PATCH_FILE 
diff -urN linux-6.6.51/sound/soc/atmel/mchp-pdmc.c                                                                               linux4microchip-fpga-2024.09/sound/soc/atmel/mchp-pdmc.c                                                             >>$PATCH_FILE 
diff -urN linux-6.6.51/sound/soc/atmel/mchp-spdifrx.c                                                                            linux4microchip-fpga-2024.09/sound/soc/atmel/mchp-spdifrx.c                                                          >>$PATCH_FILE 
diff -urN linux-6.6.51/sound/soc/atmel/mchp-spdiftx.c                                                                            linux4microchip-fpga-2024.09/sound/soc/atmel/mchp-spdiftx.c                                                          >>$PATCH_FILE 
diff -urN linux-6.6.51/sound/soc/soc-dapm.c                                                                                      linux4microchip-fpga-2024.09/sound/soc/soc-dapm.c                                                                    >>$PATCH_FILE 
diff -urN linux-6.6.51/sound/soc/soc-generic-dmaengine-pcm.c                                                                     linux4microchip-fpga-2024.09/sound/soc/soc-generic-dmaengine-pcm.c                                                   >>$PATCH_FILE 
diff -urN linux-6.6.51/sound/soc/soc-pcm.c                                                                                       linux4microchip-fpga-2024.09/sound/soc/soc-pcm.c                                                                     >>$PATCH_FILE 

PATCH_FILE=$PATCH_DIR/999_other-document.patch
echo -n >| $PATCH_FILE

diff -urN linux-6.6.51/MAINTAINERS                                                                                               linux4microchip-fpga-2024.09/MAINTAINERS                                                                             >>$PATCH_FILE 


cat << 'EOT' > $PATCH_DIR/xxx_patch.sh
PATCH_DIR=$(cd $(dirname $0); pwd)
dry_run=0
verbose=1

run_command()
{
    if [ $dry_run -ne 0 ] || [ $verbose -ne 0 ]; then
	echo "$1"
    fi
    if [ $dry_run -eq 0 ]; then
	eval "$1"
    fi
}

run_patch()
{
    if [ $dry_run -ne 0 ] || [ $verbose -ne 0 ]; then
	echo "## patch ${PATCH_DIR}/${1}"
    fi
    run_command "patch -p1 < ${PATCH_DIR}/${1}"
    run_command "git add --all"
    run_command "git commit -m '[patch] ${1}'"
}

run_patch 000_Makefile.patch
run_patch 010_arch-riscv.patch
run_patch 011_arch-riscv-configs.patch
run_patch 012_arch-riscv-boot-dts.patch
run_patch 020_arch-arm-mach-at91.patch
run_patch 021_arch-arm-configs.patch
run_patch 022_arch-arm-boot-dts.patch
run_patch 200_drivers-auxdisplay.patch
run_patch 201_drivers-base.patch
run_patch 202_drivers-cache.patch
run_patch 203_drivers-clk.patch
run_patch 204_drivers-clocksource.patch
run_patch 205_drivers-crypto.patch
run_patch 206_drivers-dma.patch
run_patch 207_drivers-u-dma-buf.patch
run_patch 208_drivers-firmware.patch
run_patch 209_drivers-gpio.patch
run_patch 210_drivers-gpu-drm.patch
run_patch 211_drivers-hwmon.patch
run_patch 212_drivers-i2c-busses.patch
run_patch 213_drivers-iio-adc.patch
run_patch 214_drivers-input-misc.patch
run_patch 215_drivers-irqchip.patch
run_patch 216_drivers-mailbox.patch
run_patch 217_drivers-media-i2c.patch
run_patch 218_drivers-media-platform.patch
run_patch 219_drivers-mfd.patch
run_patch 220_drivers-misc.patch
run_patch 221_drivers-mmc-core.patch
run_patch 222_drivers-mmc-host.patch
run_patch 223_drivers-mtd-nand.patch
run_patch 224_drivers-mtd-spi-nor.patch
run_patch 225_drivers-net-can.patch
run_patch 226_drivers-net-dsa-microchip.patch
run_patch 227_drivers-net-ethernet-cadence.patch
run_patch 228_drivers-net-phy.patch
run_patch 229_drivers-net-wireless-microchip.patch
run_patch 230_drivers-of.patch
run_patch 231_drivers-pci-controller.patch
run_patch 232_drivers-phy-microchip.patch
run_patch 233_drivers-pinctrl-bcm.patch
run_patch 234_drivers-pinctrl-berlin.patch
run_patch 235_drivers-pinctrl-mvebu.patch
run_patch 236_drivers-pinctrl-nomadik.patch
run_patch 237_drivers-pinctrl-ti.patch
run_patch 238_drivers-pinctrl-at91.patch
run_patch 239_drivers-pinctrl-xway.patch
run_patch 240_drivers-power-reset.patch
run_patch 241_drivers-pwm.patch
run_patch 242_drivers-remoteproc.patch
run_patch 243_drivers-reset.patch
run_patch 244_drivers-soc.patch
run_patch 245_drivers-spi.patch
run_patch 246_drivers-tty-serial.patch
run_patch 247_drivers-uio.patch
run_patch 248_drivers-usb-gadget.patch
run_patch 249_drivers-usb-host.patch
run_patch 250_drivers-watchdog.patch
run_patch 300_sound.patch
run_patch 999_other-document.patch
EOT
