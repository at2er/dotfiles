#!/bin/bash

bg_dir=~/Pictures/wallpaper
interval="10m"

while true; do
	setwall $(find "$bg_dir" -type f ! -name "current" | shuf -n 1)
	sleep $interval
done
