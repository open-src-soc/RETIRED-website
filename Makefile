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

# To avoid problems with submodule, do not pull directly.
pull:
	git pull --recurse-submodules
.PHONY: pull

push: check-upstream rebuild
	git submodule update --remote --merge
	rsync -avr --delete --exclude='.git'  _site/ site/
	cd site \
		&& git checkout master \
		&& git add . \
		&& git commit -m 'site update' \
		&& git push origin master
	git add site
	git commit -m 'site update'
	git push --recurse-submodules=check origin master
.PHONY: push

check-upstream:
	# First, check that we are either up to date, or ahead of the
	# default upstream branch
	git fetch --recurse-submodules
	# MAYBE This is fragile!  Any better options for making sure
	# that we are up to date or ahead of upstream?
	LANG=C git status --untracked-files=no | grep -q -e 'ahead' -e 'up to date' || echo "\n\nERROR.\nPlease integrate upstream changes first."
.PHONY: check-upstream
