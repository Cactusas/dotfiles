# Zinit
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# Key bindings
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# Missing module for autocomplete
zmodload zsh/param/private

# Autocomplete
autoload -U compinit; compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' file-sort modification
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# Plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light ptavares/zsh-direnv

# ls replacement with icons/git status
zinit snippet OMZP::eza

# Theme
export DRACULA_DISPLAY_NEW_LINE=1
export DRACULA_DISPLAY_FULL_CWD=1
zinit light dracula/zsh

