#!/bin/bash

bg_dir=~/Pictures/wallpaper
interval="10m"

options="-m fill"

daemon_mode() {
	killall swaybg
	others=$(pgrep wallpaperd.sh | grep -v $$)
	kill $others

	swaybg -i "$(find "$bg_dir" -type f | shuf -n 1)" ${options}&
	old_pid=$!
	while true; do
		sleep $interval
		swaybg -i "$(find "$bg_dir" -type f | shuf -n 1)" ${options}&
		new_pid=$!
		sleep 1s
		kill $old_pid
		old_pid=$new_pid
	done
}

switch() {
	local cur="$2"
}

case "$1" in
	daemon) daemon_mode ;;
	switch) switch "$2" ;;
	*) echo Unsupport option! ;;
esac
