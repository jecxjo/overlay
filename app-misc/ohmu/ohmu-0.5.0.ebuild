# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3,3_4} )

inherit distutils-r1

DESCRIPTION="View space usage in your terminal"

HOMEPAGE="https://github.com/paul-nechifor/ohmu"
SRC_URI="https://github.com/paul-nechifor/ohmu/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm"

DEPEND="dev-python/setuptoosl[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
