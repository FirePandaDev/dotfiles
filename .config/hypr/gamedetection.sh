#! /usr/bin/bash
function handle {
 if [[ ${1:0:13} == "activewindow>" ]]; then
  case ${1:20:11} in
   "app_949230,")
    hyprctl keyword input:force_no_accel false
    ;;
   "app_2670630")
    hyprctl keyword input:force_no_accel false
    ;;
   "app_1062090")
    hyprctl keyword input:force_no_accel false
    ;;
   *)
    hyprctl keyword input:force_no_accel true
    ;;
  esac
 fi
}
socat - "UNIX-CONNECT:$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock" | while read -r line; do handle "$line"; done
