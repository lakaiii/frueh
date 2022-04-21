# File generated from: ${SOURCEFILE}

SHELL := /bin/bash

.SHELLFLAGS := -ecuo pipefail
.ONESHELL:


dev: ## start dev environment
	export PORT_NUMBER=$$((1024+($$RANDOM % (65535-1024))))
	termfloat multitail -l 'cd html; python -m http.server '$$PORT_NUMBER \
		      -l 'cd html; click-reload.sh . "echo reload"' \
			  -l 'chromium http://localhost:'$$PORT_NUMBER'/unberuehrt/index.html'


# help prints out lines with double # 
.DEFAULT_GOAL := help
.PHONY: help dev
help: ## Show help
	@printf "Help: Make Targets --------------------\n" \
	&& cat $(MAKEFILE_LIST) | grep '\#\#'


