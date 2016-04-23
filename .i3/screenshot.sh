#!/bin/bash
if [ "$1" = "full" ]
  then
  scrot 'screenshot_%F_%T.png' -e 'mv $f ~/Screenshots/ & twmnc -t "Printscreen" -c "Saved screenshot." & exec scp /home/kacper/Screenshots/$f www@kocproz.ovh:/home/www/static.kocproz.ovh/ & echo "http://static.kocproz.ovh/$f" | xsel --clipboard'
elif [ "$1" = "selective" ]
  then
  scrot -s 'screenshot_%F_%T_$wx$h.png' -e 'mv $f ~/Screenshots/ & twmnc -t "Printscreen" -c "Saved $wx$h screenshot." & exec scp /home/kacper/Screenshots/$f www@kocproz.ovh:/home/www/static.kocproz.ovh/ & echo "http://static.kocproz.ovh/$f" | xsel --clipboard'
else
  echo "Usage: screenshot [full/selective]"
fi
