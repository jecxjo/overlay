# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit eutils

DESCRIPTION="Leiningen is a build utility for clojure projects."
HOMEPAGE="http://github.com/technomancy/leiningen/"
SRC_URI="http://github.com/technomancy/leiningen/raw/stable/bin/lein-pkg
https://github.com/technomancy/leiningen/releases/download/${PV}/leiningen-${PV}-standalone.zip"
RESTRICT="mirror"

LICENSE="EPL-1.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""

RDEPEND=">=virtual/jre-1.5"
DEPEND=">=virtual/jdk-1.5"

MY_P="${PN}${SLOT}-${PV}"

SITEFILE="70${PN}-gentoo.el"

S=${WORKDIR}/${MY_P}

src_unpack() {
	mkdir "${S}"
	for f in ${A}; do
		cp "/usr/portage/distfiles/${f}" "${S}"
	done
}

src_install() {
	insinto /usr/bin
	newbin lein-pkg lein

	mkdir -p "${D}/usr/share/java"
	cp "leiningen-${PV}-standalone.zip" "${D}/usr/share/java/leiningen-${PV}-standalone.jar"
}
