#!/bin/sh
# Fix Gnome Apps Slow  Start due to failing services
# Add this when you include flatpak in your system
dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY

# Autostart applications
exec nitrogen --restore &
exec picom -b &
exec dunst &
exec libinput-gestures &
exec xautolock -time 10 -locker "systemctl suspend" -notify 30 -notifier \
"dunstify 'Suspend in 30 seconds'" -corners --00 &
exec dwmblocks&

# Touchpad config
# enable tap to click
xinput set-prop "Synaptics TM3289-021" 307 1
#disable middle mouse click
xinput set-button-map "Synaptics TM3289-021" 1 0 3 4 5 6 7
# set accel speed
xinput set-prop "Synaptics TM3289-021" 327 .25

#while true; do
#        # Log stderror to a file 
#        dwm 2> ~/.dwm.log
#        # No error logging
#        #dwm >/dev/null 2>&1
#done
exec dwm
