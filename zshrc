export ZSH=/Users/Hesam/.oh-my-zsh
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Library/TeX/texbin"
export dotfiles=~/dotfiles
export desk=~/desktop/

if [ -d "$HOME/bin" ]; then
    PATH="$HOME/bin:$PATH"
fi

. `brew --prefix`/etc/profile.d/z.sh

# oh my zsh
ZSH_THEME='mh'
plugins=(git brew)

# 10ms for key sequences
KEYTIMEOUT=1

source $ZSH/oh-my-zsh.sh
source $DOTFILES/alias
source ~/.salias
source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

PROMPT="[%{$fg[red]%}%30<...<%~%<<%{$reset_color%}]%(!.#.$) "
