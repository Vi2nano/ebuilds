# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

MY_PN="local"
MY_PV=$(ver_rs 1- -)
MY_P="${MY_PN}-${MY_PV}"

inherit rpm xdg

DESCRIPTION="A program to create a local WordPress development environment."
HOMEPAGE="https://localbyflywheel.com/"
SRC_URI="https://local-by-flywheel-flywheel.netdna-ssl.com/releases/${MY_PV}/${MY_P}-linux.rpm"

LICENSE="freedist"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
    sys-process/numactl
    dev-libs/libaio
    <sys-libs/ncurses-compat-6.0"

RDEPEND="${DEPEND}"

S=${WORKDIR}

src_unpack() {
    rpm_src_unpack
}

src_install() {
    insinto /
    doins -r "${S}"/usr
    doins -r "${S}"/opt
    fowners root:root /opt/Local/chrome-sandbox
    fperms 4755 /opt/Local/chrome-sandbox
    fperms 755 /opt/Local/local
}
