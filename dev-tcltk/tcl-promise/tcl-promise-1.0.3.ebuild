# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit eutils

MY_PN=promise
MY_P=${MY_PN}-${PVR/-r/a}

DESCRIPTION="An implementation of Promises in Tcl"
HOMEPAGE="http://tcl-promise.sourceforge.net/"
SRC_URI="
mirror://sourceforge/${PN}/${MY_P}.tm
mirror://sourceforge/${PN}/README.md
"

LICENSE="BSD"
SLOT="0"
IUSE=""
KEYWORDS="~alpha ~amd64 ~hppa ~mips ~ppc ~x86 ~x86-fbsd ~x86-freebsd ~amd64-linux ~x86-linux ~x86-macos"

RDEPEND=">=dev-lang/tcl-8.6:0="
DEPEND="
	${RDEPEND}
	dev-tcltk/thread
"

DOCS=( ${MY_P}.html )

S="${WORKDIR}"

src_unpack() {
	return
}

src_install() {
	dodir /usr/lib/tcl8/8.6
	cp "${DISTDIR}/${MY_P}.tm" "${D}/usr/lib/tcl8/8.6" || "Install failed!"
	dodoc "${DISTDIR}/README.md"
}
