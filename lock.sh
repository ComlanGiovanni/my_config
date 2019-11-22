#!/bin/sh
set -e
xset s off dpms 0 1 0
exec /home/nakamoto/i3lock-fancy/i3lock-fancy -p
xset s off -dpms
#i3lock --color=4c7899 --ignore-empty-password --show-failed-attempts --nofork