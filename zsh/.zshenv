export ZSH=/Users/Hesam/.oh-my-zsh
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Library/TeX/texbin"

export EDITOR=vim
export VISUAL=vim

export desk=~/desktop/
export dotfiles=~/dotfiles
export ladir=~/dropbox/kth/master/report/

if [ -d "$HOME/bin" ]; then
    PATH="$HOME/bin:$PATH"
fi

if [ -f ~/dotfiles/misc/alias ]; then
    source ~/dotfiles/misc/alias
fi

if [ -f ~/.salias ]; then
    source ~/.salias
fi

export trash=~/.Trash/
