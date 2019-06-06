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

push: rebuild
	git submodule update --remote --merge
	rsync -avr --delete --exclude='.git'  _site/ site/
	cd site \
		&& git checkout master \
		&& git add . \
		&& GIT_AUTHOR_EMAIL='3405965+damiencourousse@users.noreply.github.com' git commit -m 'site update' \
		&& git push origin master
	git add site
	git commit -m 'site update'
	git push origin master
.PHONY: push
