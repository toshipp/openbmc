FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
SRC_URI:append:x470d4u = " file://vm.conf"

FILES:${PN}:append:x470d4u = " ${sysconfdir}/sysctl.d/vm.conf"

do_install:append:x470d4u() {
        install -m 644 -D ${WORKDIR}/vm.conf ${D}${sysconfdir}/sysctl.d/vm.conf
}
