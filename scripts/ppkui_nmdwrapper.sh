#!/bin/sh

if echo "$@" | grep -q -- '-p Passphrase'; then
  # show keyboard first
  busctl call --user sm.puri.OSK0 /sm/puri/OSK0 sm.puri.OSK0 SetVisible b true

  # use bemenu
  bemenu "$@"
fi

ppkui_menu --config /etc/ppkui/bar.toml "$@"
