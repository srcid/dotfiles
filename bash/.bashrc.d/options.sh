# Disable ctrl-s and ctrl-q
if [[ -t 0 && $- = *i* ]]; then
    stty -ixon
fi
