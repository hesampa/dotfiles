xset s off -dpms # disable screen blanking

setxkbmap -option altwin:prtsc_rwin
setxkbmap -option altwin:swap_alt_win
setxkbmap -option ctrl:nocaps

# start i3 last
exec i3

