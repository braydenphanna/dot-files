
black=#121212
white=#FCFCFC
red=#E63C1A
green=#88CF8B
orange=#F7A639

battery(){
	printf "^c$white^ "
	capacity="$(cat /sys/class/power_supply/BAT0/capacity)"
	charging="$(cat /sys/class/power_supply/AC/online)"
	if [ $charging -eq 1 ]; then
		printf "^c$orange^$capacity"
	else
		if [ $capacity -lt 21 ]; then
			printf "^c$red^$capacity"
		else
			printf "^c$green^$capacity"
		fi
	fi

	printf "^c$white^ 0"
}
clock(){
	printf "^c$white^󰥔 $(date '+%-I:%M')"
}

while true; do
	sleep 1 && xsetroot -name " $(battery) $(clock) "
done

