#!/usr/bin/env bash

action=$(echo -e "Poweroff\nReboot" | rofi -dmenu -p "power")


if [[ "$action" == "Poweroff" ]]
then
    bspc quit && shutdown -ah now

fi

if [[ "$action" == "Reboot" ]]
then
   bspc quit && shutdown -ar now

fi
