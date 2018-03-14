#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

shopt -s histappend

export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export EDITOR=vim
export RANGER_LOAD_DEFAULT_RC=FALSE
export SUDO_EDITOR=vim
export TERM=screen-256color
export VISUAL=vim

LS_COLORS=$LS_COLORS:'ex=1;32:ln=0;35:di=1;34:ow=1;34'
export LS_COLORS

export PS1="\[\033[38;5;7m\][\h:\[$(tput sgr0)\]\[\033[38;5;1m\]\w\[$(tput sgr0)\]\[\033[38;5;7m\]]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

alias ls='ls --color=auto'

#
# bash-it
#

if [ -d $HOME/.bash_it ]; then

    # Path to the bash it configuration
    export BASH_IT="$HOME/.bash_it"

    # Lock and Load a custom theme file
    # location /.bash_it/themes/
    export BASH_IT_THEME='zork'

    # (Advanced): Change this to the name of your remote repo if you
    # cloned bash-it with a remote other than origin such as `bash-it`.
    # export BASH_IT_REMOTE='bash-it'

    # Your place for hosting Git repos. I use this for private repos.
    # export GIT_HOSTING='git@git.domain.com'

    # Don't check mail when opening terminal.
    unset MAILCHECK

    # Change this to your console based IRC client of choice.
    # export IRC_CLIENT='irssi'

    # Set this to the command you use for todo.txt-cli
    # export TODO="t"

    # Set this to false to turn off version control status checking within the prompt for all themes
    export SCM_CHECK=true

    # Set Xterm/screen/Tmux title with only a short hostname.
    # Uncomment this (or set SHORT_HOSTNAME to something else),
    # Will otherwise fall back on $HOSTNAME.
    export SHORT_HOSTNAME=$(hostname -s)

    # Set Xterm/screen/Tmux title with only a short username.
    # Uncomment this (or set SHORT_USER to something else),
    # Will otherwise fall back on $USER.
    export SHORT_USER=${USER:0:8}

    # Set Xterm/screen/Tmux title with shortened command and directory.
    # Uncomment this to set.
    export SHORT_TERM_LINE=true

    # Set vcprompt executable path for scm advance info in prompt (demula theme)
    # https://github.com/djl/vcprompt
    # export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

    # (Advanced): Uncomment this to make Bash-it reload itself automatically
    # after enabling or disabling aliases, plugins, and completions.
    # export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1

    # Load Bash It
    source "$BASH_IT"/bash_it.sh
fi

# fasd
if [ -e /bin/fasd ] || [ -e /usr/local/Cellar/fasd/ ]; then
    eval "$(fasd --init auto)"
fi

if [ -d $dotfiles ]; then
    source $dotfiles/misc/alias
fi

export GREP_COLOR="1;31"
