#!/bin/sh

# WTF eaven is this
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Shitvidia
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

xset -dpms
xset s noblank
xset s off

xsetroot -cursor_name left_ptr 

setxkbmap pl
xinput --set-prop 11 'libinput Accel Profile Enabled' 0, 1
xinput --set-prop 12 'libinput Accel Profile Enabled' 0, 1
/usr/lib/xfce-polkit/xfce-polkit &
# BSPWM
sxhkd &
noisetorch &
exec bspwm
