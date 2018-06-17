# config files
alias alice="vim ~/dotfiles/misc/alias"
alias bashenv="vim ~/dotfiles/bash/.bash_profile"
alias bashrc="vim ~/dotfiles/bash/.bashrc"
alias i3rc="vim ~/dotfiles/i3/.config/i3/config"
alias nvimrc="nvim ~/.config/nvim/init.vim"
alias sshrc="vim ~/.ssh/config"
alias termiterc="vim ~/dotfiles/termite/.config/termite/config"
alias tmuxrc="vim ~/dotfiles/tmux/.tmux.conf"
alias xinitrc="vim ~/dotfiles/xinit/.xinitrc"
alias alarc="vim ~/dotfiles/alacritty/.config/alacritty/alacritty.yml"
alias vimrc="vim ~/dotfiles/vim/.vimrc"
alias zshenv="vim ~/dotfiles/zsh/.zshenv"
alias zshrc="vim ~/dotfiles/zsh/.zshrc"

# source
alias salice="source ~/dotfiles/misc/alias"
alias sbashprofile="source ~/dotfiles/bash/.bash_profile"
alias sbashrc="source ~/dotfiles/bash/.bashrc"
alias stmux="tmux source-file ~/dotfiles/tmux/.tmux.conf"
alias szshenv="source ~/dotfiles/zsh/.zshenv"
alias szsh="source ~/dotfiles/zsh/.zshrc"

# git
alias ga="git add"
alias gagc="git add .; git commit"
alias gc="git commit"
alias gd="git diff"
alias gh="git push"
alias gs="git status"
alias gu="git pull"

# find
alias fn='find -L -iname'
alias fr='find -L -regex'
alias fp="find -L -path"
alias fd='find -L -type d -iname'
alias countfiles="find -type f | wc -l"

# latex report
alias larep="cd $ladir; vim ./sections/*.tex main.tex ./refs/*.bib"
alias crep="latexmk -pvc -pdf -outdir=./outfiles"

# emacs
alias ec='emacsclient'
alias ce='emacsclient'

# vim
alias vi="vim"
alias view="vim -R"
## permutations
alias vmi="vim"
alias ivm="vim"
alias imv="vim"
alias mvi="vim"
alias miv="vim"
# alias vim="nvim"

# python
alias py2="python"
alias py3="python3"

# tmux
alias t="tmux -u"

# ls
alias ll="ls -1"
alias lla="ll -a"
alias lsgrep="ls | grep -P"

# date
alias week="date +%V"
alias cal="cal -wm"

# moving, copying
alias del="mv ~/.Trash/"
alias emptytrash="rm -r ~/.Trash/*"

#tar
alias tgz='tar -zxvf'

# fasd
alias e='f -e emacsclient' # quick opening files with vim
alias v='f -e vim' # quick opening files with vim
alias m='f -e mpv' # quick opening files with mplayer
alias o='a -e xdg-open' # quick opening files with xdg-open

# redshift
alias night='redshift -O 2800 -b 0.5'
alias dark='redshift -O 2000 -b 0.2'
alias day='redshift -x'

# keybr
alias se='setxkbmap se'
alias us='setxkbmap us'

# flexget
alias shows='flexget series list'

# subliminal
alias sub="subliminal download -l"

# 
alias alsa="alsamixer"

# zathura
alias zat="zathura"

# pacman
alias update="sudo pacman -Syu"
alias upgrade="sudo pacman -Syu"
alias downgrade="sudo pacman -U"
alias pacins="sudo pacman -S"

# xrandr
alias screenup=" xrandr --output DP2 --mode 2560x1440 --right-of eDP1; xrandr --output HDMI1 --mode 2560x1440 --left-of eDP1"
alias screendwn="xrandr --output HDMI1 --off; xrandr --output DP2 --off"

# rename
alias rename="perl-rename"

# history
alias his=history
alias hisg='history | grep'

# copy/paste
alias xcopy="xsel -i -b"
alias xpaste="parcellite"