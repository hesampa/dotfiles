export dotfiles=$HOME/dotfiles

if [ -d $dotfiles ]; then
    source $dotfiles/bash/.bashrc
fi

if [ -f $HOME/.profile ]; then
    source $HOME/.profile
fi

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
      exec startx
fi

export ladir=~/Dropbox/kth/master/report
