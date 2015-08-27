
FILESEXTRAPATHS_append := "${@get_additional_bbpath_filespath('conf/machine/boards', d)}"


MACHINE_DEVICETREE = " \
		parallella/parallella-example.dtsi \
		parallella/parallella-hdmi-example.dtsi \
		parallella/parallella-hdmi-example.dts \
		parallella/parallella-hdmi-mmc-boot-example.dts \
		"