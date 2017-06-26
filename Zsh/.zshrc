# The following lines were added by compinstall

zstyle ':completion:*' format 'The Prince of Darkness is completing %d for you'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' menu select=8
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' verbose true
zstyle :compinstall filename '/home/krr/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=2500
SAVEHIST=10000
unsetopt autocd
# End of lines configured by zsh-newuser-install

# Keyboard shortcuts, all else as VIM

bindkey '^A' beginning-of-line  # as per Emacs
bindkey '^E' end-of-line        # as per Emacs
bindkey '^P' up-line-or-search

bindkey -v

autoload -U colors && colors
PROMPT="%n@$(hostname) %{$fg[blue]%}($(uname -s)/%{$fg[red]%}$(uname -m)%{$fg[blue]%}) (%!) %{$fg[green]%}%~> %{$reset_color%}"

# Aliases
alias ls='ls -G'
alias lsa='ls -a'
alias whatsmyip='lynx -dump checkip.dyndns.org'
export EDITOR="vim"
export PAGER=less
setopt VI
