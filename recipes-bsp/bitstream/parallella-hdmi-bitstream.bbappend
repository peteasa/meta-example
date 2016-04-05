
LICENSE = "GPLv3"
LIC_FILES_CHKSUM = "file://LICENSE;md5=e6a600fd5e1d9cbde2d983680233ad02"

### You could setup a local bare repository with the fpga for example
### SRC_URI = "git://~/parallella/examples.git"
### SRCREV = "--enter your desired sha1 here!--"

## 7020_hdmi and 7010_hdmi oh fpga with hdmi
EXAMPLEBR = "elink-redesign"
SRC_URI = "git://github.com/peteasa/examples.git;branch=${EXAMPLEBR}"
SRCREV = "07b29d26838434c1b8f20fcd61507d4b600259e6"

