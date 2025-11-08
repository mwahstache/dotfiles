#!/bin/bash
CURRENT_CHARGE=$(expr $(expr $(cat /sys/class/power_supply/BAT0/charge_now) "*" 100) / $(cat /sys/class/power_supply/BAT0/charge_full))
THRESHOLD=$(expr $CURRENT_CHARGE % 20)
echo $THRESHOLD

