#!/bin/bash
# substitutes pathnames into $ hyprctl dispatch exec
if [[ $# == 0 ]]; then
    echo "not enough arguments"
    exit 1
fi

COMMAND=""
STATE="COMMAND"

for arg; do
    if [[ ${#arg} -ge 2 && ${arg::2} == "-p" ]]; then
        STATE="PATH"
        continue
    fi

    if [[ $STATE == "COMMAND" ]]; then
        COMMAND+="$arg "
    elif [[ $STATE == "PATH" ]]; then
        COMMAND+="$(pwd)/$arg "
        STATE="COMMAND"
    fi
done

hyprctl dispatch exec "$COMMAND"

exit 0
