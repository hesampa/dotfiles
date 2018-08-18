dotfiles=$HOME/dotfiles

[[ $- == *i* ]] && stty -ixon

if [ -d $dotfiles ]; then
    source $dotfiles/bash/.bashrc
fi

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
      exec startx
fi
