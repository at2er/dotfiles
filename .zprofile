export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

[ -f "$XDG_CONFIG_HOME/user-dirs.dirs" ] && source $XDG_CONFIG_HOME/user-dirs.dirs

export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GOPATH="$XDG_DATA_HOME/go"
export NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export PYTHON_HISTORY="$XDG_STATE_HOME/python_history"
export XINITRC="$XDG_CONFIG_HOME/xorg/xinitrc"
export XAUTHORITY="$XDG_CONFIG_HOME/xorg/Xauthority"

export BROWSER="firefox"
export EDITOR="nvim"
#export MANPAGER="less"
export TERMINAL="foot"

# styles
# For GTK 4:
#   $ gsettings set org.gnome.desktop.interface color-scheme prefer-dark
export GTK_THEME=Adwaita:dark

# use xdg-desktop-portal for filechooser and others.
export GDK_DEBUG=portals

[ -d "$CARGO_HOME/bin" ] && export PATH=$CARGO_HOME/bin:$PATH
[ -d "$HOME/.local/bin" ] && export PATH=$HOME/.local/bin:$PATH
[ -d "$HOME/.config/tmux/plugins/tmuxifier/bin" ] && \
	export PATH=$PATH:$HOME/.config/tmux/plugins/tmuxifier/bin

export RUSTUP_UPDATE_ROOT=https://mirrors.tuna.tsinghua.edu.cn/rustup/rustup
export RUSTUP_DIST_SERVER=https://mirrors.tuna.tsinghua.edu.cn/rustup
export TMUXIFIER_LAYOUT_PATH="$HOME/.config/tmux/plugins/tmuxifier/layouts"

export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'
export LESS_TERMCAP_md=$'\E[1;36m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[1;32m'
