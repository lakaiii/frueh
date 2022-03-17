# File generated from: ${SOURCEFILE}

SHELL := /bin/bash

.SHELLFLAGS := -ecuo pipefail
.ONESHELL:


dev: ## start dev environment
	termfloat multitail  -l 'cd html; python -m http.server'  -l 'click-reload.sh html' -l 'chromium http://localhost:8000/story.html#tm.md'
	vim html/tm.md


# help prints out lines with double # 
.DEFAULT_GOAL := help
.PHONY: help dev
help: ## Show help
	@printf "Help: Make Targets --------------------\n" \
	&& cat $(MAKEFILE_LIST) | grep '\#\#'


