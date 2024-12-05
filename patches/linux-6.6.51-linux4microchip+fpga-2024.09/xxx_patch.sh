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
