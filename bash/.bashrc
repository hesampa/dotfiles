#
# ~/.bashrc
#

export PS1="\[\033[38;5;7m\][\h:\[$(tput sgr0)\]\[\033[38;5;1m\]\w\[$(tput sgr0)\]\[\033[38;5;7m\]]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
export dotfiles=$HOME/dotfiles

shopt -s histappend
if [ -d $dotfiles ]; then
    source $dotfiles/bash/.bash_aliases
fi

# disable freeze C-s
stty -ixon

HISTCONTROL=ignoreboth
HISTSIZE=9999

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


if [ -e /bin/fasd ]; then
    eval "$(fasd --init auto)"
fi

if [ -e /bin/thefuck ]; then
    eval $(thefuck --alias)
fi

export GREP_COLOR="1;31"
