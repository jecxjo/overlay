# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="A shell script version of djb's redo build system"
HOMEPAGE="https://github.com/jecxjo/redo"
SRC_URI="https://github.com/jecxjo/redo/archive/0.3.0.tar.gz"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="alpha amd64 arm arm64 hppa ia64 ppc ppc64 s390 sh x86"

src_install() {
	dobin redo
	dosym /usr/bin/redo /usr/bin/redo-ifcreate
	dosym /usr/bin/redo /usr/bin/redo-ifchange
}
