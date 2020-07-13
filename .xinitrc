#!/bin/sh


# Fix Gnome Apps Slow  Start due to failing services
# Add this when you include flatpak in your system
dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY

# Source required to dwmblock
source ~/.bashrc

# Autostart applications
exec nitrogen --restore &
exec picom -b &
exec dunst &
exec libinput-gestures &
exec xautolock -time 10 -locker "systemctl suspend" -notify 30 -notifier "dunstify 'Suspend in 30 seconds'" &
exec dwmblocks&
#while true; do
#        # Log stderror to a file 
#        dwm 2> ~/.dwm.log
#        # No error logging
#        #dwm >/dev/null 2>&1
#done
exec dwm
