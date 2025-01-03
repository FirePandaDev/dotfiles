#! /usr/bin/bash
function handle {
	echo ${1:0:100}
# if [[ ${1:0:11} == "openwindow>" ]]; then
#  if [[ ${1:27:9} == "gamescope" ]]; then
#   hyprctl dispatch submap hypr
#   hyprctl keyword input:follow_mouse 0
#  else
#   hyprctl dispatch submap reset
#   hyprctl keyword input:follow_mouse 1
#  fi
# fi
}
socat - "UNIX-CONNECT:$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock" | while read -r line; do handle "$line"; done
openwindow>>55bbdc52a630,1,gamescope,
