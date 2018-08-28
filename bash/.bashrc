#
# ~/.bashrc
#

# env
EDITOR=emacsclient
GREP_COLOR="1;31"
LC_ALL=en_US.UTF-8
LS_COLRS=$LS_COLORS:'ex=1;32:ln=0;35:di=1;34:ow=1;34'
PATH=$PATH:$HOME/.local/bin/
SUDO_EDITOR=emacsclient
TERM=screen-256color
VISUAL=emacsclient
dotfiles=$HOME/dotfiles

export PS1="[\t][\h][\w]$ "

# history
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

# bash_it
if [ -d $HOME/.bash_it ]; then

    # Path to the bash it configuration
    export BASH_IT="$HOME/.bash_it"

    # Lock and Load a custom theme file
    # location /.bash_it/themes/
    # if [ "$TERM" != "dumb" ]; then
    # 	export BASH_IT_THEME=$dotfiles/misc/zork.theme.bash
    # fi

    # (Advanced): Change this to the name of your remote repo if you
    # cloned bash-it with a remote otherh than origin such as `bash-it`.
    # export BASH_IT_REMOTE='bash-it'

    # Your place for hosting Git repos. I use this for private repos.
    # export GIT_HOSTING='git@git.domain.com'

    # Don't check mail when opening terminal.
    unset MAILCHECK

    # Change this to your console based IRC client of choice.
    # export IRC_CLIENT='irssi'

    # Set this to the command you use for todo.txt-cli
    # export TODO="t"

    # Set this to false to turn off version control status checking within the
    # prompt for all themes
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

if command -v fasd &> /dev/null; then
    eval "$(fasd --init auto)"
fi
