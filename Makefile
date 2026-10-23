.PHONY: check fmt fmt-file fmt-write lint lint-file types test-unit test-file test-one scan-secrets services-up

check: fmt lint types test-unit scan-secrets

fmt:
	npx prettier --check src test

fmt-file:
	@test -n "$(FILE)" || { echo "fmt-file needs FILE=<path>" >&2; exit 2; }
	npx prettier --check "$(FILE)"

fmt-write:
	npx prettier --write src test

lint:
	npx eslint src test

lint-file:
	@test -n "$(FILE)" || { echo "lint-file needs FILE=<path>" >&2; exit 2; }
	npx eslint "$(FILE)"

types:
	npx tsc --noEmit

test-unit:
	npm test

test-file:
	@test -n "$(FILE)" || { echo "test-file needs FILE=<path>" >&2; exit 2; }
	node --test "$(FILE)"

test-one:
	@test -n "$(NAME)" || { echo "test-one needs NAME=<test name>" >&2; exit 2; }
	node --test --test-name-pattern="$(NAME)" 'test/*.test.ts'

scan-secrets:
	gitleaks dir . --no-banner --redact
	gitleaks git . --no-banner --redact

services-up:
	@echo "Nothing has to run: this project has no services."
