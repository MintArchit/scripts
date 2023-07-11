#!/bin/sh

function handle {
  if [[ ${1:0:12} == "monitoradded" ]]; then
    hyprctl dispatch moveworkspacetomonitor "11 1"
    hyprctl dispatch moveworkspacetomonitor "12 1"
    hyprctl dispatch moveworkspacetomonitor "13 1"
    hyprctl dispatch moveworkspacetomonitor "14 1"
    hyprctl dispatch moveworkspacetomonitor "15 1"
    hyprctl dispatch moveworkspacetomonitor "16 1"
    hyprctl dispatch moveworkspacetomonitor "17 1"
    hyprctl dispatch moveworkspacetomonitor "18 1"
    hyprctl dispatch moveworkspacetomonitor "19 1"
  fi
}

socat - UNIX-CONNECT:/tmp/hypr/.socket2.sock | while read line; do handle $line; done
