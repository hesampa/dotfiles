xset s off -dpms # disable screen blanking

# setxkbmap -option altwin:swap_alt_win
setxkbmap -option altwin:prtsc_rwin
setxkbmap -option altwin:meta_alt
setxkbmap -option ctrl:nocaps

if [ -f $HOME/.xbindkeysrc ]; then
    xbindkeys -p
fi

# Start dropbox
sleep 5 && /usr/bin/dropbox &
# start i3 last
# exec i3
# EXWM
exec emacs
