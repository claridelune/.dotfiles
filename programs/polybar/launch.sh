#!/bin/bash

killall -q polybar

# polybar top 2>&1 | tee -a /tmp/polybar.log & disown
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -c $HOME/.config/polybar/linearBar/config.ini main &
# polybar -q main -c $HOME/.config/polybar/linearBar/config.ini &
