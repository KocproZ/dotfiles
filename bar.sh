#!/bin/sh

i3status | while :
do
  read line
  echo "mystuff | $line" || exit 1
done
