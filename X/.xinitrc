xset s off -dpms # disable screen blanking
# delay/speed
xset r rate 180 80

# setxkbmap -option altwin:swap_alt_win
setxkbmap -option altwin:prtsc_rwin
setxkbmap -option altwin:meta_alt
setxkbmap -option ctrl:nocaps
setxkbmap us

if [ -f $HOME/.xbindkeysrc ]; then
    xbindkeys -p
fi

# emacs with EXWM
exec emacs
