

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

##
## Build with your own kernel if you like!
##
##SRC_URI = " git://github.com/analogdevicesinc/linux.git;branch=${KBRANCH} \
##		file://xilinx-base;type=kmeta;destsuffix=xilinx-base \
##		file://parallella-base;type=kmeta;destsuffix=parallella-base \
##		file://add-epiphany.patch \
##		file://add-parallella_defconfig.patch \
##		"
##
##SRCREV = "62b9dd8ce075c8b3c041b5ea0c806f02c9e97261"

#SRC_URI += " \
#	file://perf.cfg \
#	file://stap.cfg \
#    "
    
SRC_URI_append_parallella-hdmi += " \
		file://hdmikernelConfigAdditions-example.cfg \
		"
