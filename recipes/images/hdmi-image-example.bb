#
# Parallella example hdmi Image
#

DESCRIPTION = "hdmi-image and examples"

require recipes-parallella/images/hdmi-image.bb

#
# NOTE to add your own project you many need to modify:
# recipes-bsp/bitstream to add your own fpga
# recipes-bsp/device-tree to update the device tree with your project changes
# recipes-kernel/kernel to update the kernel config to build your desired linux distribution
#

# Following added with tools-profile - Ref: http://www.yoctoproject.org/docs/current/profile-manual/profile-manual.html
# INHIBIT_PACKAGE_STRIP = "1"
# PACKAGE_DEBUG_SPLIT_STYLE = 'debug-file-directory'
# PREFERRED_VERSION_elfutils ?= "0.158"

# Add development packages feature set.
# Note to use these you also have to change the kernel config adding
# to SRC_URI file://perf.cfg and file://stap.cfg

IMAGE_FEATURES += "dev-pkgs tools-profile tools-sdk"

### Perhaps add other meta layers for other tools and packages for example
### from meta-openembedded:
### IMAGE_INSTALL += "fim v4l-utils media-ctl yavta"

### For now keep it simple. Add tools and packages already available in poky:
IMAGE_INSTALL += "i2c-tools alsa-tools alsa-utils alsa-lib pulseaudio"
