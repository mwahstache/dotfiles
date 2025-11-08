#!/bin/bash
INTERVAL=18000 # Five hours
while true; do
    notify-send -- "Todo List" "$(task project: minimal | grep -v task | grep -E "[0-9] .*" | sed "s/.*[0-9] \(.*\)/- \1\n/")"
    notify-send "Daily Reminders" "$(remind /home/$(whoami)/.config/remind)"
    sleep $INTERVAL
done
