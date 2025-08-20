
black=#121212
white=#FCFCFC
red=#E63C1A
green=#88CF8B
orange=#F7A639

wifi(){
<<<<<<< HEAD
	case "$(cat /sys/class/net/wlan0/operstate 2>/dev/null)" in
=======
	case "$(cat /sys/class/net/enp0s3/operstate 2>/dev/null)" in
>>>>>>> 2c1603237428ffe5cfcfce34b07ea3431bde6194
	up) printf " connected" ;;
	down) printf " disconnected" ;;
	esac
}

volume(){
<<<<<<< HEAD
	printf " $(awk -F"[][]" '/Left:/ { print $2 }' <(amixer sget Master) |tr =d '%')"
}

brightness(){
	printf "󰃞 %.0f" "$(light)"
=======
	printf " 40"
}

brightness(){
	printf "󰃞 100"
>>>>>>> 2c1603237428ffe5cfcfce34b07ea3431bde6194
}

battery(){
	printf "^c$white^ "
<<<<<<< HEAD
	for num in 0 1; do
		capacity="$(cat /sys/class/power_supply/BAT$num/capacity) "
		charging="$(cat /sys/class/power_supply/AC/subsystem/BAT$num/power_now)"
		if [ $charging -eq 1 ]; then
			printf "^c$orange^$capacity"
		else
			if [ $capacity -lt 21 ]; then
				printf "^c$red^$capacity"
			else
				printf "^c$green^$capacity"
			fi
		fi
	done
=======
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
>>>>>>> 2c1603237428ffe5cfcfce34b07ea3431bde6194
}
clock(){
	printf "^c$white^󰥔 $(date '+%-I:%M')"
}

while true; do
<<<<<<< HEAD
	sleep 1 && xsetroot -name " $(volume) $(brightness) $(wifi) $(battery)$(clock) "
=======
	sleep 1 && xsetroot -name " $(volume) $(brightness) $(wifi) $(battery) $(clock) "
>>>>>>> 2c1603237428ffe5cfcfce34b07ea3431bde6194
done

