#!/bin/sh

current=$(busctl get-property --user sm.puri.OSK0 /sm/puri/OSK0 sm.puri.OSK0 Visible | cut -d' ' -f2)
if [ "$current" = "true" ]; then
  new=false
else
  new=true
fi

busctl call --user sm.puri.OSK0 /sm/puri/OSK0 sm.puri.OSK0 SetVisible b $new
