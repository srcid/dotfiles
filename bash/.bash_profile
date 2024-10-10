# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs
if [ -d ~/.bash_profile.d ]; then
    for rc in ~/.bash_profile.d; do
        . rc
    done
fi