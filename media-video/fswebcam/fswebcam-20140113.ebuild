# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="A neat and simple webcam app which captures images from V4L1/V4L2 compatible"
HOMEPAGE="http://www.sanslogic.co.uk/fswebcam/"
SRC_URI="http://www.sanslogic.co.uk/fswebcam/files/${P}.tar.xz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm"
IUSE="+v4l +v4l2"

DEPEND=">=media-libs/gd-2[png,jpeg,truetype]
	v4l? ( sys-kernel/linux-headers )
	v4l2? ( sys-kernel/linux-headers )"

src_configure() {
	local myconf
	use v4l || myconf="${myconf} --disable-v4l1"
	use v4l2 || myconf="${myconf} --disable-v4l2"
	econf ${myconf}
}

src_install() {
	dobin fswebcam
	dodoc README CHANGELOG example.conf
	doman fswebcam.1
}
