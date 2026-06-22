[ -f /etc/os-release ] && . /etc/os-release || return 0

# Ubuntu path
[[ $ID == ubuntu ]] && [ -f /usr/share/doc/fzf/examples/key-bindings.bash ] && source /usr/share/doc/fzf/examples/key-bindings.bash

# Fedora path
[[ $ID == fedora ]] && [ -f /usr/share/fzf/shell/key-bindings.bash ] && source /usr/share/fzf/shell/key-bindings.bash
