#!/bin/zsh

hyprctl dispatch focusmonitor $(echo "$(hyprctl -j monitors)" | jq -r '.[] | select(.focused == false) | .name')