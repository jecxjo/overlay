# Overlay
My personal Gentoo Overlay

All of the ebuilds found in this overlay are either created by myself or found
in the [Gentoo Bug reporting system][1]. None of the software is actually mine,
I just write/copied the ebuilds.

If you find there is an update to a package or there is a bug in my ebuild
please submit an issue or a pull request.

[![wercker status](https://app.wercker.com/status/19c31bad0265061edcb86487e688ba08/s/master "wercker status")](https://app.wercker.com/project/bykey/19c31bad0265061edcb86487e688ba08)

## List of ebuilds

* **app-misc/ohmu** (0.5.0)
* **app-shells/prm** (0.6.0)
* **app-crypt/keybase** (1.0.17_pre20160630)
* **dev-lang/leiningen** (2.6.1)
* **dev-scheme/racket** (6.7)
* **dev-tcltk/tcllib** (1.18)
* **dev-tcltk/tcl-promise** (1.0-r2)
* **dev-vcs/git-radar** (0.6)
  **dev-util/redo-sh** (2014)
* **media-gfx/imv** (1.0.0)
* **media-radio/fllog** (1.2.1)
* **media-radio/trustedqsl** (2.1.3)
* **media-sound/pulsemixer** (1.0.0)
* **media-video/fswebcam** (20140113)
* **net-im/cryptocat** (3.2.07)
* **net-news/termfeed** (9999)
* **sys-apps/rtee** (0.1.1)
* **sys-fs/kbfs** (1.0.2_pre20160630)
* **www-apps/rawk** (1.0)

## Usage
Add this overlay with [Layman][2]

    layman -o https://raw.githubusercontent.com/jecxjo/overlay/master/overlay.xml -f -a jecxjo

[1]: bugs.gentoo.org
[2]: https://wiki.gentoo.org/wiki/Layman
