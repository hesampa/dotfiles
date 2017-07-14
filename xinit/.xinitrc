xset r rate 200 25
xset s off -dpms # disable screen blanking

setxkbmap -option altwin:swap_lalt_lwin
setxkbmap -option ctrl:nocaps

# start i3 last
exec i3
