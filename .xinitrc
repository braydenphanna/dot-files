xrandr --output HDMI-0 --off

xrandr --output DP-3 --mode 1920x1080 --rate 74.97 --dpi 92.56

feh --bg-scale ~/bg.jpg

#xinput set-prop $(xinput list --id-only 'SteelSeries SteelSeries Rival 310 eSports Mouse') 'libinput Accel Speed' -0.78 

xinput set-prop $(xinput list --id-only 'SteelSeries SteelSeries Rival 310 eSports Mouse') "libinput Accel Profile Enabled" 0 1 0

rivalcfg -c #30b3ff

rivalcfg -C #30b3ff

rivalcfg -s 300

rivalcfg -S 600

source ~/dwm/scripts/bar.sh; runInBackground &

xset s 3600

picom &

exec dwm


