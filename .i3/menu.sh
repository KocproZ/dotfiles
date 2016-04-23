#!/bin/bash
choice=$(echo -e "say apple\nsay poop" | rofi -dmenu)
if [ "$choice" = "say apple" ] 
then
  echo "I say apple"
elif [ "$choice" = "say poop" ] 
then
  echo "I say poop"
else
  echo $choice
fi
