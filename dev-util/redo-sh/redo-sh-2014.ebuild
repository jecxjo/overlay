# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="Redo implementation in Bourne Shell"
HOMEPAGE="http://news.dieweltistgarnichtso.net/bin/redo-sh.html"
SRC_URI="http://news.dieweltistgarnichtso.net/bin/redo
http://news.dieweltistgarnichtso.net/bin/redo-always
http://news.dieweltistgarnichtso.net/bin/redo-dot
http://news.dieweltistgarnichtso.net/bin/redo-ifchange
http://news.dieweltistgarnichtso.net/bin/redo-ifcreate
http://news.dieweltistgarnichtso.net/bin/redo-ood
http://news.dieweltistgarnichtso.net/bin/redo-targets
http://news.dieweltistgarnichtso.net/bin/redo-sources
http://news.dieweltistgarnichtso.net/bin/redo-stamp"

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS="alpha amd64 arm arm64 hppa ia64 ppc ppc64 s390 sh x86"

S="${DISTDIR}"

src_unpack() {
	return
}

src_install() {
	dobin redo
	dobin redo-always
	dobin redo-dot
	dobin redo-ifchange
	dobin redo-ifcreate
	dobin redo-ood
	dobin redo-targets
	dobin redo-sources
	dobin redo-stamp
}
