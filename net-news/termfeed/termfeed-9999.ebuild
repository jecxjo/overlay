# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3,3_4} )

inherit distutils-r1

DESCRIPTION="A simple terminal feed reader"
HOMEPAGE="https://github.com/iamaziz/TermFeed"

if [[ ${PV} == *9999 ]]; then
	EGIT_REPO_URI="https://github.com/iamaziz/TermFeed.git"
	inherit git-r3
else
	KEYWORDS="~amd64 ~x86"
	SCR_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
fi

LICENSE="MIT"
SLOT="0"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}
		dev-python/feedparser"
