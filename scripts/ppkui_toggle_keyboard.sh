#!/bin/sh

current=$(busctl call --user sm.puri.OSK0 /sm/puri/OSK0 sm.puri.OSK0 GetVisible)
if [ "$current" = "true" ]; then
  new=false
else
  new=true
fi

busctl call --user sm.puri.OSK0 /sm/puri/OSK0 sm.puri.OSK0 SetVisible b $new
