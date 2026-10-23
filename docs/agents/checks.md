---
runner: make
all: check
---

<!-- devloop: 0.157.0 -->
# Checks

| Class | Per-file | Whole | Files | Duration | Blocking | Status |
|---|---|---|---|---|---|---|
| format | fmt-file | fmt | src/**,test/** | <1s | yes | filled |
| lint | lint-file | lint | src/**,test/** | 1s | yes | filled |
| types | - | types | src/**,test/** | 1s | yes | filled |
| unit | test-file | test-unit | src/**,test/** | <1s | yes | filled |
| integration | - | - | - | - | - | skipped (state): no parts talking to each other, only pure functions |
| end-to-end | - | - | - | - | - | skipped (state): no interface or entry point that someone drives |
| secrets | - | scan-secrets | - | <1s | yes | filled |
| dependencies | - | - | - | - | - | skipped (state): no third-party packages in production, only dev tools |
| code-security | - | - | - | - | - | skipped (state): too little own code to analyse |

## Running a single test

make test-one NAME=<test name>

## What these checks do not cover

- Behaviour beyond the unit tests: nothing exercises the functions together or through an interface.
- Known vulnerabilities in dev tools are not scanned (dependencies class is skipped).
- Insecure code patterns are not analysed (code-security class is skipped).

## Services that must be running

make services-up
