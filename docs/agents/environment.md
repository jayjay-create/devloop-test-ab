<!-- devloop: 0.157.0 -->
# Environment

## Running locally

Nothing has to run: the project is a TypeScript library with tests, no services, no ports. Node runs the `.ts` files directly (`npm test`).

## What to pull after which change

- New dependency: `npm install`
- Schema change, new setting, server code, frontend only: not applicable

## Cost

No run costs money.

## Install permission

install-tools: yes
install-place: /usr/local/bin
install-place: /usr/local/sbin
install-place: /opt
install-place: ~/.local/bin
install-place: ~/bin
install-place: ~/go/bin
install-place: ~/Library/Caches/ms-playwright
install-place: ~/.cache/ms-playwright
install-place: ~/Library/Caches/Cypress
install-place: ~/.cache/Cypress
install-place: ~/.cache/puppeteer
install-route: npm
install-answered: 2026-10-24

## Dependency permission

dependency-tools: yes
dependency-answered: 2026-10-24

## Unattended mode

unattended-mode: no
unattended-reason: the user said no to work running alone here
unattended-answered: 2026-10-24

## Installed outside the project

- `brew install gitleaks 2>& 1` installed into /opt/homebrew/bin
