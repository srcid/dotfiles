# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

if [ -f ~/.paths ]; then
	while read -r p; do
	    eval p="$p"
	if [ -d "$p" ] && ! [[ "$PATH" =~ "$p" ]]; then
        PATH="$p:$PATH"
	fi
	done < ~/.paths
fi

export PATH


HISTCONTROL=ignoreboth # don't put duplicate lines or lines starting with space in the history.
HISTSIZE=1000
HISTFILESIZE=2000 # max number of lines in history file 

shopt -s histappend   # append to the history file, don't overwrite it
shopt -s checkwinsize # update the values of LINES and COLUMNS.
shopt -s globstar     # enable the pattern "**" used in a pathname

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

PROMPT_COMMAND='GIT_PS1_SHOWDIRTYSTATE=1 GIT_PS1_SHOWUPSTREAM=1 GIT_PS1_SHOWCOLORHINTS=1 __git_ps1 "\[\e[91m\]\u\[\e[0m\]@\[\e[92m\]\H\[\e[0m\] \[\e[94m\]\W\[\e[0m\]" " \$ "'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
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

