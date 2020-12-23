.PHONY: setup test lint run test-dev

################################################################################
# GLOBALS                                                                      #
################################################################################

PROJECT_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
PROFILE = default
PYTHON_INTERPRETER = python

# Alias python paths
POETRY_PYTHON := poetry run python
POETRY_PYTEST := poetry run pytest
POETRY_LINTER := poetry run flake8

################################################################################
# COMMANDS                                                                     #
################################################################################

setup:
	$(PYTHON_INTERPRETER) -m pip install  --upgrade pip
	curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
	poetry update
	poetry install

lint:
	$(POETRY_LINTER) .

test: lint
	$(POETRY_PYTEST) tests/

run:
	$(POETRY_PYTHON) main.py

