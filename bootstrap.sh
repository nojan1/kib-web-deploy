#!/bin/sh

wget "https://raw.githubusercontent.com/nojan1/kib-web-deploy/master/PKGBUILD" -O "PKGBUILD.kib"
makepkg -p "PKGBUILD.kib"