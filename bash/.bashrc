# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

export HISTCONTROL='ignoreboth:erasedups'

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

# Sync history after each command, prevent hisoty overwrite
__hist_sync() {
	history -a
	history -n
}

PROMPT_COMMAND="__hist_sync${PROMPT_COMMAND:+;$PROMPT_COMMAND}"

__prompt_fix_newline() {
    local pos

    exec </dev/tty >/dev/tty

    IFS='[;' read -sdR -p $'\e[6n' _ _ pos

    (( pos != 1 )) && printf '\e[7m \e[0m\n'
}

PROMPT_COMMAND="__prompt_fix_newline${PROMPT_COMMAND:+;$PROMPT_COMMAND}"
