op := p

version:
	./setversionop.sh -$(op)

init-hooks:
	git config core.hooksPath .githooks

semver:
	@sed -n 1p VERSION