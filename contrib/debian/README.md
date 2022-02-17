
Debian
====================
This directory contains files used to package vuicoind/vuicoin-qt
for Debian-based Linux systems. If you compile vuicoind/vuicoin-qt yourself, there are some useful files here.

## vuicoin: URI support ##


vuicoin-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install vuicoin-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your vuicoin-qt binary to `/usr/bin`
and the `../../share/pixmaps/vuicoin128.png` to `/usr/share/pixmaps`

vuicoin-qt.protocol (KDE)

