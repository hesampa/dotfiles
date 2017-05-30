export ZSH=/Users/Hesam/.oh-my-zsh
export DOTFILES=~/dotfiles
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Library/TeX/texbin"

. `brew --prefix`/etc/profile.d/z.sh

# oh my zsh
ZSH_THEME='mh'
plugins=(git brew )


# 10ms for key sequences
KEYTIMEOUT=1




source $ZSH/oh-my-zsh.sh

source $DOTFILES/alias

source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
