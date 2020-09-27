#!/bin/sh

running_menu=$(pidof ppkui_menu)
if [ -n "$running_menu" ]; then
  kill "$running_menu"
  exit
fi

# hide keyboard first
busctl call --user sm.puri.OSK0 /sm/puri/OSK0 sm.puri.OSK0 SetVisible b false

# start menu
setsid j4-dmenu-desktop --dmenu="ppkui_menu --config /etc/ppkui/bar.toml" --term="termite"
