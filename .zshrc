# history
HISTSIZE=1000
SAVEHIST=1000
# HISTFILE=$HOME/.zsh_history
HISTFILE="$HOME/.histories/$(pwd | sed 's/\//__/g')"

# menu select
zstyle ':completion:*' menu select
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char

# use cache
zstyle ':completion::complete:*' use-cache truen

# starship
eval "$(starship init zsh)"

# path eliminate repetition
typeset -U path cdpath fpath manpath

# autoload complete
autoload -U compinit
compinit

# autoload colors
autoload -Uz colors: colors
zstyle ':completion:*' list-colors ''

# autoload history
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^p" history-beginning-search-backward-end
bindkey "^n" history-beginning-search-forward-end

# auto variable
setopt AUTO_PARAM_KEYS

