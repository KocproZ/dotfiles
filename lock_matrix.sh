#!/bin/bash
exec urxvt -e cmatrix &
sleep 1
i3-msg fullscreen toggle
xtrlock
i3-msg fullscreen toggle
kill $!
