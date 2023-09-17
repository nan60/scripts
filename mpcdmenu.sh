#!/bin/sh
songquery=$(mpc playlist | dmenu -i -b -p "Song Query:" | sed 's/^[^:]*-//' | cut -c 2-)
if [ "$songquery" != '' ]; then
    mpc searchplay "$songquery"
fi