# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3,3_4} )

inherit distutils-r1

DESCRIPTION="A simple terminal feed reader"
HOMEPAGE="https://github.com/iamaziz/TermFeed"

MY_PN=TermFeed
MY_PV=${PV}
MY_P=${MY_PN}-${MY_PV}

if [[ ${PV} == *9999 ]]; then
	EGIT_REPO_URI="https://github.com/iamaziz/${MY_PN}.git"
	inherit git-r3
else
	KEYWORDS="~amd64 ~x86"
	SCR_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"
fi

LICENSE="MIT"
SLOT="0"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}
		dev-python/feedparser"
