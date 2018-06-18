LS_COLORS=$LS_COLORS:'ex=1;32:ln=0;35:di=1;34:ow=1;34'

export LC_ALL=en_US.UTF-8
export LS_COLORS
export PATH=$PATH:$HOME/.local/bin/
export dotfiles=$HOME/dotfiles

alias ls='ls --color=auto'

if [ -d $dotfiles ]; then
    export EDITOR=emacsclient
    export TERM=screen-256color
    export VISUAL=emacsclient
    export SUDO_EDITOR=emacsclient
fi

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
      exec startx
fi
