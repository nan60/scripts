#!/bin/sh
# mark all items/URLs as read.
tmp="$(mktemp)" || exit 1
(cat ~/.sfeed/urls; cut -f 3 ~/.sfeed/feeds/*) | \
awk '!x[$0]++' > "$tmp" &&
mv "$tmp" ~/.sfeed/urls &&
pkill -SIGHUP sfeed_curses # reload feeds.