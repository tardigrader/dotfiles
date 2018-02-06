# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# Check if we've got w3m or any other text-based web browser.
if $(type -P w3m >/dev/null 2>&1); then
  export TEXTBROWSER=$(type -P w3m)
elif $(type -P lynx >/dev/null 2>&1); then
  export TEXTBROWSER=$(type -P lynx)
else
    export TEXTBROWSER=""
fi

####### PROMPT ########

# Set a nice prompt
if [ -f ~/.bash.d/bash_prompt_colors ]; then
    source ~/.bash.d/bash_prompt_colors
    export PROMPT_DIRTRIM=1
    export PS1="\[$txtylw\][\A]\[$txtcyn\][\u@\h]:\[$txtgrn\] \w-\$\[\e[0m\]> "
fi


# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    color_prompt=yes
    ;;
*)
    ;;
esac

####### ALIASES ########

# Alias definitions.
#
# All common aliases goes in ~/.bash.d/bash_aliases
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash.d/bash_aliases ]; then
    source ~/.bash.d/bash_aliases
fi


# Enable completion of hostnames.
shopt -s hostcomplete

# Load rbenv automatically by appending

eval "$(rbenv init -)"


source /usr/share/bash-completion/completions/pass
