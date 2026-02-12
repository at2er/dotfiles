SHELL_CONFIG="$HOME/.config/shell"

HISTFILE="$XDG_STATE_HOME/bash_history"
HISTSIZE=10000

trysource() {
	[ -f "$1" ] && source $1
}

trysource $SHELL_CONFIG/alias.sh
trysource $SHELL_CONFIG/fzf.sh
trysource $SHELL_CONFIG/git.sh

# PS1='\W > '
