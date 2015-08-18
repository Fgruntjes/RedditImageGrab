#!/usr/bin/env bash

DIR="/home/fgruntjes/Pictures/RedditWallpapers"
PIC=$(ls $DIR/* | shuf -n1)

# export DBUS_SESSION_BUS_ADDRESS environment variable
PID=$(pgrep gnome-session)
export DBUS_SESSION_BUS_ADDRESS=$(grep -z DBUS_SESSION_BUS_ADDRESS /proc/$PID/environ|cut -d= -f2-)


/usr/bin/gsettings set org.gnome.desktop.background picture-uri "file://$PIC"
