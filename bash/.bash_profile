export EDITOR=vim
export GREP_COLOR="1;31"
export LC_ALL=en_US.UTF-8
export LS_COLRS=$LS_COLORS:'ex=1;32:ln=0;35:di=1;34:ow=1;34'
export PATH=$PATH:$HOME/.local/bin/
export PS1="[\t][\h][\W]$ "
export SUDO_EDITOR=vim
export TERM=screen-256color
export VISUAL=vim
export dotfiles=$HOME/dotfiles

[[ $- == *i* ]] && stty -ixon

if [ -d $dotfiles ]; then
    source $dotfiles/bash/.bash_aliases
fi

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
      exec startx
fi
