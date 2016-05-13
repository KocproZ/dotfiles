#!/bin/bash

screenshot="Take screenshot"
screenshotsel="Take screenshot (selective)"
twomon="2 Monitors"
onemon="1 Monitor"

choice=$(echo -e "$screenshot\n$screenshotsel\n$twomon\n$onemon" | rofi -dmenu)
if [ "$choice" = "$screenshot" ] 
then
  sleep 1
  exec ~/.i3/screenshot.sh full
elif [ "$choice" = "$screenshotsel" ] 
then
  sleep 1
  exec ~/.i3/screenshot.sh selective
elif [ "$choice" = "$twomon" ]
then
  exec ~/.screenlayout/2mon.sh
elif [ "$choice" = "$onemon" ] 
then
  exec ~/.screenlayout/1mon.sh
else
  echo $choice
fi
