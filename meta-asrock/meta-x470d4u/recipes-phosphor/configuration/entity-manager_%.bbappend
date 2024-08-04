FILESEXTRAPATHS:append := ":${THISDIR}/${PN}"
SRC_URI:append = " file://asrock_x470d4u.json \
		"
do_install:append() {
     install -d ${D}/usr/share/entity-manager/configurations
     install -m 0444 ${WORKDIR}/*.json ${D}/usr/share/entity-manager/configurations
}
