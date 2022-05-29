#!/bin/sh

layout=$( setxkbmap -print | awk -F"+" '/xkb_symbols/ {print $2}' )

if [ $layout = "us" ]
then
  setxkbmap tr
else
  setxkbmap us
fi

exit 1
