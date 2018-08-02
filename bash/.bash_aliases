# config files
alias alice="$EDITOR ~/dotfiles/bash/.bash_aliases"
alias bashenv="$EDITOR ~/dotfiles/bash/.bash_profile"
alias bashrc="$EDITOR ~/dotfiles/bash/.bashrc"
alias i3rc="$EDITOR ~/dotfiles/i3/.config/i3/config"
alias nvimrc="n$EDITOR ~/.config/nvim/init.vim"
alias sshrc="$EDITOR ~/.ssh/config"
alias termiterc="$EDITOR ~/dotfiles/termite/.config/termite/config"
alias tmuxrc="$EDITOR ~/dotfiles/tmux/.tmux.conf"
alias xinitrc="$EDITOR ~/dotfiles/xinit/.xinitrc"
alias alarc="$EDITOR ~/dotfiles/alacritty/.config/alacritty/alacritty.yml"
alias vimrc="$EDITOR ~/dotfiles/vim/.vimrc"
alias zshenv="$EDITOR ~/dotfiles/zsh/.zshenv"
alias zshrc="$EDITOR ~/dotfiles/zsh/.zshrc"

# source
alias salice="source ~/dotfiles/bash/.bash_aliases"
alias sbashprofile="source ~/dotfiles/bash/.bash_profile"
alias sbashrc="source ~/dotfiles/bash/.bashrc"
alias stmux="tmux source-file ~/dotfiles/tmux/.tmux.conf"
alias szshenv="source ~/dotfiles/zsh/.zshenv"
alias szsh="source ~/dotfiles/zsh/.zshrc"

# dtach
alias dta='dtach -A'

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
alias larep="cd $ladir; $EDITOR ./sections/*.tex main.tex ./refs/*.bib"
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
alias ls='ls --color=auto'
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
alias day='redshift -x'
alias night='redshift -x; redshift -O 2800 -b 0.5'
alias dark='redshift -x; redshift -O 2000 -b 0.2'

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

# tlp
fullcharge='sudo tlp fullcharge BAT0'