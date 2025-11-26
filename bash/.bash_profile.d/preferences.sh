# Remove entries of file size limit from history
export HISTSIZE=-1
export HISTFILESIZE=-1

# Sync history after each command, prevent hisoty overwrite
export PROMPT_COMMAND='history -a; history -n'

export EDITOR="nvim"
export SUDO_EDITOR=$EDITOR
export VISUAL=$EDITOR

# Needed to use KDE kwallet
export PINENTRY_KDE_USE_WALLET=1
export SSH_ASKPASS='/usr/bin/ksshaskpass'
export SSH_ASKPASS_REQUIRE='prefer'
