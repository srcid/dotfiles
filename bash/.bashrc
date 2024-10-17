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

PS1='\[\e[38;5;160m\]\u\[\e[0m\]\[\e[38;5;220m\]@\[\e[0m\]\[\e[38;5;40m\]\h\[\e[0m\] \[\e[38;5;75m\]\W\[\e[0m\] $(__git_ps1 "(%s) ")\$ '