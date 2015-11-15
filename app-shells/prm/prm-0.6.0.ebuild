# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit eutils

DESCRIPTION="A minimal project manager for the terminal"
HOMEPAGE="https://foo.example.org/"
SRC_URI="https://github.com/eivind88/prm/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="x86 amd64 arm"

RDEPEND="app-shells/bash"

src_install() {
	install -d "${D}/usr/share/prm"
	install -m 644 prm.sh "${D}/usr/share/prm/"
	dodoc README.md
}

pkg_postinst() {
	elog "The script prm.sh should not be run as a subshell"
	elog "but instead sourced. To simplify this process add"
	elog "the following to your shell rc file:"
	elog ""
	elog "    alias prm='. /usr/share/prm/prm.sh'"
	elog ""
	elog "then resource your rc file."
}
