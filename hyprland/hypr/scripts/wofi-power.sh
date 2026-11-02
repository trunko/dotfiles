#!/bin/bash

entries="󰍃 Logout\n󰤄 Suspend\n󰜉 Reboot\n⏻ Shutdown"

selected=$(echo -e "$entries" | wofi -c "$HOME/.config/wofi/powermenu/config" -s "$HOME/.config/wofi/powermenu/style.css" --cache-file /dev/null | awk '{print tolower($2)}')

case $selected in
logout)
    hyprctl dispatch exit
    ;;
suspend)
    exec systemctl suspend
    ;;
reboot)
    exec systemctl reboot
    ;;
shutdown)
    exec systemctl poweroff -i
    ;;
esac
