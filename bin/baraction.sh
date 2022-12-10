#!/bin/bash
# Status bar for Spectrwm

hdd() {
	hdd="$(df -h | awk 'NR==4{print $4, $5}')"
	echo -e " $hdd"
}

mem() {
	mem=`free | awk '/Mem/ {printf "%dM/%dM\n", $3 / 1024.0, $2 / 1024.0 }'`
	echo -e "$mem"
}

cpu() {
	read cpu a b c previdle rest < /proc/stat
	prevtotal=$((a+b+c+previdle))
	sleep 0.5
	read cpu a b c idle rest < /proc/stat
	total=$((a+b+c+idle))
	cpu=$((100*( (total-prevtotal) - (idle-previdle) ) / (total-prevtotal) ))
	echo -e " $cpu%"
}

bat() {
	bat=`acpi -b | grep -P -o '[0-9]+(?=%)'`
	echo -e " $bat%"
}

SLEEP_SEC=1
#loops forever outputting a line every SLEEP_SEC secs

while :; do
	echo "+@fg=1;  $(cpu) +@fg=0; +@fg=2;  $(mem) +@fg=0; +@fg=3;  $(hdd) +@fg=0; +@fg=4;  $(bat) +@fg=0;"
	sleep $SLEEP_SEC
done
