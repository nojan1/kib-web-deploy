# Maintainer: Niklas Hedlund <nojan1989@gmail.com>

_PAGEROOT="/var/http/kib/"

pkgname=kib-web
pkgver=1
pkgrel=0
pkgdesc="The KiB webpage with backend and forum theme"
arch=('any')
backup=("$_PAGEROOT/modend/config.php")
source=("web:https://github.com/nojan1/kib-web.git#master"
        "modend:https://github.com/nojan1/modend.git#master")
md5sums=('SKIP'
		 'SKIP')

pkgver() {
	cd "$pkgname/web"
	printf "r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}
		 
package() {
	msg2 "Creating folder structure"
	basepath = "$pkgdir/$_PAGEROOT/"
	mkdir -p "$basepath/forum/styles/"
	
	msg2 "Copying main web page files"
	cp -r "$srcdir/web/page-root/*" "$basepath"
	
	msg2 "Copying forum theme"
	cp -r "$srcdir/web/forum-theme/kib" "$basepath/forum/styles/"
	
	msg2 "Copying backend(modend)"
	cp -r "$srcdir/modend/src/*" "$basepath"
	
	plain "Creating empty modend config file from template"
	cp "$basepath/modend/config_template.php" "$basepath/modend/config.php"
	
	warning "The database layout is in $srcdir/modend/database.sql, you must create this one manually!"
}

# vim:set ts=2 sw=2 et: