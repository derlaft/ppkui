#!/bin/sh

# qt
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
export QT_QPA_PLATFORM=wayland

# GTK3
# Most pure GTK3 apps use wayland by default, but some,
# like Firefox, need the backend to be explicitely selected.
export GDK_BACKEND=wayland

# firefox
export MOZ_ENABLE_WAYLAND=1
