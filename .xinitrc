#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
xrdb -merge ~/.Xresources
DEFAULT_SESSION=openbox-session

case "$1" in
"openbox")
	exec openbox-session
	;;
"xmonad")
	exec xmonad
    ;;
"xfce4")
    exec startxfce4
    ;;
"lxde")
    exec startlxde
    ;;
*)
	exec $DEFAULT_SESSION
	;;
esac
