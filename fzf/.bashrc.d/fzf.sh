type lsb-release &>/dev/null || return 0

case $(lsb-release -si) in
	# Ubuntu path
	Ubuntu)
		[ -f /usr/share/doc/fzf/examples/key-bindings.bash ] && source /usr/share/doc/fzf/examples/key-bindings.bash
		;;
	# Fedora path
	Fedora)
	[ -f /usr/share/fzf/shell/key-bindings.bash ] && source /usr/share/fzf/shell/key-bindings.bash
	;;
esac
