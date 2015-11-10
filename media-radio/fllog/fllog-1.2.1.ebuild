# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="An Amateur Radio logbook for fldigi"
HOMEPAGE="http://www.w1hkj.com"
SRC_URI="mirror://sourceforge/fldigi/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="static debug cpu_flags_x86_sse cpu_flags_x86_sse2 cpu_flags_x86_sse3"

RDEPEND="x11-libs/fltk:1[threads,xft]"

src_configure() {
	local myconf=(
		$(use_enable debug)
		$(use_enable static)
		--disable-silent-rules
	)

	# Set x86 Optimization Flags
	if use cpu_flags_x86_sse3; then
		einfo "Using sse3"
		myconf+=( --enable-optimizations=sse3 )
	elif use cpu_flags_x86_sse2; then
		einfo "Using sse2"
		myconf+=( --enable-optimizations=sse2 )
	elif use cpu_flags_x86_sse; then
		einfo "Using sse"
		myconf+=( --enable-optimizations=sse )
	else
		myconf+=( --enable-optimizations=none )
	fi

	econf "${myconf[@]}"
}
