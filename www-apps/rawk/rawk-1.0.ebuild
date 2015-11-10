# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit eutils

DESCRIPTION="A static site generator written in shell"
HOMEPAGE="http://rawk.brokenlcd.net"
SRC_URI="mirror://sourceforge/rawk-sh/${P}.tgz"

LICENSE="ISC"
SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 mips ppc ppc64 sparc x86"
IUSE=""

RDEPEND=""

src_prepare() {
	epatch "${FILESDIR}/${P}-makefile.patch"
}
