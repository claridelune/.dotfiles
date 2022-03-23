#!/bin/bash
WINDOW=`bspc query -N focused -n`
if [ ! "$WINDOW" == "" ]; then
    NAME=`xprop -id "$WINDOW" WM_CLASS | sed 's/.*=//g' | sed 's/,.*//g' | xargs 2>/dev/null`
else
    NAME="desktop"
fi

[ "$NAME" == "music_player" ] && echo "%{T7}阮 %{T-} Music" && exit 0
[ "$NAME" == "code" ] && echo "%{T7}﬏ %{T-} VS Code" && exit 0
[ "$NAME" == "vivaldi-stable" ] && echo "%{T7} %{T-} Vivaldi" && exit 0
[ "$NAME" == "discord" ] && echo "%{T7}碌 %{T-} Discord" && exit 0
[ "$NAME" == "desktop" ] && echo "%{T7} %{T-} Desktop" && exit 0
[ "$NAME" == "Alacritty" ] && echo "%{T7} %{T-} Alacritty" && exit 0
[ "$NAME" == "org.pwmt.zathura" ] && echo "%{T7} %{T-} Zathura" && exit 0
echo "%{T7} %{T-}$NAME"
