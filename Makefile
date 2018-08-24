.DEFAULT_GOAL := install

install:
	@./scripts/setup
	scripts/osx.sh
	$(make) update

update:
	rsync -avh bin/ ~/bin/
	rsync -avh config/ ~/