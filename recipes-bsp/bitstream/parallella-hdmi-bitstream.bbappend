

## "Official fpga" use this as a baseline
#SRC_URI = "git://github.com/parallella/parallella-hw.git;protocol=https"
#SRCREV = "a129797ed30c2ff09801fbf4ca4b90643b6cd365"

### You could setup a local bare repository with the fpga for example
### SRC_URI = "git://~/parallella/examples.git"
### SRCREV = "--enter your desired sha1 here!--"

## 7020_hdmi After HDMI components added from my example repository 
EXAMPLEBR = "elink-redesign"
SRC_URI = "git://github.com/peteasa/examples.git;branch=${EXAMPLEBR}"
SRCREV = "f193d497a44f5276dcbe3aff7da0d25ded5a584b"

