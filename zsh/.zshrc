export ZSH=/Users/Hesam/.oh-my-zsh
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Library/TeX/texbin"

export desk=~/desktop/
export dotfiles=~/dotfiles
export ladir=~/dropbox/kth/master/report/

if [ -d "$HOME/bin" ]; then
    PATH="$HOME/bin:$PATH"
fi

. `brew --prefix`/etc/profile.d/z.sh

# oh my zsh
ZSH_THEME='mh'
plugins=(brew git)

# 10ms for key sequences
KEYTIMEOUT=1

source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

PROMPT="[%m:%{$fg[red]%}%30<...<%~%<<%{$reset_color%}]%(!.#.$) "
