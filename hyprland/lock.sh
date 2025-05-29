#!/usr/bin/env bash
# ~/.config/hypr/lock.sh

# 1) grab a full-screen shot
grim ./hyprlock.png

# 2) blur only the rectangle region
#    adjust 400x900+760+90 to your panel’s size & position
magick ./hyprlock.png \
    \( +clone -region 400x900+760+90 -blur 0x40 \) \
    -compose over -composite \
    ~/.config/hypr/hyprlock.png

# 3) lock with the pre-blurred background
hyprlock


