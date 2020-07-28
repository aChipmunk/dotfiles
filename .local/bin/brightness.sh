#!/bin/bash

# You can call this script like this:
# $./brightness.sh up
# $./brightness.sh down



function send_notification {
    brightness="$(xbacklight -get | sed 's/\..*$//')"
    # Make the bar with the special character ─ (it's not dash -)
    # https://en.wikipedia.org/wiki/Box-drawing_character
    bar=$(seq -s "─" $(($brightness / 5)) | sed 's/[0-9]//g')
    # Send the notification
    dunstify -i display-brightness-symbolic.symbolic -t 800 -r 2592 -u normal "    $bar"
}

case $1 in
    up)
	xbacklight -inc 5
        send_notification
	;;
    down)
	xbacklight -dec 5
        send_notification
	;;
esac

pkill -RTMIN+10 dwmblocks
