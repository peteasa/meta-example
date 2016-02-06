#!/bin/sh

# A typical project meta layer could provide all the overrides necessary
# For example this layer ensures that bitbake scans the meta-example folder
# the meta-example/local_conf/bblayers.conf is copied to the build folder
# and contains the path to the meta-example folder.

# Create the build folder
cd ..
source poky/oe-init-build-env build_parallella

# Copy meta-example version of the configuration
cp ../meta-example/local_conf/*.conf ./conf

echo "==========================="
echo "environment prepared"
echo " "
echo "be prepared for a long wait"
echo "try the command:"
echo "   bitbake hdmi-image"
echo " "
echo "If you want to try out the image from meta-example"
echo "try the command:"
echo "   bitbake hdmi-image-example"
echo " "
