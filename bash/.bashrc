#
# ~/.bashrc
#

# env
EDITOR=emacsclient
GREP_COLOR="1;31"
HISTFILE=~/.bash_history
LC_ALL=en_US.UTF-8
PATH=$PATH:$HOME/.local/bin/
SUDO_EDITOR=emacsclient
TERM=screen-256color
VISUAL=emacsclient
dotfiles=$HOME/dotfiles

# prompt
PROMPT_DIRTRIM=2		# shorten dir in prompt
export PS1="[\t][\h][\w]$ "

# history
HISTFILE=~/.bash_history
HISTCONTROL=ignoreboth
HISTSIZE=9999
shopt -s histappend

# alias
if [ -d $dotfiles ]; then
    source $dotfiles/bash/.bash_aliases
fi

if [ -f $HOME/.profile ]; then
    source $HOME/.profile
fi

# disable freeze C-s
[[ $- == *i* ]] && stty -ixon

if command -v fasd &> /dev/null; then
    eval "$(fasd --init auto)"
fi

# LS_COLRS=$LS_COLORS:'ex=1;32:ln=0;35:di=1;34:ow=1;34'
if [ -f ~/.dircolors ]; then
    eval "`dircolors -b $dotfiles/.dircolors`"
fi
