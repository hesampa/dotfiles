. `brew --prefix`/etc/profile.d/z.sh

# oh my zsh
ZSH_THEME='mh'
plugins=(brew git)

# 10ms for key sequences
KEYTIMEOUT=1

source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

PROMPT="[%m:%{$fg[red]%}%30<...<%~%<<%{$reset_color%}]%(!.#.$) "
