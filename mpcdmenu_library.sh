#!/bin/sh
songquery=$(mpc list Title | tail -n +2 | dmenu -i -b -p "Song Query (Library):")
if [ "$songquery" != '' ]; then
    mpc findadd title "$songquery"
    mpc searchplay "$songquery"
fi