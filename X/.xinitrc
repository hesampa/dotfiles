xset s off -dpms # disable screen blanking

# setxkbmap -option altwin:swap_alt_win
setxkbmap -option altwin:prtsc_rwin
setxkbmap -option altwin:meta_alt
setxkbmap -option ctrl:nocaps
setxkbmap us

if [ -f $HOME/.xbindkeysrc ]; then
    xbindkeys -p
fi

if command -v dropbox &> /dev/null; then
    sleep 10 && /usr/bin/dropbox &
fi

if command -v keepassxc &> /dev/null; then
    sleep 10 && /usr/bin/keepassxc &
fi

# emacs with EXWM
exec emacs
