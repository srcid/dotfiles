# Disable ctrl-s and ctrl-q
if [[ -t 0 && $- = *i* ]]; then
    stty -ixon
fi

__wrap_subshell() {
    local point=$READLINE_POINT
    READLINE_LINE="($READLINE_LINE)"
    READLINE_POINT=$((point + 1))
}

# enclose command line in braces, but keep cursor positon
bind -x '"\C-s": __wrap_subshell'

# Exit shell with ctrl-q
bind -x '"\C-q": exit'

__quote_word() {
    local left right start end

    left=${READLINE_LINE:0:READLINE_POINT}
    right=${READLINE_LINE:READLINE_POINT}

    # Find start of word
    start=${#left}
    while (( start > 0 )) &&
          [[ ${left:start-1:1} != [[:space:]] ]]; do
        ((start--))
    done

    # Find end of word
    end=0
    while (( end < ${#right} )) &&
          [[ ${right:end:1} != [[:space:]] ]]; do
        ((end++))
    done

    local word=${READLINE_LINE:start:$((READLINE_POINT-start+end))}

    READLINE_LINE=$(
        printf '%s"%s"%s' \
            "${READLINE_LINE:0:start}" \
            "$word" \
            "${READLINE_LINE:start+${#word}}"
    )

    READLINE_POINT=$((READLINE_POINT + 1))
}

bind -x "\"\C-xq\": __quote_word"

reload() {
  exec bash
}

bind -r '\C-r'
bind -x '"\C-r":reload'
