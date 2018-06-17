LS_COLORS=$LS_COLORS:'ex=1;32:ln=0;35:di=1;34:ow=1;34'

export EDITOR=emacsclient
export LC_ALL=en_US.UTF-8
export LS_COLORS
export PATH=$PATH:$HOME/.local/bin/
export RANGER_LOAD_DEFAULT_RC=FALSE
export SUDO_EDITOR=vim
export TERM=screen-256color
export VISUAL=vim
export dotfiles=$HOME/dotfiles
export HISTSIZE=9999
export HISTFILESIZE=9999

shopt -s histappend		# append to histoory

alias ls='ls --color=auto'

if [ -d $dotfiles ]; then
    source $dotfiles/bash/.bashrc
fi

if [ -f $HOME/.profile ]; then
    source $HOME/.profile
fi

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
      exec startx
fi
