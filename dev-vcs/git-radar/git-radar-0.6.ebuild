# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit eutils

DESCRIPTION="A heads up display for git"
HOMEPAGE="https://github.com/michaeldfallen/git-radar"
SRC_URI="https://github.com/michaeldfallen/git-radar/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="git-radar"
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm"

RDEPEND="dev-vcs/git"

src_compile() { :; }

src_install() {
	install -d "${D}/usr/bin"
	emake PREFIX="${D}/usr" install
}
