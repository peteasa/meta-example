
LICENSE = "GPLv3"
LIC_FILES_CHKSUM = "file://LICENSE;md5=e6a600fd5e1d9cbde2d983680233ad02"

### You could setup a local bare repository with the fpga for example
### SRC_URI = "git://~/parallella/examples.git"
### SRCREV = "--enter your desired sha1 here!--"

## 7020_hdmi with oh fpga Before HDMI components added
## watch this space for the oh fpga with HDMI interface!
EXAMPLEBR = "parallella-oh"
SRC_URI = "git://github.com/peteasa/examples.git;branch=${EXAMPLEBR}"
SRCREV = "72f8920fd2dbd975bc856cc04a1b6f71c07cdb4b"

