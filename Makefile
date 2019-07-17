.PHONY: update lint test
SHELL=/usr/bin/env bash

update:
	bundle install
	pip install yamllint

lint:
	yamllint `find ./ -name '*.yml' -type f -exec ls {} + | grep -v vendor`
	ansible-playbook playbook.yml --syntax-check

test: lint
	rspec -r local_helper.rb
