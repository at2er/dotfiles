SHELL_CONFIG="$HOME/.config/shell"

trysource() {
	[ -f "$1" ] && source $1
}

trysource $SHELL_CONFIG/alias.sh
trysource $SHELL_CONFIG/fzf.sh
trysource $SHELL_CONFIG/git.sh

PS1='\W > '
