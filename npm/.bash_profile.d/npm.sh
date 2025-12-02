export NPM_PACKAGES="${HOME}/.local/usr/lib/node_modules"
export PATH="$PATH:$NPM_PACKAGES/bin"
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"
export COREPACK_ENABLE_AUTO_PIN=0
export NPM_CONFIG_USERCONFIG="$HOME/.config/npm/npmrc"
