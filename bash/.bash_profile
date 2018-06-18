LS_COLORS=$LS_COLORS:'ex=1;32:ln=0;35:di=1;34:ow=1;34'

export EDITOR=emacsclient
export LC_ALL=en_US.UTF-8
export LS_COLORS
export PATH=$PATH:$HOME/.local/bin/
export SUDO_EDITOR=emacsclient
export TERM=screen-256color
export VISUAL=emacsclient
export dotfiles=$HOME/dotfiles

if [ -d $dotfiles ]; then
    source $dotfiles/bash/.bashrc
fi

alias ls='ls --color=auto'

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
      exec startx
fi
