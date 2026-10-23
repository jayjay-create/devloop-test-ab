.PHONY: check test-one fmt-write services-up

check:
	@echo "The check suite is not configured: no check class is filled yet." >&2
	@exit 1

test-one:
	@echo "The unit class is not configured: no command for running one test yet." >&2
	@exit 1

fmt-write:
	@echo "The format class is not configured: no formatter to run yet." >&2
	@exit 1

services-up:
	@echo "Nothing has to run: this project has no services."
