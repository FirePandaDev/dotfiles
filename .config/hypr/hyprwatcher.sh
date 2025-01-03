#! /usr/bin/bash
function handle {
 if [[ ${1:0:13} == "activewindow>" ]]; then
  if [[ ${1:14:10} == "aquamarine" ]]; then
   hyprctl dispatch submap hypr
   hyprctl keyword input:follow_mouse 0
  else
   hyprctl dispatch submap reset
   hyprctl keyword input:follow_mouse 1
  fi
 fi
}
socat - "UNIX-CONNECT:$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock" | while read -r line; do handle "$line"; done
