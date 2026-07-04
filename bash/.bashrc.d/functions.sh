psfind() {
	ps aux | sed -n -e{'1p',"/$1/p"}
}

printemojis() {
	echo -e "[😀][🍑][🍆][🤤][🏳️‍🌈][🇺🇸][\uf303][\uf30a][\uf31b][󰕈][\udb81\udd48]"
}

randint() {
  start=$1
  end=$2
  echo $(( RANDOM % (end - start + 1) + start ))
}

cbcopy() {
    local X11_CPCMD='xclip -selection clipboard -i'
    local WL_CPCMD='wl-copy'

    case $XDG_SESSION_TYPE in
        wayland)
            $WL_CPCMD
            ;;
        X11)
            $X11_CPCMD
            ;;
        *)
            return 1
            ;;
    esac
}

cbpaste() {
    local X11_PASTECMD='xclip -selection clipboard -o'
    local WL_PASTECMD='wl-paste -n'

    case $XDG_SESSION_TYPE in
        wayland)
            $WL_PASTECMD
            ;;
        X11)
            $X11_PASTECMD
            ;;
        *)
            return 1
            ;;
    esac
}
