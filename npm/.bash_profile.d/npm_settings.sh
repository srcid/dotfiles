export NPM_PACKAGES="${HOME}/.local/usr/lib/node_modules"
export PATH="$PATH:$NPM_PACKAGES/bin"
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"