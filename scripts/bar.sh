
black=#121212
blue=#98CBE3
red=#E63C1A
green=#88CF8B
orange=#F7A639

battery(){
	capacity="$(cat /sys/class/power_supply/BAT0/capacity)"
	charging="$(cat /sys/class/power_supply/AC/online)"
	if [ $charging -eq 1 ]; then
		printf "^c$orange^^b$black^ $capacity"
	else
		if [ $capacity -lt 20 ]; then
			printf "^c$red^^b$black^ $capacity"
		else
			printf "^c$green^^b$black^ $capacity"
		fi
	fi
}
clock(){
	printf "^c$black^^b$blue^ O "
	printf "^c$blue^^b$black^ $(date '+%H:%M') "
}

while true; do
	sleep 1 && xsetroot -name "$(battery) $(clock)"
done
