# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_MUSIC_DIR="$HOME/music"

export PATH="$HOME/.local/bin:$PATH"

# editing
export EDITOR="nvim"
export VISUAL="nvim"
export MANPAGER="nvim +Man!"
export MANWIDTH=999
export PAGER="bat"

# zsh
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$ZDOTDIR/.zhistory"
export HISTSIZE=10000
export SAVEHIST=10000

# latex
# export PATH="/usr/local/texlive/2025/bin/x86_64-linux:$PATH"
# export MANPATH="/usr/local/texlive/2025/texmf-dist/doc/man:$MANPATH"
# export INFOPATH="/usr/local/texlive/2025/texmf-dist/doc/info:$INFOPATH"

# fzf
export FZF_DEFAULT_OPTS="--preview 'bat --color=always --style=numbers --line-range=:500 {}'"

# zsh plugins
export ZVM_VI_SURROUND_BINDKEY=s-prefix

# remind
export DOTREMINDERS="$XDG_CONFIG_HOME/remind"

eval $(ssh-agent)

# nix

export PATH="$HOME/.nix-profile/bin"

#
# . "$HOME/.cargo/env"
. "$HOME/.profile"
