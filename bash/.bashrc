# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

####### PROMPT ########

# Set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
esac

# Set a nice prompt
if [ -x ~/.bash.d/bash_prompt_colors ]; then
    source ~/.bash_prompt_colors
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
