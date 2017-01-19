#!/bin/bash

clipboard=$(xsel --clipboard)
screenshot="Take screenshot"
screenshotsel="Take screenshot (selective)"
screenshotwindow="Take screenshot (window)"
twomon="2 Monitors"
onemon="1 Monitor"
ytdla="youtube-dl audio"

choice=$(echo -e "$screenshot\n$screenshotsel\n$screenshotwindow\n$twomon\n$onemon\n$ytdla" | rofi -dmenu)
if [ "$choice" = "$screenshot" ] 
then
  sleep 1
  exec ~/.i3/screenshot.sh full
elif [ "$choice" = "$screenshotsel" ] 
then
  sleep 1
  exec ~/.i3/screenshot.sh selective
elif [ "$choice" = "$screenshotwindow" ]
then
  sleep 1
  exec ~/.i3/screenshot.sh window
elif [ "$choice" = "$twomon" ]
then
  exec ~/.screenlayout/2mon.sh
elif [ "$choice" = "$onemon" ] 
then
  exec ~/.screenlayout/1mon.sh
elif [ "$choice" = "$ytdla" ]
then
  twmnc -t "youtube-dl" -c "Downloading from $clipboard..."
  exec ~/.i3/youtube-dl-audio.sh "$clipboard"
else
  echo $choice
fi
