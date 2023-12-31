SHELL := /opt/homebrew/bin/bash -O globstar

test:
	pytest --cov-report term-missing --cov-report html --cov-branch \
	       --cov demoproject/

lint:
	@echo
	ruff .
	@echo
	blue --check --diff --color .
	@echo
	mypy .
	@echo
	pip-audit


format:
	ruff --silent --exit-zero --fix .
	blue .


install_hooks:
	@ scripts/install_hooks.sh
