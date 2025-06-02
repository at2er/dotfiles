function trysource() {
	[ -f "$1" ] && source $1
}

SHELL_CONFIG="$HOME/.config/shell"
trysource $SHELL_CONFIG/alias.sh
trysource $SHELL_CONFIG/catppuccin-fzf/themes/catppuccin-fzf-mocha.sh

ZSH_CONFIG="$HOME/.config/zsh"
trysource $ZSH_CONFIG/private_conf.zsh
trysource $ZSH_CONFIG/prompt.zsh

# history
HISTFILE="$XDG_STATE_HOME/zsh_history"
HISTSIZE=10000
SAVEHIST=$HISTSIZE
setopt append_history
setopt extended_history
setopt histignorespace
setopt share_history
setopt hist_ignore_dups

autoload -U compinit
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/zcompdump"
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' menu select
zstyle ':completion:*' rehash true
compinit -d "$XDG_CACHE_HOME/zsh/zcompdump"

# plugin
SYS_PLUGINS_DIR="/usr/share/zsh/plugins"
SYS_PLUGINS_DIR_LOCAL="/usr/local/share/zsh/plugins"
trysource /usr/share/git/completion/git-prompt.sh
trysource $SYS_PLUGINS_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
trysource $SYS_PLUGINS_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh
trysource $SYS_PLUGINS_DIR_LOCAL/Aloxaf/fzf-tab/fzf-tab.plugin.zsh

trysource "$SHELL_CONFIG/fzf.sh"

[ ! -z $(command -v fzf) ] && eval "$(fzf --zsh)"
[ ! -z $(command -v tmuxifier) ] && eval "$(tmuxifier init -)"
[ ! -z $(command -v zoxide) ] && eval "$(zoxide init zsh)"

[ -f "$HOME/.config/dircolors" ] && source <(dircolors ~/.config/dircolors)

autoload -Uz edit-command-line
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
zle -N edit-command-line

KEYTIMEOUT=1
bindkey -v
bindkey "^[[H" beginning-of-line
bindkey "^[[4~" end-of-line
bindkey "^[[P" delete-char
bindkey "^P" up-line-or-beginning-search
bindkey "^N" down-line-or-beginning-search
bindkey "^B" backward-char
bindkey "^F" forward-char
bindkey "^X^E" edit-command-line
