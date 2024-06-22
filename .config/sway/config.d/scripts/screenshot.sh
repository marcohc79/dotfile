#!/bin/bash
 
entries="Active Screen Output Area Window"
dir="$HOME/Pictures/Screenshots"
date="$(date +"%Y%m%d_%H%M%S").png"

selected=$(printf '%s\n' $entries | wofi --style=$HOME/.config/wofi/style.widgets.css --conf=$HOME/.config/wofi/config.screenshot | awk '{print tolower($1)}')
 
case $selected in
  active)
    grimshot --notify save active "$dir/$date";;
  screen)
    grimshot --notify save screen "$dir/$date";;
  output)
    grimshot --notify save output "$dir/$date";;
  area)
    grimshot --notify save area "$dir/$date";;
  window)
    grimshot --notify save window "$dir/$date";;
esac
