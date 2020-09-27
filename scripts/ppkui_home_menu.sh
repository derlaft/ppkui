#!/bin/sh

running_menu=$(pidof ppkui_menu)
if [ -n "$running_menu" ]; then
  kill "$running_menu"
  exit
fi

# TODO: replace xterm
exec j4-dmenu-desktop --dmenu="ppkui_menu --config /etc/ppkui/bar.toml" --term="xterm"
