#!/bin/sh
songquery=$(mpc list album | tail -n +2 | dmenu -i -b -p "Album Query (Library):")
if [ "$songquery" != '' ]; then
    mpc findadd album "$songquery"
    mpc searchplay "$songquery"
fi