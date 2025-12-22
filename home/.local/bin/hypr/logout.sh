#!/bin/sh
# Scipt to exit all Hyprland clients and logout of Hyprland.
# Made with the help of [this comment](https://www.reddit.com/r/hyprland/comments/12dhbuk/comment/jmjadmw/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button)

printf "\n --- %s --- \n" "$(date)" >> /tmp/hypr/hyprexitwithgrace.log

HYPRCMDS=$(hyprctl -j clients | jq -j '. [] | "dispatch closewindow address:\(.address); "')

hyprctl --batch "$HYPRCMDS" >> /tmp/hypr/hyprexitwithgrace.log 2>&1

hyprctl dispatch exit >> /tmp/hypr/hyprexitwithgrace.log 2>&1

