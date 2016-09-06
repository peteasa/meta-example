##
## Example of patching the linux kernel
##

## Store any kernel patches in a folder and add it to the FILESEXTRAPATHS:
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

##
## inherit from meta-parallella/recipes-kernel/linux/linux-parallella_4.4.bb:
##   KBRANCH ?= "parallella-linux-2016.3"
##   SRC_URI = " git://github.com/parallella/parallella-linux.git;protocol=https;branch=${KBRANCH} \
##		file://parallella/parallella.cfg \
##		file://parallella/epiphany.cfg \
##		file://parallella/extra.cfg \
##		file://parallella/hdmi.cfg \
##		"
## SRCREV = "eb7c3a109b494e7f27387d119882b7a127759ada"
#
# Consider adding your own patches or configuration changes
#
## Note about Device Tree changes..
## Inherit from the target MACHINE configuration for example see
## meta-parallella/conf/machines/parallella-hdmi.conf
##  KERNEL_DEVICETREE = "zynq-parallella.dtb"
## So apply device tree patches to that, or include files for example
## the arch/arm/boot/dts/zynq-parallella1.dtsi
#
# SRC_URI += " \
#		file://0080-MyFpgaDriver.patch \
#		file://0081-MyFpgaDeviceTree.patch \
#		file://perf.cfg \
#		file://stap.cfg \
#		"
#
# Make the changes specific to a particular target MACHINE for example:

SRC_URI_append_parallella-hdmi += " \
		file://hdmikernelConfigAdditions-example.cfg \
		"
