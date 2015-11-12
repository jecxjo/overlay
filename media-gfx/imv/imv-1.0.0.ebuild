# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit eutils

DESCRIPTION="Image view for Wayland and X11"
HOMEPAGE="http://github.com/eXeC64/imv"
SRC_URI="https://github.com/eXeC64/imv/archive/v1.0.0.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="media-libs/freeimage media-libs/libsdl2"
RDEPEND="${DEPEND}"
