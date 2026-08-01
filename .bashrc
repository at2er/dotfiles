SHELL_CONFIG="$HOME/.config/shell"

HISTFILE="$XDG_STATE_HOME/bash_history"
HISTSIZE=10000

trysource() {
	[ -f "$1" ] && source "$1"
}

trysource "$SHELL_CONFIG/alias.sh"
trysource "$SHELL_CONFIG/fzf.sh"
trysource "$SHELL_CONFIG/git.sh"

[ ! -z $(command -v zoxide) ] && eval "$(zoxide init bash)"

# PS1='\W > '

export STM32_PRG_PATH=/home/lili/STMicroelectronics/STM32Cube/STM32CubeProgrammer/bin