# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit cmake-utils wxwidgets eutils

MY_P=${P/trustedqsl/tqsl}
WX_GTK_VER="2.8"

DESCRIPTION="Log signing for the ARRL Logbook of the World (LoTW)"
HOMEPAGE="http://lotw.arrl.org"
SRC_URI="http://www.arrl.org/files/file/LoTW%20Instructions/${MY_P}.tar.gz"

LICENSE="TrustedQSL"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE=""

RDEPEND="dev-libs/openssl:0
	 >=dev-libs/expat-2.1.0
	 >=sys-libs/zlib-1.2.8
	 >=sys-libs/db-5.3:=
	 x11-libs/wxGTK:${WX_GTK_VER}
	 net-misc/curl"

DEPEND="${RDEPEND}"

S=${WORKDIR}/${MY_P}

# Include LICENSE.txt  for binary distribution
DOCS=(AUTHORS.txt README LICENSE.txt)

src_prepare() {
	epatch "${FILESDIR}/${P}-cmakefiles.patch"
}

src_configure() {
	local mycmakeargs=(
		-DCMAKE_INSTALL_PREFIX=/usr
		-DwxWidgets_CONFIG_EXECUTABLE=/usr/bin/wx-config-${WX_GTK_VER}
		-DwxWidgets_wxrc_EXECUTABLE=/usr/bin/wxrc-${WX_GTK_VER}
	)
	cmake-utils_src_configure
}

src_install() {
	cmake-utils_src_install
	#find "${D}" -name wxstd* -exec rm {} +
	#rm -rf "${D}/usr/include"
	make_desktop_entry tqsl "Logbook of the World" TrustedQSL 'Office;HamRadio'
}
