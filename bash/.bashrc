#
# ~/.bashrc
#

export VISUAL=vim
export EDITOR=vim

LS_COLORS=$LS_COLORS:'ex=0;32:ln=0;35:di=0;34:ow=0;34'
export LS_COLORS

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


export PS1="\[\033[38;5;7m\][\h:\[$(tput sgr0)\]\[\033[38;5;1m\]\w\[$(tput sgr0)\]\[\033[38;5;7m\]]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

if [ -d ~/dotfiles/ ]; then
    source ~/dotfiles/misc/alias
fi

alias ls='ls --color=auto'
