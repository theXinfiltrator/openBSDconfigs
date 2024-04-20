xset b off
setxkbmap -option ctrl:nocaps
xmodmap -e "clear Mod1"
xmodmap -e "keycode 64 = Escape"
xcompmgr&
feh --bg-fill /home/rookie/.img.jpg
ulimit -Sc 0
exec cwm
