build: stack_build
	stack exec site -- $@
rebuild: stack_build
	stack exec site -- $@
watch: stack_build
	stack exec site -- $@
.PHONY: build rebuild watch

stack_build:
	stack build
.PHONY: stack_build

isEverythingCommitted:
	./src/isEverythingCommitted.sh
.PHONY: isEverythingCommitted

# To avoid problems with submodule, do not pull directly.
pull:
	git pull --recurse-submodules

# The SED is to fix URLs where the "=" in the URL
# "mailto:foo@example.com?subject=Whatever" should be a real "=", not
# a "%3D"
push: isEverythingCommitted rebuild
	git submodule update --remote --merge
	sed -i 's:\?subject%3D:\?subject=:' _site/*.html
	rsync -avr --delete --exclude='.git' --exclude="CNAME" _site/ site/
	cd site \
		&& git checkout master \
		&& git add . \
		&& git commit -m 'site update' \
		&& git push origin master
	git add site
	git commit -m 'site update'
	git push origin master
.PHONY: push
