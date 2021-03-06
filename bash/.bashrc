# .bashrc

# Bash History
HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=7500
HISTFILESIZE=15000

# Misc Options
set bell-style visible
set completion-ignore-case on
shopt -s checkwinsize

# PS1
if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    PS1="\[\033[38;5;10m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;14m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\] {\w}:\n\[$(tput sgr0)\]\[\033[38;5;10m\]\A\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
else
    PS1='\u@\h {\w}:\n\A\\$ '
fi


# External files
if [ -f ~/.dotfiles/.bash/.bash_aliases ]; then
    . ~/.dotfiles/.bash/.bash_aliases
fi
if [ -f ~/.dotfiles/.bash/.bash_utils ]; then
    . ~/.dotfiles/.bash/.bash_utils
fi
if [ -f ~/.dotfiles/.bash/.bash_env ]; then
    . ~/.dotfiles/.bash/.bash_env
fi
if [ -f ~/.dotfiles/.bash/.bash_shortcuts ]; then
    . ~/.dotfiles/.bash/.bash_shortcuts
fi
if [ -f ~/.dotfiles/.bash/.dircolors ]; then
    eval $( dircolors -b ~/.dotfiles/.bash/.dircolors )
fi
# Local machine settings
if [ -f ~/.bash_env ]; then
    . ~/.bash_env
fi
if [ -f ~/.bash_shortcuts ]; then
    . ~/.bash_shortcuts
fi
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


