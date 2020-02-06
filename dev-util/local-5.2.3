# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

MY_PN="local"
MY_PV=$(ver_rs 1- -)
MY_P="${MY_PN}-${MY_PV}"

inherit rpm xdg-utils

DESCRIPTION="A program to create a local WordPress development environment."
HOMEPAGE="https://localbyflywheel.com/"
SRC_URI="https://local-by-flywheel-flywheel.netdna-ssl.com/releases/${MY_PV}/${MY_P}-linux.rpm"

LICENSE="proprietary"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
    sys-process/numactl
    dev-libs/libaio
    =sys-libs/ncurses-compat-5.9"

RDEPEND="${DEPEND}"
BDEPEND=""

S=${WORKDIR}

src_unpack() {
    rpm_src_unpack ${A}
    cd "${S}"
}

src_install() {
    insinto /
    doins -r "${S}"/usr
    doins -r "${S}"/opt
    fowners root:root /opt/Local/chrome-sandbox
    fperms 4755 /opt/Local/chrome-sandbox
    fperms 755 /opt/Local/local
}

pkg_postinst() {
    xdg_desktop_database_update
    xdg_mimeinfo_database_update
    xdg_icon_cache_update
}

pkg_postrm() {
    xdg_desktop_database_update
    xdg_icon_cache_update
}
