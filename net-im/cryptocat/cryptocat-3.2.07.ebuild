# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit eutils

COMMIT="2e244d32bda7e9be9dc00959eb8edbdceeff50b5" # v 3.2.07

DESCRIPTION="Secure chat software for your computer"
HOMEPAGE="https://crypto.cat"
SRC_URI="https://github.com/cryptocat/cryptocat/archive/${COMMIT}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
IUSE=""
KEYWORDS="~amd64"

DEPEND=">=net-libs/nodejs-0.8.28[npm]
		app-arch/unzip"

src_unpack() {
	unpack ${A}
	mv ${PN}-${COMMIT} ${P}
}

src_compile() {
	npm run setup || die
	npm run linux || die
}

src_install() {
	dodir /opt/cryptocat
	dodir /usr/bin

	unzip dist/Cryptocat-linux-x64.zip -d ${T}
	chmod 755 ${T}/Cryptocat-linux-x64/Cryptocat
	mv -vf ${T}/Cryptocat-linux-x64/* ${D}/opt/cryptocat

	dosym /opt/cryptocat/Cryptocat /usr/bin/cryptocat
}
